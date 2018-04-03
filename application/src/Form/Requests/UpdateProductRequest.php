<?php

namespace App\Form\Requests;

use App\Entity\Category;
use App\Entity\Product;
use Symfony\Component\Validator\Constraints as Assert;
use App\Validator\Constraints as TruffoloneAssert;

/**
 * Class UpdateRoleRequest
 * @TruffoloneAssert\IsProductNameUniqueUpdate()
 * @package App\Form\Requests
 */
class UpdateProductRequest
{
    /**
     * Create for name and slug check reference
     * @var int $id
     */
    public $id;

    /**
     * @Assert\NotBlank()
     * @Assert\Length(min=3, max=255)
     * @var string
     */
    public $name;

    /**
     * @var string $description
     */
    public $description;

    /**
     * @var string $image
     */
    public $image;

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @return string
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * @return int
     */
    public function getId() :int
    {
        return $this->id;
    }

    /**
     * @param int $id
     * @return void
     */
    public function setId(int $id) :void
    {
        $this->id = $id;
    }

    /**
     * @Assert\NotBlank()
     * @return string
     */
    public function getImage() : string
    {
        return $this->image;
    }

    /**
     * Static function to set the user to edit
     * @param Product $product
     * @return UpdateProductRequest
     */
    public function fromProduct(Product $product) :self
    {
        $productRequest = new self();
        $productRequest->setId($product->getId());
        $productRequest->name = $product->getName();
        $productRequest->description = $product->getDescription();
        $productRequest->image = $product->getImage();

        return $productRequest;
    }

    public function setName(string $name) :void
    {
        $this->name = $name;
    }

    public function setDescription(string $description) :void
    {
        $this->description = $description;
    }

    public function setImage($image) :void
    {
        $this->image = $image;
    }
}
