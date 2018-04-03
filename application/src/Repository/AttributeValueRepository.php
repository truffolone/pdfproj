<?php

namespace App\Repository;

use App\Entity\AttributeValue;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method AttributeValue|null find($id, $lockMode = null, $lockVersion = null)
 * @method AttributeValue|null findOneBy(array $criteria, array $orderBy = null)
 * @method AttributeValue[]    findAll()
 * @method AttributeValue[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AttributeValueRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, AttributeValue::class);
    }

    /**
     * @param string $value
     * @return AttributeValue|mixed
     * @throws \Doctrine\ORM\NonUniqueResultException
     * @throws \Doctrine\ORM\ORMException
     * @throws \Doctrine\ORM\OptimisticLockException
     * @throws \Doctrine\ORM\ORMInvalidArgumentException
     */
    public function retrieveFromValueFacade(string $value)
    {
        $qb = $this->createQueryBuilder('n')
            ->andWhere('n.value = :value')
            ->setParameter('value', $value)
            ->getQuery();

        if (!$attributeValue = $qb->setMaxResults(1)->getOneOrNullResult()) {
            $em = $this->getEntityManager();

            $attributeValue = new AttributeValue();
            $attributeValue->setValue($value);

            $em->persist($attributeValue);
            $em->flush();
        }

        return $attributeValue;
    }
}
