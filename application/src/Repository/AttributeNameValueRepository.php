<?php

namespace App\Repository;

use App\Entity\AttributeName;
use App\Entity\AttributeNameValue;
use App\Entity\AttributeValue;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method AttributeNameValue|null find($id, $lockMode = null, $lockVersion = null)
 * @method AttributeNameValue|null findOneBy(array $criteria, array $orderBy = null)
 * @method AttributeNameValue[]    findAll()
 * @method AttributeNameValue[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AttributeNameValueRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, AttributeNameValue::class);
    }

    /**
     * @param AttributeName $property
     * @param AttributeValue $value
     * @return AttributeNameValue|mixed
     * @throws \Doctrine\ORM\NonUniqueResultException
     * @throws \Doctrine\ORM\ORMException
     * @throws \Doctrine\ORM\OptimisticLockException
     * @throws \Doctrine\ORM\ORMInvalidArgumentException
     */
    public function fromNameValueFacade(AttributeName $property, AttributeValue $value)
    {
        $qb = $this->createQueryBuilder('e')
            ->andWhere('e.attributeName = :property')
            ->setParameter('property', $property)
            ->andWhere('e.attributeValue = :value')
            ->setParameter('value', $value)
            ->getQuery();

        if (!$eav = $qb->setMaxResults(1)->getOneOrNullResult()) {
            $em = $this->getEntityManager();

            $eav = new AttributeNameValue();
            $eav->setAttributeName($property);
            $eav->setAttributeValue($value);

            $em->persist($eav);
            $em->flush();
        }

        return $eav;
    }
}
