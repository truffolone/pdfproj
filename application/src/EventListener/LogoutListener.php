<?php

namespace App\EventListener;

use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;
use Symfony\Component\Security\Http\Logout\LogoutHandlerInterface;

class LogoutListener implements LogoutHandlerInterface
{
    protected $logger;

    public function __construct(LoggerInterface $logger)
    {
        $this->logger = $logger;
    }

    public function logout(
        Request $request,
        Response $response,
        TokenInterface $tokenInterface
    ) :void {
        $user = $tokenInterface->getUser();
        $this->logger->debug('User ' . $user->getUsername() . ' is being logged out');
    }
}