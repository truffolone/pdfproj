<?php

namespace App\Controller\Admin;

use App\Entity\Product;
use App\Exception\PageGenerationException;
use App\Form\Requests\CreateProductRequest;
use App\Form\Requests\UpdateProductRequest;
use App\Service\PageGenerator;
use Doctrine\ORM\EntityManagerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Translation\Exception\InvalidArgumentException;
use Symfony\Component\Translation\TranslatorInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;

/**
 * @Security("has_role('ROLE_ADMIN')")
 * @Route("/{_locale}/api", name="api")
 */
class ApiController extends Controller
{
    private $logger;

    private $translator;

    private $em;

    public function __construct(LoggerInterface $logger, TranslatorInterface $translator, EntityManagerInterface $em)
    {
        $this->logger = $logger;
        $this->translator = $translator;
        $this->em = $em;
    }

    /**
     * @Route("/new", name="_newPage")
     * @param Request $request
     * @throws PageGenerationException
     * @throws InvalidArgumentException
     * @return JsonResponse
     */
    public function createNewPage(Request $request) :JsonResponse
    {
        $this->logger->debug('Starting new Page Creation');

        /** Checking data */
        $pageType = 'text';

        /** Generating Page */
        $pageGenerator = new PageGenerator($this->logger, $this->translator, $this->em);
        $pageHandler = $pageGenerator->setPageType($pageType);
        $newId = $pageHandler->save('1', ['title' => 'Titolo Fighissimo', 'text' => 'testo Baléngu']);

        return new JsonResponse(['id' => $newId]);
    }

    /**
     * @Route("/product/new", name="_products_new")
     * @param Request $request
     * @param ValidatorInterface $validator
     * @return JsonResponse
     * @throws \LogicException
     */
    public function createNewProduct(Request $request, ValidatorInterface $validator)
    {
        $this->logger->debug('Creating new product');

        /** loading the validator */
        $productRequest = new CreateProductRequest();
        $description = $request->request->get('description', '');
        $name = $request->request->get('name', '');

        /** checking for errors */
        $productRequest->setName($name);
        $productRequest->setDescription($description);
        $errors = $validator->validate($productRequest);

        if (\count($errors) > 0) {
            $errorString = (string) $errors;

            $response = [
                'status' => 'error',
                'message' => $errorString
            ];

            return new JsonResponse($response);
        }

        /** saving the product */
        $product = new Product();
        $product->setName($name);

        /** description */
        $product->setDescription($description);

        /** Persisting Data */
        $em = $this->getDoctrine()->getManager();
        $em->persist($product);
        $em->flush();

        $url = $this->generateUrl(
            'admin_products_edit',
            array('id' => $product->getId())
        );

        /** sending JsonResponse */
        $response = [
            'status' => 'success',
            'url' => $url,
            'message' => $this->translator->trans('The Product has been generated correctly')
        ];

        return new JsonResponse($response);
    }

    /**
     * @Route("/product/editName/{id}", name="_product_edit_name")
     * @param Product $product
     * @param ValidatorInterface $validator
     * @param Request $request
     * @throws InvalidArgumentException
     * @throws \LogicException
     * @return JsonResponse
     */
    public function editProductName(Product $product, ValidatorInterface $validator, Request $request) :JsonResponse
    {
        /** checking if the application actually exists */
        if (!$product) {
            /** ok, stop here */
            return new JsonResponse([
                'status' => 'error',
                'message' => $this->translator->trans('The product does not exist')
            ]);
        }

        $this->logger->debug('Editing product ' . $product->getName());

        $newName = $request->request->get('name', '');

        $productRequest = new UpdateProductRequest();
        $productRequest->fromProduct($product);
        $productRequest->setName($newName);

        $errors = $validator->validate($productRequest);

        if (\count($errors) > 0) {
            $errorString = (string) $errors;

            return new JsonResponse([
                'status' => 'error',
                'message' => $errorString
            ]);
        }

        /** saving the new Name */
        $product->setName($newName);

        $em = $this->getDoctrine()->getManager();
        $em->persist($product);
        $em->flush();

        return new JsonResponse([
            'status' => 'success',
            'message' => 'Product name has been successfully updated to ' . $newName
        ]);
    }
}
