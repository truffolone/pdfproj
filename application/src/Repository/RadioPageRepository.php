<?php

namespace App\Repository;

use App\Entity\AttributeNameValue;
use App\Entity\RadioPage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method RadioPage|null find($id, $lockMode = null, $lockVersion = null)
 * @method RadioPage|null findOneBy(array $criteria, array $orderBy = null)
 * @method RadioPage[]    findAll()
 * @method RadioPage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RadioPageRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, RadioPage::class);
    }
}
