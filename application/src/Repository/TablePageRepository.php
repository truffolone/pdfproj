<?php

namespace App\Repository;

use App\Entity\TablePage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method TablePage|null find($id, $lockMode = null, $lockVersion = null)
 * @method TablePage|null findOneBy(array $criteria, array $orderBy = null)
 * @method TablePage[]    findAll()
 * @method TablePage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TablePageRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, TablePage::class);
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
