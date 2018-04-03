<?php

namespace App\Repository;

use App\Entity\AttributeName;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method AttributeName|null find($id, $lockMode = null, $lockVersion = null)
 * @method AttributeName|null findOneBy(array $criteria, array $orderBy = null)
 * @method AttributeName[]    findAll()
 * @method AttributeName[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AttributeNameRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, AttributeName::class);
    }

    /**
     * @param string $value
     * @return AttributeName|mixed
     * @throws \Doctrine\ORM\NonUniqueResultException
     * @throws \Doctrine\ORM\ORMException
     * @throws \Doctrine\ORM\OptimisticLockException
     * @throws \Doctrine\ORM\ORMInvalidArgumentException
     */
    public function retrieveFromNameFacade(string $value)
    {
        $qb = $this->createQueryBuilder('n')
            ->andWhere('n.name = :name')
            ->setParameter('name', $value)
            ->getQuery();

        if (!$name = $qb->setMaxResults(1)->getOneOrNullResult()) {
            $em = $this->getEntityManager();

            $name = new AttributeName();
            $name->setName($value);

            $em->persist($name);
            $em->flush();
        }

        return $name;
    }
}
