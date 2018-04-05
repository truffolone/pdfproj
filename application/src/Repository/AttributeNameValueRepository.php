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

    /**
     * Automatically refresh page order
     * @param int $productId
     * @return void
     */
    public function refreshOrder(int $productId) :void
    {
        $qb = $this->createQueryBuilder('d')
            ->andWhere('d.product = :product_id')
            ->setParameter('product_id', $productId)
            ->orderBy('d.order', 'ASC')
            ->getQuery();

        $results = $qb->execute();

        if (!$results) {
            return;
        }

        $i = 1;
        $entityManager = $this->getEntityManager();
        foreach ($results as $document) {
            if ($document->getPageType() === 'mainPage') {
                $query = $entityManager->createQuery(
                    'UPDATE App\Entity\Document d  SET d.order = :new_order WHERE d.id = :document_id'
                )->setParameter('new_order', 0)->setParameter('document_id', $document->getId());
            } else {
                $query = $entityManager->createQuery(
                    'UPDATE App\Entity\Document d  SET d.order = :new_order WHERE d.id = :document_id'
                )->setParameter('new_order', $i)->setParameter('document_id', $document->getId());

                $i++;
            }

            $query->execute();
        }
    }
}
