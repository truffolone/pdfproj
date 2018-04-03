<?php

namespace App\Repository;

use App\Entity\AttributeValueTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method AttributeValueTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method AttributeValueTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method AttributeValueTranslation[]    findAll()
 * @method AttributeValueTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AttributeValueTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, AttributeValueTranslation::class);
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
