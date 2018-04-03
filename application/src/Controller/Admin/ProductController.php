<?php

namespace App\Controller\Admin;

use App\Entity\Document;
use App\Entity\Product;
use App\Form\Requests\CreateProductRequest;
use App\Form\Requests\UpdateProductRequest;
use App\Form\Type\ProductType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

/**
 * @Security("has_role('ROLE_ADMIN')")
 * @Route("/{_locale}/admin/products", name="admin_products")
 */
class ProductController extends Controller
{
    /**
     * @Route("/", name="_list")
     * @param Request $request
     * @throws \LogicException
     * @return Response
     */
    public function index(Request $request) :Response
    {
        $productsRepository = $this->getDoctrine()->getRepository(Product::class);
        $pagination = $productsRepository->findAll();

        /*$twig = $this->get('twig');
        $twig->addExtension(new \Twig_Extensions_Extension_Text());*/

        return $this->render('admin/products/list.html.twig', ['pagination' => $pagination]);
    }

    /**
     * @Route("/edit/{id}", name="_edit")
     * @param Product $product
     * @param Request $request
     * @throws \LogicException
     * @return Response
     */
    public function edit(Product $product, Request $request) :Response
    {
        /** checking if the role actually exists */
        if (!$product) {
            /** redirecting the user */
            $this->addFlash(
                'error',
                'Role does not exists'
            );

            return $this->redirectToRoute('admin_products_list');
        }

        /** Showing the page */
        return $this->render(
            'admin/products/edit.html.twig',
            [
                'product_name' => $product->getName(),
                'product_id' => $product->getId()
            ]
        );
    }

    /**
     * @Route("/new", name="_create")
     * @return Response
     */
    public function create() :Response
    {
        /** Showing the page */
        return $this->render(
            'admin/products/edit.html.twig',
            [
                'product_name' => 'Product Name',
                'product_id' => 0
            ]
        );
    }

    /**
     * @Route("/toggleActivation/{id}", name="_toggle_active")
     * @param Product $product
     * @return JsonResponse
     */
    public function toggleActive(Product $product) :JsonResponse
    {
        $em = $this->getDoctrine()->getManager();

        $product->setActive(!$product->getActive());

        $em->persist($product);
        $em->flush();

        return new JsonResponse(['status' => 'success']);
    }

    /**
     * @Route("/delete/{id}", name="_delete")
     * @param Product $product
     * @throws \LogicException
     * @return Response
     */
    public function delete(Product $product) :Response
    {
        /** checking if the application actually exists */
        if (!$product) {
            /** redirecting the user */
            $this->addFlash(
                'error',
                'Product does not exists'
            );
        } else {
            /** removing the application */
            $em = $this->getDoctrine()->getManager();
            $em->remove($product);
            $em->flush();

            $this->addFlash(
                'success',
                'Product ' . $product->getName() . ' correctly removed'
            );
        }

        return $this->redirectToRoute('admin_products_list');
    }
}
