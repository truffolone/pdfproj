<?php

namespace App\Repository;

use App\Entity\MainPageTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MainPageTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method MainPageTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method MainPageTranslation[]    findAll()
 * @method MainPageTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MainPageTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MainPageTranslation::class);
    }

    /*
    public function findBySomething($value)
    {
        return $this->createQueryBuilder('m')
            ->where('m.something = :value')->setParameter('value', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
}
