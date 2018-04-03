<?php

namespace App\Form\Requests;

use Symfony\Component\Validator\Constraints as Assert;
use App\Validator\Constraints as TruffoloneAssert;

class CreateCategoryRequest
{
    /**
     * @Assert\NotBlank()
     * @Assert\Length(min=2, max=255)
     * @TruffoloneAssert\IsCategoryNameUnique()
     * @var string
     */
    public $name;

    /**
     * @var string $description
     */
    public $description;

    /**
     * @Assert\NotBlank()
     * @Assert\Image()
     */
    public $icon;
}
