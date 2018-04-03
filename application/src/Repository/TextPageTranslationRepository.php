<?php

namespace App\Repository;

use App\Entity\TextPageTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method TextPageTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method TextPageTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method TextPageTranslation[]    findAll()
 * @method TextPageTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TextPageTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, TextPageTranslation::class);
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
