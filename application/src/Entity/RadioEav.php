<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\RadioEavRepository")
 */
class RadioEav
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * Many Features have One Product.
     * @ORM\ManyToOne(targetEntity="RadioPage", inversedBy="radioEavs")
     * @ORM\JoinColumn(name="radio_page_id", referencedColumnName="id")
     */
    private $page;

    /**
     * One Product has One Shipment.
     * @ORM\OneToOne(targetEntity="AttributeNameValue")
     * @ORM\JoinColumn(name="eav_id", referencedColumnName="id", unique=false)
     */
    private $eav;

    /**
     * @ORM\Column(type="smallint", name="ordine", options={"default" : 0})
     */
    private $order;

    /**
     * @return int
     */
    public function getId() :int
    {
        return $this->id;
    }

    /**
     * @return RadioPage
     */
    public function getPage() :RadioPage
    {
        return $this->page;
    }

    /**
     * @param RadioPage $page
     */
    public function setPage(RadioPage $page): void
    {
        $this->page = $page;
    }

    /**
     * @return AttributeNameValue
     */
    public function getEav() :AttributeNameValue
    {
        return $this->eav;
    }

    /**
     * @param AttributeNameValue $eav
     */
    public function setEav(AttributeNameValue $eav): void
    {
        $this->eav = $eav;
    }

    /**
     * @return int
     */
    public function getOrder() :int
    {
        return $this->order;
    }

    /**
     * @param int $order
     */
    public function setOrder(int $order): void
    {
        $this->order = $order;
    }
}
