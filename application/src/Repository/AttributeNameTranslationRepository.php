<?php

namespace App\Repository;

use App\Entity\AttributeNameTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method AttributeNameTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method AttributeNameTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method AttributeNameTranslation[]    findAll()
 * @method AttributeNameTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AttributeNameTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, AttributeNameTranslation::class);
    }

    /*
    public function findBySomething($value)
    {
        return $this->createQueryBuilder('a')
            ->where('a.something = :value')->setParameter('value', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
}
