<?php

namespace App\Controller\Admin;

use App\Entity\Category;
use App\Entity\ImagePage;
use App\Entity\MainPage;
use App\Entity\Product;
use App\Entity\Document;
use App\Entity\RadioPage;
use App\Entity\TablePage;
use App\Entity\TextPage;
use Hashids\Hashids;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Security\Core\Authorization\AuthorizationCheckerInterface;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

/**
 * @Route("/{_locale}/printer", name="printer")
 */
class ShowProductController extends Controller
{
    /**
     * @Route("/", name="_index")
     * @return RedirectResponse
     */
    public function index() :RedirectResponse
    {
        return $this->redirectToRoute('admin_products_list');
    }

    /**
     * @Route("/show/{id}", name="_show")
     * @param Product $product
     * @throws \LogicException
     * @throws NotFoundHttpException
     * @return Response
     */
    public function printPage(Product $product) :Response
    {
        /** checking the product */
        if (!$product) {
            throw $this->createNotFoundException('Product Not Found');
        }

        $em = $this->getDoctrine()->getManager();

        /** loading documents */
        $documents = $em->getRepository(Document::class)->findBy(
            ['product' => $product],
            ['order' => 'ASC']
        );

        if (!$documents) {
            throw $this->createNotFoundException('Documents not Found');
        }

        $pagesArray = [];
        foreach ($documents as $document) {
            /** loading page based on type */
            if (!$page = $this->retrievePage($document->getPageId(), $document->getPageType())) {
                continue;
            }

            $pagesArray[$document->getOrder()] = ['type' => $document->getPageType(), 'page' => $page];
        }

        /** checking for main page */
        if (!\array_key_exists(0, $pagesArray) || \count($pagesArray) === 0 || $pagesArray[0]['type'] !== 'mainPage') {
            throw $this->createNotFoundException('Main Page not Found');
        }

        /** loading categories for main page */
        if (!$categories = $em->getRepository(Category::class)->findAll()) {
            throw $this->createNotFoundException('No Categories Found');
        }

        $catArray = [];
        foreach ($categories as $category) {
            $active = false;
            $catApplications = [];
            foreach ($pagesArray[0]['page']->getApplications() as $mpApplication) {
                if ($mpApplication->getCategories()->contains($category)) {
                    $active = true;
                    $catApplications[] = $mpApplication;
                }
            }

            $catArray[] = [
                'active' => $active,
                'name' => $category->getName(),
                'icon' => $category->getIcon(),
                'applications' => $catApplications
            ];
        }

        $response = $this->render(
            'printer/show.html.twig',
            [
                'pages' => $pagesArray,
                'categories' => $catArray,
                'product' => $product
            ]
        );

        return $response;
    }

    /**
     * @Route("/download/{id}", name="_download")
     * @param string $id
     * @param Request $request
     * @param AuthorizationCheckerInterface $authChecker
     * @throws \LogicException
     * @throws NotFoundHttpException
     * @throws \InvalidArgumentException
     * @throws \UnexpectedValueException
     * @throws \Hashids\HashidsException
     * @throws AccessDeniedException
     * @return Response
     */
    public function createPdf(
        string $id,
        Request $request,
        AuthorizationCheckerInterface $authChecker
    ) :Response {
        $trueId = $id;
        $em = $this->getDoctrine()->getManager();
        $productRepository = $em->getRepository(Product::class);
        $product = $productRepository->find($trueId);

        /** checking the product / permissions */
        if (!$product || (!$product->getActive() && !$authChecker->isGranted('ROLE_ADMIN'))) {
            throw $this->createNotFoundException('Product Not Found');
        }

        /** loading documents */
        $documents = $em->getRepository(Document::class)->findBy(
            ['product' => $product],
            ['order' => 'ASC']
        );

        if (!$documents) {
            throw $this->createNotFoundException('Documents not Found');
        }

        $pagesArray = [];
        foreach ($documents as $document) {
            /** loading page based on type */
            if (!$page = $this->retrievePage($document->getPageId(), $document->getPageType())) {
                continue;
            }

            $pagesArray[$document->getOrder()] = ['type' => $document->getPageType(), 'page' => $page];
        }

        /** checking for main page */
        if (!\array_key_exists(0, $pagesArray) || \count($pagesArray) === 0 || $pagesArray[0]['type'] !== 'mainPage') {
            throw $this->createNotFoundException('Main Page not Found');
        }

        /** loading categories for main page */
        if (!$categories = $em->getRepository(Category::class)->findAll()) {
            throw $this->createNotFoundException('No Categories Found');
        }

        $catArray = [];
        foreach ($categories as $category) {
            $active = false;
            $catApplications = [];
            foreach ($pagesArray[0]['page']->getApplications() as $mpApplication) {
                if ($mpApplication->getCategories()->contains($category)) {
                    $active = true;
                    $catApplications[] = $mpApplication;
                }
            }

            $catArray[] = [
                'active' => $active,
                'name' => $category->getName(),
                'icon' => $category->getIcon(),
                'applications' => $catApplications,
                'order' => $category->getOrder()
            ];
        }

        /** ordering categories */
        usort($catArray, function ($a, $b) {
            return strcmp($a['order'], $b['order']);
        });

        $file = 'product_' . $product->getId() . '_' .
                    $product->getRevision() . '_' .
                    $request->getLocale() . '.pdf';

        $filename = $this->getParameter('upload_images_pdf_files') . '/' . $file;

        if (\file_exists($filename)) {
            unlink($filename);
        }

        if (!\file_exists($filename)) {
            $fileContent = $this->renderView(
                'printer/print.html.twig',
                [
                    'pages' => $pagesArray,
                    'categories' => $catArray,
                    'product' => $product,
                    'font_url' => $this->getParameter('font_url')
                ]
            );
            $footerContent = $this->renderView('printer/partials/footer.html.twig', []);

            $defaultConfig = (new \Mpdf\Config\ConfigVariables())->getDefaults();
            $fontDirs = $defaultConfig['fontDir'];

            $defaultFontConfig = (new \Mpdf\Config\FontVariables())->getDefaults();
            $fontData = $defaultFontConfig['fontdata'];

            $pdfOptions = [
                'CSSselectMedia' => "screen",
                'debug' => true,
                'margin_bottom' => 5,
                'margin_top' => 0,
                'margin_left' => 0,
                'margin_right' => 0,
                'tempDir' => $this->getParameter('upload_images_pdf_files_tmp'),
                'margin_header' => 0,
                'margin_footer' => 0,
                'autoMarginPadding' => 0,
                'setAutoBottomMargin' => false,
                'fontDir' => array_merge($fontDirs, [
                    $this->getParameter('fonts_dir')
                ]),
                'fontdata' => $fontData + [
                        'dinot' => [
                            'R' => 'DINOT.ttf'
                        ],
                        'dinot-cond' => [
                            'R' => 'DINOT-Cond.ttf'
                        ],
                        'dinot-condbold' => [
                            'R' => 'DINOT-CondBold.ttf',
                            'B' => 'DINOT-CondBold.ttf'
                        ],
                        'dinot-condlight' => [
                            'R' => 'DINOT-CondLight.ttf'
                        ],
                        'dinot-medium' => [
                            'R' => 'DINOT-Medium.ttf'
                        ],
                        'dinot-bold' => [
                            'R' => 'DINOT-Bold.ttf',
                            'B' => 'DINOT-Bold.ttf'
                        ],
                        'dinot-black' => [
                            'R' => 'DINOT-Black.ttf'
                        ]
                    ],
                'default_font' => 'dinot',
                'dpi' => 300,
                'img_dpi' => 300
            ];

            $mpdf = new \Mpdf\Mpdf($pdfOptions);
            $mpdf->SetTitle($product->getName() . ' (' . $request->getLocale() . ')');
            $mpdf->dpi = 300;
            $mpdf->img_dpi = 300;
            $mpdf->SetHTMLFooter($footerContent);
            $mpdf->WriteHTML($fileContent);
            $mpdf->Output($filename, \Mpdf\Output\Destination::FILE);
        }

        $response = new Response();
        $response->headers->set('Cache-Control', 'private');
        $response->headers->set('Content-Type', 'application/pdf');
        $response->headers->set(
            'Content-Disposition',
            'attachment; filename="' . $product->getName() . '.pdf"'
        );
        $response->headers->set('Content-length', filesize($filename));

        $response->sendHeaders();

        $response->setContent(file_get_contents($filename));

        return $response;
    }

    /**
     * @param int $pageId
     * @param string $pageType
     * @throws \LogicException
     * @return mixed $page
     */
    private function retrievePage(int $pageId, string $pageType)
    {
        $em = $this->getDoctrine()->getManager();
        $page = null;

        switch ($pageType) {
            case 'mainPage':
                $page = $em->getRepository(MainPage::class)->find($pageId);
                break;
            case 'textPage':
                $page = $em->getRepository(TextPage::class)->find($pageId);
                break;
            case 'radioPage':
                $page = $em->getRepository(RadioPage::class)->find($pageId);
                break;
            case 'tablePage':
                $page = $em->getRepository(TablePage::class)->find($pageId);
                break;
            case 'imagePage':
                $page = $em->getRepository(ImagePage::class)->find($pageId);
                break;
        }

        return $page;
    }
}
