<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Security\Core\Authorization\AuthorizationCheckerInterface;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends Controller
{
    /**
     * @Route("/{_locale}/login", name="login")
     * @param Request $request
     * @param AuthenticationUtils $authUtils
     * @param AuthorizationCheckerInterface $authChecker
     * @return Response
     * @throws \InvalidArgumentException
     */
    public function login(
        Request $request,
        AuthenticationUtils $authUtils,
        AuthorizationCheckerInterface $authChecker
    ) :Response {
        if (true === $authChecker->isGranted('IS_AUTHENTICATED_REMEMBERED')) {
            return $this->redirectToRoute('admin_dashboard');
        }
        /** Login Errors */
        $error = $authUtils->getLastAuthenticationError();

        /** $lastUsername last username inserted */
        $lastUsername = $authUtils->getLastUsername();

        return $this->render('security/login.html.twig', [
            'error' => $error,
            'lastUsername' => $lastUsername
        ]);
    }

    /**
     * @Route("/{_locale}/loginFailed", name="login_failed")
     * @param Request $request
     * @param AuthenticationUtils $authUtils
     * @return Response
     */
    public function loginFailed(Request $request, AuthenticationUtils $authUtils)
    {
        /** Login Errors */
        $error = $authUtils->getLastAuthenticationError();

        /** $lastUsername last username inserted */
        $lastUsername = $authUtils->getLastUsername();

        return $this->render('security/login.html.twig', [
            'error' => $error,
            'lastUsername' => $lastUsername
        ]);
    }
}
