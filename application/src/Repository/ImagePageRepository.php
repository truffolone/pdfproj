<?php

namespace App\Repository;

use App\Entity\ImagePage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method ImagePage|null find($id, $lockMode = null, $lockVersion = null)
 * @method ImagePage|null findOneBy(array $criteria, array $orderBy = null)
 * @method ImagePage[]    findAll()
 * @method ImagePage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ImagePageRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, ImagePage::class);
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
