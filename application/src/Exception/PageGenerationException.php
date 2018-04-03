<?php

namespace App\Exception;

use App\Exception\TruffoloneException;
use Symfony\Component\HttpFoundation\Exception\RequestExceptionInterface;

class PageGenerationException extends \Exception implements TruffoloneException, RequestExceptionInterface
{

}