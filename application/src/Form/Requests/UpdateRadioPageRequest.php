<?php

namespace App\Form\Requests;

use App\Entity\RadioPage;
use Symfony\Component\Validator\Constraints as Assert;

class UpdateRadioPageRequest
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

    /**
     * @param RadioPage $radioPage
     * @return UpdateRadioPageRequest
     */
    public function fromMainPage(RadioPage $radioPage) :self
    {
        $mp = new self();

        $mp->title = $radioPage->getTitle();

        return $mp;
    }
}
