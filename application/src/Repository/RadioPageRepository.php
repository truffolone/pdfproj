<?php

namespace App\Repository;

use App\Entity\AttributeNameValue;
use App\Entity\RadioPage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method RadioPage|null find($id, $lockMode = null, $lockVersion = null)
 * @method RadioPage|null findOneBy(array $criteria, array $orderBy = null)
 * @method RadioPage[]    findAll()
 * @method RadioPage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RadioPageRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, RadioPage::class);
    }

    /**
     * @param int $radioPageId
     * @return mixed
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function getNextOrder(int $radioPageId) :?AttributeNameValue
    {
        $qb = $this->createQueryBuilder('d')
            ->andWhere('d.product = :product_id')
            ->setParameter('product_id', $radioPageId)
            ->orderBy('d.order', 'DESC')
            ->getQuery();

        return $qb->setMaxResults(1)->getOneOrNullResult();
    }
}
