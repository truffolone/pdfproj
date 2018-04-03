<?php

namespace App\Form\Requests;

use Symfony\Component\Validator\Constraints as Assert;

class CreateMainPageRequest
{
    /**
     * @Assert\NotBlank()
     * @Assert\Length(min=2, max=255)
     * @var string
     */
    public $title;

    /**
     * @var string $text
     */
    public $text;

    public function setTitle(string $title) :void
    {
        $this->title = $title;
    }

    public function setText($text) :void
    {
        $this->text = $text;
    }
}
