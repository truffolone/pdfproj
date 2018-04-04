<?php

namespace App\Entity;

use Gedmo\Mapping\Annotation as Gedmo;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\RadioPageRepository")
 * @ORM\Table(name="radio_pages")
 * @Gedmo\TranslationEntity(class="App\Entity\RadioPageTranslation")
 * @Gedmo\SoftDeleteable(fieldName="deletedAt", timeAware=false)
 * @ORM\HasLifecycleCallbacks
 */
class RadioPage
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @Gedmo\Translatable()
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $title;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\AttributeNameValue")
     * @ORM\JoinTable(name="page_attribute_name_values",
     *      joinColumns={@ORM\JoinColumn(name="radio_page_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="attribute_name_value_id", referencedColumnName="id")}
     *      )
     */
    private $attributeNameValues;

    /**
     * @ORM\OneToMany(
     *   targetEntity="RadioPageTranslation",
     *   mappedBy="object",
     *   cascade={"persist", "remove"}
     * )
     */
    private $translations;

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
     * RadioPage constructor.
     */
    public function __construct()
    {
        $this->createdAt= new \DateTime();
        $this->updatedAt= new \DateTime();
        $this->translations = new ArrayCollection();
        $this->attributeNameValues = new ArrayCollection();
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param mixed $title
     */
    public function setTitle($title): void
    {
        $this->title = $title;
    }

    /**
     * @return void
     */
    public function emptyAttributeNameValues() :void
    {
        $this->attributeNameValues = new ArrayCollection();
    }

    /**
     * @param AttributeNameValue $eav
     * @return void
     */
    public function addAttributeNameValue(AttributeNameValue $eav) :void
    {
        if ($this->attributeNameValues->contains($eav)) {
            return;
        }

        $this->attributeNameValues[] = $eav;
    }

    /**
     * @return mixed
     */
    public function getAttributeNameValues()
    {
        return $this->attributeNameValues;
    }

    /**
     * @param mixed $attributeNameValues
     */
    public function setAttributeNameValues($attributeNameValues): void
    {
        $this->attributeNameValues = $attributeNameValues;
    }

    /**
     * @return mixed
     */
    public function getTranslations()
    {
        return $this->translations;
    }

    /**
     * @param RadioPageTranslation $t
     */
    public function addTranslation(RadioPageTranslation $t) :void
    {
        if (!$this->translations->contains($t)) {
            $this->translations[] = $t;
            $t->setObject($this);
        }
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