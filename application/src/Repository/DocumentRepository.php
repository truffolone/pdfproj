<?php

namespace App\Repository;

use App\Entity\Document;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Document|null find($id, $lockMode = null, $lockVersion = null)
 * @method Document|null findOneBy(array $criteria, array $orderBy = null)
 * @method Document[]    findAll()
 * @method Document[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DocumentRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Document::class);
    }

    /**
     * @param int $productId
     * @return Document|null
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function loadFromProduct(int $productId) :?Document
    {
        $qb = $this->createQueryBuilder('d')
                   ->andWhere('d.product = :product_id')
                   ->setParameter('product_id', $productId)
                   ->getQuery();

        return $qb->setMaxResults(1)->getOneOrNullResult();
    }

    /**
     * @param int $productId
     * @return Document|null
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function loadMainPageForProduct(int $productId) :?Document
    {
        $qb = $this->createQueryBuilder('d')
            ->andWhere('d.pageType = :page_type')
            ->setParameter('page_type', 'mainPage')
            ->andWhere('d.product = :product_id')
            ->setParameter('product_id', $productId)
            ->getQuery();

        return $qb->setMaxResults(1)->getOneOrNullResult();
    }

    /**
     * @param int $productId
     * @return mixed
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function getNextOrder(int $productId) :?Document
    {
        $qb = $this->createQueryBuilder('d')
            ->andWhere('d.product = :product_id')
            ->setParameter('product_id', $productId)
            ->orderBy('d.order', 'DESC')
            ->getQuery();

        return $qb->setMaxResults(1)->getOneOrNullResult();
    }

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
