<?php

namespace App\Form\Requests;

use Symfony\Component\Validator\Constraints as Assert;
use App\Validator\Constraints as TruffoloneAssert;

class CreateProductRequest
{
    /**
     * @Assert\NotBlank()
     * @Assert\Length(min=2, max=255)
     * @var string
     */
    public $name;

    /**
     * @var string $description
     */
    public $description;

    /**
     * @Assert\NotBlank()
     * @var string $image
     */
    public $image;

    public function setName(string $name) :void
    {
        $this->name = $name;
    }

    public function setDescription($description) :void
    {
        $this->description = $description;
    }

    public function setImage($image) :void
    {
        $this->image = $image;
    }
}
