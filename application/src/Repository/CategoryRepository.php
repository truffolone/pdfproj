<?php

namespace App\Repository;

use App\Entity\Category;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;
use Knp\Component\Pager\Paginator;
use Knp\Component\Pager\Pagination\PaginationInterface;

class CategoryRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Category::class);
    }

    /**
     * @param int $page
     * @param Paginator $paginator
     * @throws \LogicException
     * @return PaginationInterface
     */
    public function loadList(int $page, Paginator $paginator) :PaginationInterface
    {
        $em = $this->getEntityManager();
        $dql   = "SELECT c
                    FROM App\Entity\Category c
                    ORDER BY c.order ASC";
        $query = $em->createQuery($dql);

        $pagination = $paginator->paginate(
            $query, /* query NOT result */
            $page/*page number*/,
            10/*limit per page*/
        );

        return $pagination;
    }

    /**
     * @return int
     * @throws \Doctrine\ORM\NonUniqueResultException
     */
    public function getCount() :int
    {
        $em = $this->getEntityManager();
        $dql   = "SELECT count(c.id)
                    FROM App\Entity\Category c";
        $query = $em->createQuery($dql);

        return $query->getSingleScalarResult();
    }
}
