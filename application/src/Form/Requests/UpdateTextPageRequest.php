<?php

namespace App\Form\Requests;

use App\Entity\MainPage;
use App\Entity\TextPage;
use Symfony\Component\Validator\Constraints as Assert;

class UpdateTextPageRequest
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

    public function setText($text) :void
    {
        $this->text = $text;
    }

    /**
     * @param TextPage $textPage
     * @return UpdateTextPageRequest
     */
    public function fromMainPage(TextPage $textPage) :self
    {
        $mp = new self();

        $mp->title = $textPage->getTitle();
        $mp->text = $textPage->getText();

        return $mp;
    }
}
