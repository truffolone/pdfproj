<?php

namespace App\Repository;

use App\Entity\DocumentTranslation;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method DocumentTranslation|null find($id, $lockMode = null, $lockVersion = null)
 * @method DocumentTranslation|null findOneBy(array $criteria, array $orderBy = null)
 * @method DocumentTranslation[]    findAll()
 * @method DocumentTranslation[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DocumentTranslationRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, DocumentTranslation::class);
    }

    /*
    public function findBySomething($value)
    {
        return $this->createQueryBuilder('d')
            ->where('d.something = :value')->setParameter('value', $value)
            ->orderBy('d.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
}
