<?php

namespace App\EventListener;

use App\Exception\PageGenerationException;
use Symfony\Component\HttpFoundation\Exception\RequestExceptionInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpKernel\Event\GetResponseForExceptionEvent;

class PageGenerationExceptionListener
{
    public function onKernelException(GetResponseForExceptionEvent $event) :void
    {
        $exception = $event->getException();

        if (!$exception instanceof PageGenerationException) {
            return;
        }

        $code = $exception instanceof RequestExceptionInterface ? 400 : 500;

        $responseData = [
            'error' => [
                'code' => $code,
                'message' => $exception->getMessage()
            ]
        ];

        $event->setResponse(new JsonResponse($responseData, $code));
    }
}