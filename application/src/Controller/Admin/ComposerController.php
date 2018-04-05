<?php

namespace App\Controller\Admin;

use App\Entity\Application;
use App\Entity\AttributeName;
use App\Entity\AttributeNameValue;
use App\Entity\AttributeValue;
use App\Entity\Document;
use App\Entity\ImagePage;
use App\Entity\MainPage;
use App\Entity\Product;
use App\Entity\RadioPage;
use App\Entity\TablePage;
use App\Entity\TextPage;
use App\Form\Requests\CreateImagePageRequest;
use App\Form\Requests\CreateMainPageRequest;
use App\Form\Requests\CreateProductRequest;
use App\Form\Requests\CreateRadioPageRequest;
use App\Form\Requests\CreateTablePageRequest;
use App\Form\Requests\CreateTextPageRequest;
use App\Form\Requests\UpdateImagePageRequest;
use App\Form\Requests\UpdateMainPageRequest;
use App\Form\Requests\UpdateProductRequest;
use App\Form\Requests\UpdateRadioPageRequest;
use App\Form\Requests\UpdateTablePageRequest;
use App\Form\Requests\UpdateTextPageRequest;
use Doctrine\ORM\NonUniqueResultException;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Translation\Exception\InvalidArgumentException;
use Symfony\Component\Translation\TranslatorInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Component\Validator\Validator\ValidatorInterface;

/**
 * @Security("has_role('ROLE_ADMIN')")
 * @Route("/{_locale}/composer", name="composer")
 */
class ComposerController extends Controller
{
    private $logger;

    private $translator;

    public function __construct(LoggerInterface $logger, TranslatorInterface $translator)
    {
        $this->logger = $logger;
        $this->translator = $translator;
    }

    /**
     * @Route("/loadMainPage/{id}", name="_load_main_page")
     * @param int $id
     * @throws \LogicException
     * @throws NonUniqueResultException
     * @throws InvalidArgumentException
     * @return JsonResponse
     */
    public function loadMainPage(int $id) :JsonResponse
    {
        $this->logger->debug('Loading main page for product id ' . $id);

        $em = $this->getDoctrine()->getManager();

        $mainPageApplications = [];
        /** checking if we are creating of updating */
        if ($id === 0) {
            /** creating new page */
            $mainPage = new MainPage();
            $product = new Product();
        } else {
            /** loading main page for the product */
            $productRepository = $em->getRepository(Product::class);
            $product = $productRepository->find($id);

            if (!$product) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('There was a problem loading the product')
                    ]
                );
            }

            /** loading Main Page */
            $documentRepository = $em->getRepository(Document::class);
            if (!$documentMainPage = $documentRepository->loadMainPageForProduct($id)) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('There was a problem loading the Main Page')
                    ]
                );
            }

            /** Loading Main Page Data */
            $mainPageRepository = $em->getRepository(MainPage::class);
            if (!$mainPage = $mainPageRepository->find($documentMainPage->getPageId())) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('There was a problem loading the Main Page Ref')
                    ]
                );
            }

            $applications = $mainPage->getApplications();
            if (\count($applications) > 0) {
                foreach ($applications as $application) {
                    $mainPageApplications[] = $application->getId();
                }
            }
        }

        /** Loading Applications List */
        $applicationRepository = $em->getRepository(Application::class);
        $allApplications = $applicationRepository->findAll();

        /** loading the page content */
        $htmlData = $this
            ->render(
                'composer/partials/mainPage.html.twig',
                compact(
                    'mainPage',
                    'id',
                    'product',
                    'allApplications',
                    'mainPageApplications'
                )
            )
            ->getContent();

        /** returns the data */
        return new JsonResponse([
            'status' => 'success',
            'data' => $htmlData,
            'message' => $this->translator->trans('Main Page Editor Initialized')
        ]);
    }

    /**
     * @Route("/loadDocumentList/{id}", name="_load_document_list")
     * @param Product $product
     * @throws InvalidArgumentException
     * @throws \LogicException
     * @return JsonResponse
     */
    public function loadDocumentList(Product $product) :JsonResponse
    {
        /** checking if the role actually exists */
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        $em = $this->getDoctrine()->getManager();
        $allDocuments = $em->getRepository(Document::class)->findBy(
            ['product' => $product->getId()],
            ['order' => 'ASC']
        );

        $returnDataArray = [];

        foreach ($allDocuments as $doc) {
            $returnDataArray[] = [
                'id' => $doc->getId(),
                'name' => $doc->getName(),
                'order' => $doc->getOrder(),
                'pageType' => $doc->getPageType(),
                'pageId' => $doc->getPageId()
            ];
        }

        return new JsonResponse(
            [
                'status' => 'success',
                'documents' => $returnDataArray
            ]
        );
    }

    /**
     * @Route("/sendMainPage/{id}", name="_send_main_page")
     * @param Request $request
     * @param ValidatorInterface $validator
     * @param int $id
     * @throws \Symfony\Component\HttpFoundation\File\Exception\FileException
     * @throws \LogicException
     * @throws NonUniqueResultException
     * @throws InvalidArgumentException
     * @throws FileException
     * @return JsonResponse
     */
    public function sendMainPage(int $id, Request $request, ValidatorInterface $validator) :JsonResponse
    {
        $this->logger->debug('saving main page for product id: ' . $id);

        $em = $this->getDoctrine()->getManager();

        /** @var request Data $productData */
        $productData = $request->request->get('product');
        $mainPageData = $request->request->get('mainPage');
        $description = \array_key_exists('description', $productData) ? $productData['description'] : '';
        
        if ($id === 0) {
            /** for the product */
            $productValidator = new CreateProductRequest();

            /**
             * For the document AND main page
             * Later implementation will have more possibilities
             */
            $mainPageValidator = new CreateMainPageRequest();

            /** saving new product */
            $product = new Product();
            $productRevision = 1;

            /** saving the main page */
            $mainPage = new MainPage();

            /** saving the document */
            $document = new Document();
        } else {
            /** we check if the product actually exists */
            if (!$product = $em->getRepository(Product::class)->find($id)) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('There was a problem loading the product')
                    ]
                );
            }

            $productRevision = $product->getRevision() + 1;

            $productValidatorU = new UpdateProductRequest();
            $productValidator = $productValidatorU->fromProduct($product);

            /** we check if the main page actually exists */
            $documentRepository = $em->getRepository(Document::class);
            $document = $documentRepository->loadMainPageForProduct($product->getId());
            if (!$document || !$mainPage = $em->getRepository(MainPage::class)->find($document->getPageId())) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('There was a problem loading the Main Page')
                    ]
                );
            }

            $mainPageValidatorU = new UpdateMainPageRequest();
            $mainPageValidator = $mainPageValidatorU->fromMainPage($mainPage);
        }

        $imageArray = $request->files->all();
        $image = $imageArray['product']['image'];

        /** checking image */
        if ($image instanceof UploadedFile) {
            $fileName = $this->generateUniqueFileName().'.'.$image->guessExtension();

            $image->move(
                $this->getParameter('upload_images_directory'),
                $fileName
            );
        } else {
            if ($id === 0) {
                $this->logger->debug('File Upload Failed ' . print_r($request->files->all(), true));
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('File Upload Failed')
                    ]
                );
            }

            $fileName = $product->getImage();
        }

        /** validating the product */
        $productValidator->setName($productData['name']);
        $productValidator->setDescription($description);
        $productValidator->setImage($fileName);

        $errors = $validator->validate($productValidator);
        if (\count($errors) > 0) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => (string) $errors
                ]
            );
        }

        /** validating the main page */
        $mainPageValidator->setTitle($productData['name']);
        $mainPageValidator->setText($description);

        $errors = $validator->validate($mainPageValidator);
        if (\count($errors) > 0) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => (string) $errors
                ]
            );
        }

        /** saving the product */
        $product->setName($productData['name']);
        $product->setDescription($productData['description']);
        $product->setImage($fileName);
        $product->setRevision($productRevision);

        $em->persist($product);
        $em->flush();

        /** saving the main page */
        $mainPage->setName($productData['name']);
        $mainPage->setText($description);

        if (\array_key_exists('applications', $mainPageData)) {
            /** initializing repository */
            $mainPage->emptyApplications();
            $applicationRepository = $em->getRepository(Application::class);

            /** adding applications */
            foreach ((array) $mainPageData['applications'] as $application_id) {
                if ($application = $applicationRepository->find($application_id)) {
                    $mainPage->addApplication($application);
                }
            }
        }

        $em->persist($mainPage);
        $em->flush();

        /** saving document */
        $document->setName($productData['name']);
        $document->setNote('');
        $document->setProduct($product);
        $document->setPageType('mainPage');
        $document->setPageId($mainPage->getId());
        $document->setOrder(0);

        $em->persist($document);
        $em->flush();

        return new JsonResponse(
            [
                'status' => 'success',
                'message' => $this->translator->trans('Main Page Saved'),
                'id' => $product->getId()
            ]
        );
    }

    /**
     * @Route("/loadTextPage/{productId}/{id}", name="_load_text_page")
     * @param int|null $id
     * @param int|null $productId
     * @return JsonResponse
     * @throws \LogicException
     */
    public function loadTextPage($productId = null, $id = null): JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        $id = $id ? (int) $id : 0;

        $textPage = ($id === 0 ? new TextPage() : $em->getRepository(TextPage::class)->find($id));
        if (!$textPage) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('Page Not Found')
                ]
            );
        }

        /** loading the page content */
        $htmlData = $this
            ->render(
                'composer/partials/textPage.html.twig',
                [
                    'textPage' => $textPage,
                    'textPageId' => $id,
                    'productId' => $productId
                ]
            )
            ->getContent();

        return new JsonResponse([
            'status' => 'success',
            'data' => $htmlData,
            'message' => $this->translator->trans('Text Page Editor Initialized')
        ]);
    }

    /**
     * @Route("/sendTextPage/{productId}/{id}", name="_send_text_page")
     * @param int $productId
     * @param int|null $id
     * @param Request $request
     * @param ValidatorInterface $validator
     * @return JsonResponse
     * @throws InvalidArgumentException
     * @throws \LogicException
     * @throws NonUniqueResultException
     */
    public function sendTextPage(int $productId, $id, Request $request, ValidatorInterface $validator) :JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        /** checking whether we have to insert a new text page or updating  */
        if ((int) $id === 0) {
            $textPageValidator = new CreateTextPageRequest();
            $textPage = new TextPage();
        } else {
            $textPageValidator = new UpdateTextPageRequest();
            $textPage = $em->getRepository(TextPage::class)->find($id);
        }

        /** Request */
        $title = $request->request->get('title', '');
        $text = $request->request->get('text', '');

        /** validator setup */
        $textPageValidator->setTitle($title);
        $textPageValidator->setText($text);

        /** validator errors */
        $errors = $validator->validate($textPageValidator);

        if (\count($errors) > 0) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => (string) $errors
                ]
            );
        }

        /** inserting / updating the textPage */
        $textPage->setTitle($title);
        $textPage->setText($text);

        $em->persist($textPage);
        $em->flush();

        $product->setRevision($product->getRevision() + 1);
        $em->persist($product);
        $em->flush();

        /** checking the document */
        $documentRepository = $em->getRepository(Document::class);
        $document = $documentRepository->findOneBy(
            [
                'pageId' => $textPage->getId(),
                'pageType' => 'textPage',
                'product' => $product
            ]
        ) ?? new Document();

        if ($document->getOrder() < 1) {
            if (!$nextOrder = $documentRepository->getNextOrder($product->getId())) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('System Error')
                    ]
                );
            }

            $orderToInsert = $nextOrder->getOrder() + 1;
        } else {
            $orderToInsert = $document->getOrder();
        }

        /** saving document */
        $document->setName($title);
        $document->setNote('');
        $document->setProduct($product);
        $document->setPageType('textPage');
        $document->setPageId($textPage->getId());
        $document->setOrder($orderToInsert);

        $em->persist($document);
        $em->flush();

        /** refreshing order */
        $documentRepository->refreshOrder($product->getId());

        return new JsonResponse(
            [
                'status' => 'success',
                'message' => $this->translator->trans('Text Page Saved'),
                'id' => $textPage->getId()
            ]
        );
    }

    /**
     * @Route("/loadTablePage/{productId}/{id}", name="_load_table_page")
     * @param int|null $id
     * @param int|null $productId
     * @return JsonResponse
     * @throws \LogicException
     */
    public function loadTablePage($productId = null, $id = null): JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        $id = $id ? (int) $id : 0;

        $tablePage = ($id === 0 ? new TablePage() : $em->getRepository(TablePage::class)->find($id));
        if (!$tablePage) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('Page Not Found')
                ]
            );
        }

        /** loading the page content */
        $htmlData = $this
            ->render(
                'composer/partials/tablePage.html.twig',
                [
                    'tablePage' => $tablePage,
                    'tablePageId' => $id,
                    'productId' => $productId
                ]
            )
            ->getContent();

        return new JsonResponse([
            'status' => 'success',
            'data' => $htmlData,
            'message' => $this->translator->trans('Table Page Editor Initialized')
        ]);
    }

    /**
     * @Route("/sendTablePage/{productId}/{id}", name="_send_table_page")
     * @param int $productId
     * @param int|null $id
     * @param Request $request
     * @param ValidatorInterface $validator
     * @return JsonResponse
     * @throws InvalidArgumentException
     * @throws \LogicException
     * @throws NonUniqueResultException
     */
    public function sendTablePage(int $productId, $id, Request $request, ValidatorInterface $validator) :JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        /** checking whether we have to insert a new text page or updating  */
        if ((int) $id === 0) {
            $tablePageValidator = new CreateTablePageRequest();
            $tablePage = new TablePage();
        } else {
            $tablePageValidator = new UpdateTablePageRequest();
            $tablePage = $em->getRepository(TablePage::class)->find($id);
        }

        /** Request */
        $title = $request->request->get('title', '');
        $text = $request->request->get('text', '');

        /** validator setup */
        $tablePageValidator->setTitle($title);
        $tablePageValidator->setText($text);

        /** validator errors */
        $errors = $validator->validate($tablePageValidator);

        if (\count($errors) > 0) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => (string) $errors
                ]
            );
        }

        /** inserting / updating the textPage */
        $tablePage->setTitle($title);
        $tablePage->setText($text);

        $em->persist($tablePage);
        $em->flush();

        $product->setRevision($product->getRevision() + 1);
        $em->persist($product);
        $em->flush();

        /** checking the document */
        $documentRepository = $em->getRepository(Document::class);
        $document = $documentRepository->findOneBy(
            [
                'pageId' => $tablePage->getId(),
                'pageType' => 'tablePage',
                'product' => $product
            ]
        ) ?? new Document();

        if ($document->getOrder() < 1) {
            if (!$nextOrder = $documentRepository->getNextOrder($product->getId())) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('System Error')
                    ]
                );
            }

            $orderToInsert = $nextOrder->getOrder() + 1;
        } else {
            $orderToInsert = $document->getOrder();
        }

        /** saving document */
        $document->setName($title);
        $document->setNote('');
        $document->setProduct($product);
        $document->setPageType('tablePage');
        $document->setPageId($tablePage->getId());
        $document->setOrder($orderToInsert);

        $em->persist($document);
        $em->flush();

        /** refreshing order */
        $documentRepository->refreshOrder($product->getId());

        return new JsonResponse(
            [
                'status' => 'success',
                'message' => $this->translator->trans('Table Page Saved'),
                'id' => $tablePage->getId()
            ]
        );
    }

    /**
     * @Route("/loadRadioPage/{productId}/{id}", name="_load_radio_page")
     * @param int|null $id
     * @param int|null $productId
     * @return JsonResponse
     * @throws \LogicException
     */
    public function loadRadioPage($productId = null, $id = null): JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        $id = $id ? (int) $id : 0;

        $radioPage = ($id === 0 ? new RadioPage() : $em->getRepository(RadioPage::class)->find($id));
        if (!$radioPage) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('Page Not Found')
                ]
            );
        }

        /** loading the page content */
        $htmlData = $this
            ->render(
                'composer/partials/radioPage.html.twig',
                [
                    'radioPage' => $radioPage,
                    'radioPageId' => $id,
                    'productId' => $productId
                ]
            )
            ->getContent();

        return new JsonResponse([
            'status' => 'success',
            'data' => $htmlData,
            'message' => $this->translator->trans('Radio Page Editor Initialized')
        ]);
    }

    /**
     * @Route("/sendRadioPage/{productId}/{id}", name="_send_radio_page")
     * @param int $productId
     * @param int|null $id
     * @param Request $request
     * @param ValidatorInterface $validator
     * @return JsonResponse
     * @throws \Symfony\Component\Translation\Exception\InvalidArgumentException
     * @throws \Doctrine\ORM\ORMInvalidArgumentException
     * @throws \LogicException
     * @throws NonUniqueResultException
     * @throws \Doctrine\ORM\ORMException
     * @throws \Doctrine\ORM\OptimisticLockException
     * @throws InvalidArgumentException
     */
    public function sendRadioPage(int $productId, $id, Request $request, ValidatorInterface $validator) :JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        /** checking whether we have to insert a new radio page or updating  */
        if ((int) $id === 0) {
            $radioPageValidator = new CreateRadioPageRequest();
            $radioPage = new RadioPage();
        } else {
            $radioPageValidator = new UpdateRadioPageRequest();
            $radioPage = $em->getRepository(RadioPage::class)->find($id);
        }

        /** Request */
        $title = $request->request->get('title', '');

        /** validator setup */
        $radioPageValidator->setTitle($title);

        /** validator errors */
        $errors = $validator->validate($radioPageValidator);

        if (\count($errors) > 0) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => (string) $errors
                ]
            );
        }

        /** working on associations */
        $properties = (array) $request->request->get('property', []);
        $values = (array) $request->request->get('value', []);
        $propertiesRepository = $em->getRepository(AttributeName::class);
        $valuesRepository = $em->getRepository(AttributeValue::class);
        $eavRepository = $em->getRepository(AttributeNameValue::class);

        /** inserting / updating the textPage */
        $radioPage->setTitle($title);
        $radioPage->emptyAttributeNameValues();

        if (\count($properties) > 0) {
            foreach ($properties as $key => $value) {
                /** Property */
                $propertyString = trim($value);
                if ($propertyString === '') {
                    //we setup a BBCode (I'm old) to be parsed during print
                    $propertyString = '{EMPTY}';
                }

                $propertyFromDatabase = $propertiesRepository->retrieveFromNameFacade($propertyString);

                /** Value */
                $valueString = \array_key_exists($key, $values) ? trim($values[$key]) : '';
                $valueFromDatabase = $valuesRepository->retrieveFromValueFacade($valueString);

                /** Association */
                $eav = $eavRepository->fromNameValueFacade($propertyFromDatabase, $valueFromDatabase);

                /** eav on the radioPage */
                $radioPage->addAttributeNameValue($eav);
            }
        }

        $em->persist($radioPage);
        $em->flush();

        $product->setRevision($product->getRevision() + 1);
        $em->persist($product);
        $em->flush();

        /** checking the document */
        $documentRepository = $em->getRepository(Document::class);
        $document = $documentRepository->findOneBy(
            [
                'pageId' => $radioPage->getId(),
                'pageType' => 'radioPage',
                'product' => $product
            ]
        ) ?? new Document();

        if ($document->getOrder() < 1) {
            if (!$nextOrder = $documentRepository->getNextOrder($product->getId())) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('System Error')
                    ]
                );
            }

            $orderToInsert = $nextOrder->getOrder() + 1;
        } else {
            $orderToInsert = $document->getOrder();
        }

        /** saving document */
        $document->setName($title);
        $document->setNote('');
        $document->setProduct($product);
        $document->setPageType('radioPage');
        $document->setPageId($radioPage->getId());
        $document->setOrder($orderToInsert);

        $em->persist($document);
        $em->flush();

        /** refreshing order */
        $documentRepository->refreshOrder($product->getId());

        return new JsonResponse(
            [
                'status' => 'success',
                'message' => $this->translator->trans('Radio Page Saved'),
                'id' => $radioPage->getId()
            ]
        );
    }

    /**
     * @Route("/loadImagePage/{productId}/{id}", name="_load_image_page")
     * @param int|null $id
     * @param int|null $productId
     * @return JsonResponse
     * @throws \LogicException
     */
    public function loadImagePage($productId = null, $id = null): JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        $id = $id ? (int) $id : 0;

        $imagePage = ($id === 0 ? new ImagePage() : $em->getRepository(ImagePage::class)->find($id));
        if (!$imagePage) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('Page Not Found')
                ]
            );
        }

        /** loading the page content */
        $htmlData = $this
            ->render(
                'composer/partials/imagePage.html.twig',
                [
                    'imagePage' => $imagePage,
                    'imagePageId' => $id,
                    'productId' => $productId
                ]
            )
            ->getContent();

        return new JsonResponse([
            'status' => 'success',
            'data' => $htmlData,
            'message' => $this->translator->trans('Image Page Editor Initialized')
        ]);
    }

    /**
     * @Route("/sendImagePage/{productId}/{id}", name="_send_image_page")
     * @param int $productId
     * @param int|null $id
     * @param Request $request
     * @param ValidatorInterface $validator
     * @return JsonResponse
     * @throws InvalidArgumentException
     * @throws \LogicException
     * @throws FileException
     */
    public function sendImagePage(int $productId, $id, Request $request, ValidatorInterface $validator) :JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($productId);
        if (!$product) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('There was a problem loading the product')
                ]
            );
        }

        /** checking whether we have to insert a new text page or updating  */
        if ((int) $id === 0) {
            $imagePageValidator = new CreateImagePageRequest();
            $imagePage = new ImagePage();
        } else {
            $imagePageValidator = new UpdateImagePageRequest();
            $imagePage = $em->getRepository(ImagePage::class)->find($id);
        }

        /** Request */
        $title = $request->request->get('title', '');
        $image = $request->files->get('image');

        /** checking image */
        if ($image instanceof UploadedFile) {
            $fileName = $this->generateUniqueFileName().'.'.$image->guessExtension();

            $image->move(
                $this->getParameter('upload_images_pdf_directory'),
                $fileName
            );
        } else {
            if ($id === 0) {
                $this->logger->debug('File Upload Failed ' . print_r($image, true));
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('File Upload Failed')
                    ]
                );
            }

            $fileName = $imagePage->getImage();
        }

        /** validator setup */
        $imagePageValidator->setTitle($title);
        $imagePageValidator->setImage($fileName);

        /** validator errors */
        $errors = $validator->validate($imagePageValidator);

        if (\count($errors) > 0) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => (string) $errors
                ]
            );
        }

        /** inserting / updating the textPage */
        $imagePage->setTitle($title);
        $imagePage->setImage($fileName);

        $em->persist($imagePage);
        $em->flush();

        $product->setRevision($product->getRevision() + 1);
        $em->persist($product);
        $em->flush();

        /** checking the document */
        $documentRepository = $em->getRepository(Document::class);
        $document = $documentRepository->findOneBy(
            [
                'pageId' => $imagePage->getId(),
                'pageType' => 'imagePage',
                'product' => $product
            ]
        ) ?? new Document();

        if ($document->getOrder() < 1) {
            if (!$nextOrder = $documentRepository->getNextOrder($product->getId())) {
                return new JsonResponse(
                    [
                        'status' => 'error',
                        'message' => $this->translator->trans('System Error')
                    ]
                );
            }

            $orderToInsert = $nextOrder->getOrder() + 1;
        } else {
            $orderToInsert = $document->getOrder();
        }

        /** saving document */
        $document->setName($title);
        $document->setNote('');
        $document->setProduct($product);
        $document->setPageType('imagePage');
        $document->setPageId($imagePage->getId());
        $document->setOrder($orderToInsert);

        $em->persist($document);
        $em->flush();

        /** refreshing order */
        $documentRepository->refreshOrder($product->getId());

        return new JsonResponse(
            [
                'status' => 'success',
                'message' => $this->translator->trans('Image Page Saved'),
                'id' => $imagePage->getId()
            ]
        );
    }

    /**
     * @Route("/removePage/{type}/{id}", name="_remove_page")
     * @param string $type
     * @param int $id
     * @return JsonResponse
     * @throws InvalidArgumentException
     * @throws \LogicException
     */
    public function removePage(string $type = null, int $id = null) :JsonResponse
    {
        $em = $this->getDoctrine()->getManager();
        $page = null;

        switch ($type) {
            case 'textPage':
                $page = $em->getRepository(TextPage::class)->find($id);
                break;
            case 'imagePage':
                $page = $em->getRepository(ImagePage::class)->find($id);
                break;
            case 'radioPage':
                $page = $em->getRepository(RadioPage::class)->find($id);
                break;
            case 'tablePage':
                $page = $em->getRepository(TablePage::class)->find($id);
                break;
        }

        if (!$page) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => $this->translator->trans('Page Not Found')
                ]
            );
        }

        $em->remove($page);

        $documentRepository = $em->getRepository(Document::class);
        $document = $documentRepository->findOneBy(
            [
                'pageType' => $type,
                'pageId' => $id
            ]
        );

        if ($document) {
            $em->remove($document);
        }

        $em->flush();

        return new JsonResponse(
            [
                'status' => 'success',
                'message' => $this->translator->trans('Page Removed')
            ]
        );
    }

    /**
     * @Route("/reorderPages", name="_page_reorder", methods="POST")
     * @param Request $request
     * @return JsonResponse
     */
    public function reorderPages(Request $request) :JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        /** checking the product */
        $productRepository = $em->getRepository(Product::class);
        if (!$product = $productRepository->find($request->request->get('id'))) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => 'Product not Found'
                ]
            );
        }

        /** checking elements */
        $newOrder = $request->request->get('order', []);
        if (\count($newOrder) < 1) {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => 'Order not Valid'
                ]
            );
        }

        /** cycling through elements */
        $documentRepository = $em->getRepository(Document::class);
        $notFound = [];
        $startingFrom = 1;
        foreach ((array) $newOrder as $documentId) {
            if ($documentToEdit = $documentRepository->find($documentId)) {
                $documentToEdit->setOrder($startingFrom);
                $em->persist($documentToEdit);
                $startingFrom++;
            } else {
                $notFound[] = $documentId;
            }
        }

        /** if everything was fine we save the changes */
        if (\count($notFound) === 0) {
            $em->flush();
        } else {
            return new JsonResponse(
                [
                    'status' => 'error',
                    'message' => 'There are pages that have not been found'
                ]
            );
        }

        /** flushing the order */
        $documentRepository->refreshOrder($product->getId());

        /** returning success response */
        return new JsonResponse(
            [
                'status' => 'success',
                'message' => 'Page Order Successfully Changed'
            ]
        );
    }

    /**
     * @return string
     */
    private function generateUniqueFileName() :string
    {
        return md5(uniqid('productImage_', true));
    }
}
