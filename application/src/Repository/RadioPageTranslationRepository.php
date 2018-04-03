<?php

namespace App\Repository;

use App\Entity\RadioPageTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method RadioPageTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method RadioPageTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method RadioPageTranslation[]    findAll()
 * @method RadioPageTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RadioPageTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, RadioPageTranslation::class);
    }

    /*
    public function findBySomething($value)
    {
        return $this->createQueryBuilder('r')
            ->where('r.something = :value')->setParameter('value', $value)
            ->orderBy('r.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
}
