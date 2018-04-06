<?php

namespace App\Repository;

use App\Entity\RadioEav;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method RadioEav|null find($id, $lockMode = null, $lockVersion = null)
 * @method RadioEav|null findOneBy(array $criteria, array $orderBy = null)
 * @method RadioEav[]    findAll()
 * @method RadioEav[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RadioEavRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, RadioEav::class);
    }

//    /**
//     * @return RadioEav[] Returns an array of RadioEav objects
//     */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('r.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?RadioEav
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
