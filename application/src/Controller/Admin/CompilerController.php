<?php

namespace App\Controller\Admin;

use App\Entity\Application;
use App\Entity\Category;
use App\Entity\Product;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

/**
 * @Security("has_role('ROLE_ADMIN')")
 * @Route("/{_locale}/admin/compiler", name="admin_compiler")
 */
class CompilerController extends Controller
{
    /**
     * @Route("/", name="")
     * @throws \LogicException
     * @return Response
     */
    public function index() :Response
    {
        /** Loading all the categories */
        $em = $this->getDoctrine()->getManager();
        $categoryRepository = $em->getRepository(Category::class);

        /** Loading all the applications */
        $applicationsRepository = $em->getRepository(Application::class);

        $allCategories = $categoryRepository->findAll();
        $allApplications = $applicationsRepository->findAll();

        return $this->render(
            'admin/compiler/index.html.twig',
            [
                'categories' => $allCategories,
                'applications' => $allApplications
            ]
        );
    }

    /**
     * @Route("/v2", name="_v2")
     * @throws \LogicException
     * @return Response
     */
    public function v2() :Response
    {
        /** Loading all the categories */
        $em = $this->getDoctrine()->getManager();
        $categoryRepository = $em->getRepository(Category::class);

        /** Loading all the applications */
        $applicationsRepository = $em->getRepository(Application::class);

        /** Loading All Products */
        $productsRepository = $em->getRepository(Product::class);

        $allCategories = $categoryRepository->findAll();
        $allApplications = $applicationsRepository->findAll();
        $allProducts = $productsRepository->findAll();

        return $this->render(
            'admin/compiler/index.v2.html.twig',
            [
                'categories' => $allCategories,
                'applications' => $allApplications,
                'products' => $allProducts
            ]
        );
    }
}
