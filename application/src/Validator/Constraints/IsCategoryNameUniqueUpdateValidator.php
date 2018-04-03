<?php

namespace App\Validator\Constraints;

use App\Entity\Category;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

class IsCategoryNameUniqueUpdateValidator extends ConstraintValidator
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    public function validate($entity, Constraint $constraint) :void
    {
        /** loading entity repository */
        $repository = $this->em->getRepository(Category::class);
        $category = $repository->findOneBy(['name' => $entity->getName()]);

        if ($category && $category->getId() !== $entity->getId()) {
            $this->context->buildViolation($constraint->message)
                ->setParameter('{{ value }}', $entity->getName())
                ->addViolation();
        }
    }
}
