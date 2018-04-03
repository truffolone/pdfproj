<?php

namespace App\Repository;

use App\Entity\TablePageTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method TablePageTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method TablePageTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method TablePageTranslation[]    findAll()
 * @method TablePageTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TablePageTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, TablePageTranslation::class);
    }

    /*
    public function findBySomething($value)
    {
        return $this->createQueryBuilder('t')
            ->where('t.something = :value')->setParameter('value', $value)
            ->orderBy('t.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
}
