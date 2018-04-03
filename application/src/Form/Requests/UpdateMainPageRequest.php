<?php

namespace App\Form\Requests;

use App\Entity\MainPage;
use Symfony\Component\Validator\Constraints as Assert;

class UpdateMainPageRequest
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

    /**
     * @param MainPage $mainPage
     * @return UpdateMainPageRequest
     */
    public function fromMainPage(MainPage $mainPage) :self
    {
        $mp = new self();

        $mp->title = $mainPage->getTitle();
        $mp->text = $mainPage->getText();

        return $mp;
    }
}
