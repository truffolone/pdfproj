<?php

namespace App\Form\Requests;

use App\Entity\MainPage;
use App\Entity\TablePage;
use App\Entity\TextPage;
use Symfony\Component\Validator\Constraints as Assert;

class UpdateTablePageRequest
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
     * @param TablePage $tablePage
     * @return UpdateTablePageRequest
     */
    public function fromMainPage(TablePage $tablePage) :self
    {
        $mp = new self();

        $mp->title = $tablePage->getTitle();
        $mp->text = $tablePage->getText();

        return $mp;
    }
}
