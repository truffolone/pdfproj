<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AttributeNameValueRepository")
 * @ORM\Table(name="attribute_name_value")
 * @Gedmo\SoftDeleteable(fieldName="deletedAt", timeAware=false)
 * @ORM\HasLifecycleCallbacks
 */
class AttributeNameValue
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="AttributeName")
     * @ORM\JoinColumn(name="attribute_name_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $attributeName;

    /**
     * @ORM\ManyToOne(targetEntity="AttributeValue")
     * @ORM\JoinColumn(name="attribute_value_id", referencedColumnName="id", onDelete="CASCADE")
     */
    private $attributeValue;

    /**
     * @Gedmo\Timestampable(on="create")
     * @ORM\Column(type="datetime")
     */
    protected $createdAt;

    /**
     * @Gedmo\Timestampable(on="update")
     * @ORM\Column(type="datetime")
     */
    protected $updatedAt;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $deletedAt;

    /**
     * AttributeNameValue constructor.
     */
    public function __construct()
    {
        $this->createdAt= new \DateTime();
        $this->updatedAt= new \DateTime();
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return AttributeName
     */
    public function getAttributeName() :AttributeName
    {
        return $this->attributeName;
    }

    /**
     * @param AttributeName $attributeName
     */
    public function setAttributeName(AttributeName $attributeName): void
    {
        $this->attributeName = $attributeName;
    }

    /**
     * @return AttributeValue
     */
    public function getAttributeValue() :AttributeValue
    {
        return $this->attributeValue;
    }

    /**
     * @param AttributeValue $attributeValue
     */
    public function setAttributeValue(AttributeValue $attributeValue): void
    {
        $this->attributeValue = $attributeValue;
    }

    /**
     * @return mixed
     */
    public function getOrder()
    {
        return $this->order;
    }

    /**
     * @param mixed $order
     */
    public function setOrder($order): void
    {
        $this->order = $order;
    }

    /**
     * @return mixed
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * @param mixed $createdAt
     */
    public function setCreatedAt($createdAt): void
    {
        $this->createdAt = $createdAt;
    }

    /**
     * @return mixed
     */
    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }

    /**
     * @param mixed $updatedAt
     */
    public function setUpdatedAt($updatedAt): void
    {
        $this->updatedAt = $updatedAt;
    }

    /**
     * @return mixed
     */
    public function getDeletedAt()
    {
        return $this->deletedAt;
    }

    /**
     * @param mixed $deletedAt
     */
    public function setDeletedAt($deletedAt): void
    {
        $this->deletedAt = $deletedAt;
    }
}
