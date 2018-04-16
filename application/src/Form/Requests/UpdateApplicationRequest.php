<?php

namespace App\Form\Requests;

use App\Entity\Application;
use Symfony\Component\Validator\Constraints as Assert;
use App\Validator\Constraints as TruffoloneAssert;

/**
 * Class UpdateRoleRequest
 * @package App\Form\Requests
 */
class UpdateApplicationRequest
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

    public $categories;

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @return int
     */
    public function getId() :int
    {
        return $this->id;
    }

    /**
     * Static function to set the user to edit
     * @param Application $application
     * @return UpdateApplicationRequest
     */
    public function fromApplication(Application $application) :self
    {
        $applicationRequest = new self();
        $applicationRequest->id = $application->getId();
        $applicationRequest->name = $application->getName();
        $applicationRequest->categories = $application->getCategories();

        return $applicationRequest;
    }
}
