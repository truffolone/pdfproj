<?php

namespace App\Controller\Admin;

use App\Entity\Category;
use App\Form\Requests\CreateCategoryRequest;
use App\Form\Requests\UpdateCategoryRequest;
use App\Form\Type\CategoryType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

/**
 * @Security("has_role('ROLE_ADMIN')")
 * @Route("/{_locale}/admin/categories", name="admin_categories")
 */
class CategoryController extends Controller
{
    /**
     * @Route("/", name="_list")
     * @param Request $request
     * @throws \LogicException
     * @return Response
     */
    public function index(Request $request) :Response
    {
        $categoriesRepository = $this->getDoctrine()->getRepository(Category::class);
        $pagination = $categoriesRepository->loadList($request->query->getInt('page', 1), $this->get('knp_paginator'));

        return $this->render('admin/categories/list.html.twig', ['pagination' => $pagination]);
    }

    /**
     * @Route("/edit/{id}", name="_edit")
     * @param Category $category
     * @param Request $request
     * @throws \LogicException
     * @return Response
     */
    public function edit(Category $category, Request $request) :Response
    {
        /** checking if the role actually exists */
        if (!$category) {
            /** redirecting the user */
            $this->addFlash(
                'error',
                'Role does not exists'
            );

            return $this->redirectToRoute('admin_categories_list');
        }

        /** Loading the request */
        $categoryRequest = new UpdateCategoryRequest();
        $compiledCategoryRequest = $categoryRequest->fromCategory($category);

        /** Loading the Form */
        $form = $this->createForm(CategoryType::class, $compiledCategoryRequest);
        $form->handleRequest($request);

        /** Checking if form was submitted and is valid */
        if ($form->isSubmitted() && $form->isValid()) {
            /** Calling Entity Manager */
            $em = $this->getDoctrine()->getManager();

            /** Loading the request data */
            $data = $request->request->get('category');

            /** Setting up the new role */
            $category->setName($data['name']);

            /** Handling File Upload */
            $file = $compiledCategoryRequest->icon;
            if ($file instanceof UploadedFile) {
                $fileName = $this->generateUniqueFileName().'.'.$file->guessExtension();

                $file->move(
                    $this->getParameter('upload_images_directory'),
                    $fileName
                );

                /** saving file Path */
                $category->setIcon($fileName);
            }

            /** Checking if we have a description */
            $description = \array_key_exists('description', $data) ? $data['description'] : '';
            $category->setDescription($description);

            /** Persisting the new role */
            $em->persist($category);
            $em->flush();

            /** Redirecting the user with success message */
            $this->addFlash(
                'success',
                'Category ' . $category->getName() . ' has been successfully edited'
            );

            return $this->redirectToRoute('admin_categories_list');
        }

        /** Showing the form */
        return $this->render('admin/categories/edit.html.twig', ['form' => $form->createView()]);
    }

    /**
     * @Route("/new", name="_create")
     * @param Request $request
     * @throws \LogicException
     * @return Response
     * @throws FileException
     */
    public function create(Request $request) :Response
    {
        /** Creating the role request for the form */
        $categoryRequest = new CreateCategoryRequest();

        /** Instantiating the form */
        $form = $this->createForm(CategoryType::class, $categoryRequest);
        $form->handleRequest($request);

        /** Checking if form was submitted and is valid */
        if ($form->isSubmitted() && $form->isValid()) {
            /** Calling Entity Manager */
            $em = $this->getDoctrine()->getManager();

            /** Loading the request data */
            $data = $request->request->get('category');

            /** Setting up the new role */
            $newCategory = new Category();
            $newCategory->setName($data['name']);

            /** Handling File Upload */
            $fileName = '';
            $file = $categoryRequest->icon;
            if ($file instanceof UploadedFile) {
                $fileName = $this->generateUniqueFileName().'.'.$file->guessExtension();

                $file->move(
                    $this->getParameter('upload_images_directory'),
                    $fileName
                );
            }

            /** saving file Path */
            $newCategory->setIcon($fileName);

            /** Checking if we have a description */
            $description = \array_key_exists('description', $data) ? $data['description'] : '';
            $newCategory->setDescription($description);

            /** Persisting the new role */
            $em->persist($newCategory);
            $em->flush();

            /** Redirecting the user with success message */
            $this->addFlash(
                'success',
                'Category ' . $newCategory->getName() . ' has been successfully created'
            );

            return $this->redirectToRoute('admin_categories_list');
        }

        /** Showing the form */
        return $this->render('admin/categories/create.html.twig', ['form' => $form->createView()]);
    }

    /**
     * @Route("/delete/{id}", name="_delete")
     * @param Category $category
     * @throws \LogicException
     * @return Response
     */
    public function delete(Category $category) :Response
    {
        /** checking if the category actually exists */
        if (!$category) {
            /** redirecting the user */
            $this->addFlash(
                'error',
                'Category does not exists'
            );
        } else {
            /** removing the application */
            $em = $this->getDoctrine()->getManager();
            $em->remove($category);
            $em->flush();

            $this->addFlash(
                'success',
                'Category ' . $category->getName() . ' correctly removed'
            );
        }

        return $this->redirectToRoute('admin_categories_list');
    }

    /**
     * @Route("/move/{id}/{direction}", name="_move")
     * @param Category $category
     * @param string $direction
     * @return \Symfony\Component\HttpFoundation\RedirectResponse
     * @throws \LogicException
     */
    public function move(Category $category, string $direction) :RedirectResponse
    {
        /** checking if the category actually exists */
        if (!$category) {
            /** redirecting the user */
            $this->addFlash(
                'error',
                'Category does not exists'
            );
        } else {
            /** checking the direction */
            if ($direction !== 'up' && $direction !== 'down') {
                $this->addFlash(
                    'error',
                    'Something Went Wrong...'
                );
            } else {
                /** setting up variables */
                $nowOrder = $category->getOrder();
                $newOrder = $direction === 'up' ? $nowOrder - 1 : $nowOrder + 1;

                /** counting categories */
                $categoryRepository = $this->getDoctrine()->getRepository(Category::class);
                $categoryCount = $categoryRepository->getCount();

                /** checking input */
                if ($newOrder < 0 || $newOrder > $categoryCount) {
                    $this->addFlash(
                        'error',
                        'Order Unavailable (tried to set order as ' .
                            (string) $newOrder . ' while maximum count is ' .
                            (string) $categoryCount . ')'
                    );
                } else {
                    /** loading category to move up/down */
                    $categoryToMove = $categoryRepository->findOneBy(['order' => $newOrder]);
                    if (!$categoryToMove) {
                        /** redirecting the user */
                        $this->addFlash(
                            'error',
                            'Category does not exists'
                        );
                    } else {
                        $categoryToMove->setOrder($nowOrder);
                        $category->setOrder($newOrder);

                        $em = $this->getDoctrine()->getManager();

                        $em->persist($category);
                        $em->persist($categoryToMove);

                        $em->flush();

                        $this->addFlash(
                            'success',
                            'Category Successfully Moved'
                        );
                    }
                }
            }
        }

        return $this->redirectToRoute('admin_categories_list');
    }

    /**
     * @return string
     */
    private function generateUniqueFileName() :string
    {
        return md5(uniqid('icon_', true));
    }
}
