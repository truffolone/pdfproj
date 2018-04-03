<?php

namespace App\Controller\Admin;

use App\Entity\Application;
use App\Entity\Category;
use App\Form\Requests\CreateApplicationRequest;
use App\Form\Requests\UpdateApplicationRequest;
use App\Form\Type\ApplicationType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

/**
 * @Security("has_role('ROLE_ADMIN')")
 * @Route("/{_locale}/admin/applications", name="admin_applications")
 */
class ApplicationController extends Controller
{
    /**
     * @Route("/", name="_list")
     * @throws \LogicException
     * @return Response
     */
    public function index() :Response
    {
        $applicationsRepository = $this->getDoctrine()->getRepository(Application::class);
        $allApplications = $applicationsRepository->findAll();

        return $this->render('admin/applications/list.html.twig', ['allApplications' => $allApplications]);
    }

    /**
     * @Route("/edit/{id}", name="_edit")
     * @param Application $application
     * @param Request $request
     * @throws \LogicException
     * @return Response
     */
    public function edit(Application $application, Request $request) :Response
    {
        /** checking if the role actually exists */
        if (!$application) {
            /** redirecting the user */
            $this->addFlash(
                'error',
                'Role does not exists'
            );

            return $this->redirectToRoute('admin_categories_list');
        }

        /** Loading the request */
        $applicationRequest = new UpdateApplicationRequest();
        $compiledApplicationRequest = $applicationRequest->fromApplication($application);

        /** Loading the Form */
        $form = $this->createForm(ApplicationType::class, $compiledApplicationRequest);
        $form->handleRequest($request);

        /** Checking if form was submitted and is valid */
        if ($form->isSubmitted() && $form->isValid()) {
            /** Calling Entity Manager */
            $em = $this->getDoctrine()->getManager();

            /** Loading the request data */
            $data = $request->request->get('application');

            /** Setting up the new role */
            $application->setName($data['name']);

            /** Categories */
            $application->resetCategories();
            if (\array_key_exists('categories', $data)) {
                foreach ((array) $data['categories'] as $category) {
                    $cat = $em->getRepository(Category::class)->find($category);
                    $application->addCategory($cat);
                }
            }

            /** Persisting the new role */
            $em->persist($application);
            $em->flush();

            /** Redirecting the user with success message */
            $this->addFlash(
                'success',
                'Application ' . $application->getName() . ' has been successfully edited'
            );

            return $this->redirectToRoute('admin_applications_list');
        }

        /** Showing the form */
        return $this->render('admin/applications/edit.html.twig', ['form' => $form->createView()]);
    }

    /**
     * @Route("/new", name="_create")
     * @param Request $request
     * @throws \LogicException
     * @return Response
     */
    public function create(Request $request) :Response
    {
        /** Creating the role request for the form */
        $categoryRequest = new CreateApplicationRequest();

        /** Instantiating the form */
        $form = $this->createForm(ApplicationType::class, $categoryRequest);
        $form->handleRequest($request);

        /** Checking if form was submitted and is valid */
        if ($form->isSubmitted() && $form->isValid()) {
            /** Calling Entity Manager */
            $em = $this->getDoctrine()->getManager();

            /** Loading the request data */
            $data = $request->request->get('application');

            /** Setting up the new role */
            $newApplication = new Application();
            $newApplication->setName($data['name']);

            /** Categories */
            if (\array_key_exists('categories', $data)) {
                foreach ((array) $data['categories'] as $category) {
                    $cat = $em->getRepository(Category::class)->find($category);
                    $newApplication->addCategory($cat);
                }
            }

            /** Persisting the new role */
            $em->persist($newApplication);
            $em->flush();

            /** Redirecting the user with success message */
            $this->addFlash(
                'success',
                'Application ' . $newApplication->getName() . ' has been successfully created'
            );

            return $this->redirectToRoute('admin_applications_list');
        }

        /** Showing the form */
        return $this->render('admin/applications/create.html.twig', ['form' => $form->createView()]);
    }

    /**
     * @Route("/delete/{id}", name="_delete")
     * @param Application $application
     * @throws \LogicException
     * @return Response
     */
    public function delete(Application $application) :Response
    {
        /** checking if the application actually exists */
        if (!$application) {
            /** redirecting the user */
            $this->addFlash(
                'error',
                'Application does not exists'
            );
        } else {
            /** removing the application */
            $em = $this->getDoctrine()->getManager();
            $em->remove($application);
            $em->flush();

            $this->addFlash(
                'success',
                'Application ' . $application->getName() . ' correctly removed'
            );
        }

        return $this->redirectToRoute('admin_applications_list');
    }
}
