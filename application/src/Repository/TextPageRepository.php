<?php

namespace App\Repository;

use App\Entity\TextPage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method TextPage|null find($id, $lockMode = null, $lockVersion = null)
 * @method TextPage|null findOneBy(array $criteria, array $orderBy = null)
 * @method TextPage[]    findAll()
 * @method TextPage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TextPageRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, TextPage::class);
    }
}
