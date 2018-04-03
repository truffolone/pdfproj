<?php

namespace App\Form\Requests;

use App\Entity\Category;
use Symfony\Component\Validator\Constraints as Assert;
use App\Validator\Constraints as TruffoloneAssert;

/**
 * Class UpdateRoleRequest
 * @TruffoloneAssert\IsCategoryNameUniqueUpdate()
 * @package App\Form\Requests
 */
class UpdateCategoryRequest
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
     * @var $icon
     */
    public $icon;

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
     * @return string
     */
    public function getIcon() :string
    {
        return $this->icon;
    }

    /**
     * Static function to set the user to edit
     * @param Category $category
     * @return UpdateCategoryRequest
     */
    public function fromCategory(Category $category) :self
    {
        $categoryRequest = new self();
        $categoryRequest->id = $category->getId();
        $categoryRequest->name = $category->getName();
        $categoryRequest->description = $category->getDescription();
        $categoryRequest->icon = $category->getIcon();

        return $categoryRequest;
    }
}
