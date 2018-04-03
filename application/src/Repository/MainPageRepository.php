<?php

namespace App\Repository;

use App\Entity\MainPage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MainPage|null find($id, $lockMode = null, $lockVersion = null)
 * @method MainPage|null findOneBy(array $criteria, array $orderBy = null)
 * @method MainPage[]    findAll()
 * @method MainPage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MainPageRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MainPage::class);
    }
}
