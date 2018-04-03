<?php

namespace App\Repository;

use App\Entity\ImagePageTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method ImagePageTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method ImagePageTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method ImagePageTranslation[]    findAll()
 * @method ImagePageTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ImagePageTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, ImagePageTranslation::class);
    }

    /*
    public function findBySomething($value)
    {
        return $this->createQueryBuilder('i')
            ->where('i.something = :value')->setParameter('value', $value)
            ->orderBy('i.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
}
