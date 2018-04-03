<?php

namespace App\Form\Requests;

use Symfony\Component\Validator\Constraints as Assert;

class CreateImagePageRequest
{
    /**
     * @var string
     */
    public $title;

    /**
     * @Assert\NotBlank()
     */
    public $image;

    public function setTitle(string $title) :void
    {
        $this->title = $title;
    }

    public function setImage($image) :void
    {
        $this->image = $image;
    }
}
