<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MainPageRepository")
 * @ORM\Table(name="main_pages")
 * @Gedmo\TranslationEntity(class="App\Entity\MainPageTranslation")
 * @Gedmo\SoftDeleteable(fieldName="deletedAt", timeAware=false)
 * @ORM\HasLifecycleCallbacks
 */
class MainPage
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @Gedmo\Translatable()
     * @ORM\Column(type="string", length=255)
     */
    private $title;

    /**
     * @Gedmo\Translatable()
     * @ORM\Column(type="text")
     */
    private $text;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Application")
     * @ORM\JoinTable(name="main_page_applications",
     *      joinColumns={@ORM\JoinColumn(name="main_page_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="application_id", referencedColumnName="id")}
     *      )
     */
    private $applications;

    /**
     * @ORM\OneToMany(
     *   targetEntity="MainPageTranslation",
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
     * MainPage constructor.
     */
    public function __construct()
    {
        $this->createdAt= new \DateTime();
        $this->updatedAt= new \DateTime();
        $this->translations = new ArrayCollection();
        $this->applications = new ArrayCollection();
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
    public function setName($title): void
    {
        $this->title = $title;
    }

    /**
     * @return mixed
     */
    public function getText()
    {
        return $this->text;
    }

    /**
     * @param string $text
     * @return void
     */
    public function setText($text) :void
    {
        $this->text = $text;
    }

    /**
     * @return mixed
     */
    public function getApplications()
    {
        return $this->applications;
    }

    /**
     * @param mixed $applications
     */
    public function setApplications($applications): void
    {
        $this->applications = $applications;
    }

    /**
     * @param Application $application
     */
    public function addApplication(Application $application) :void
    {
        if ($this->applications->contains($application)) {
            return;
        }

        $this->applications[] = $application;
    }

    /**
     * resets Applications
     */
    public function emptyApplications() :void
    {
        $this->applications = new ArrayCollection();
    }

    /**
     * @return mixed
     */
    public function getTranslations()
    {
        return $this->translations;
    }

    /**
     * @param MainPageTranslation $t
     */
    public function addTranslation(MainPageTranslation $t) :void
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
