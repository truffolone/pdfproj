<?php

namespace App\Form\Requests;

use Symfony\Component\Validator\Constraints as Assert;

class CreateRadioPageRequest
{
    /**
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
}
