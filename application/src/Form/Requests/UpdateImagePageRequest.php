<?php

namespace App\Form\Requests;

use App\Entity\ImagePage;
use Symfony\Component\Validator\Constraints as Assert;

class UpdateImagePageRequest
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

    /**
     * @param ImagePage $imagePage
     * @return UpdateImagePageRequest
     */
    public function fromMainPage(ImagePage $imagePage) :self
    {
        $mp = new self();

        $mp->title = $imagePage->getTitle();
        $mp->image = $imagePage->getImage();

        return $mp;
    }
}
