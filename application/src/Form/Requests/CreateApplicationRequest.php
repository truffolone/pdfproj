<?php

namespace App\Form\Requests;

use Symfony\Component\Validator\Constraints as Assert;
use App\Validator\Constraints as TruffoloneAssert;

class CreateApplicationRequest
{
    /**
     * @Assert\NotBlank()
     * @Assert\Length(min=2, max=255)
     * @TruffoloneAssert\IsApplicationNameUnique()
     * @var string
     */
    public $name;

    public $categories;
}
