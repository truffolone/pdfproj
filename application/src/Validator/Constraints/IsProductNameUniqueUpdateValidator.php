<?php

namespace App\Validator\Constraints;

use App\Entity\Product;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

class IsProductNameUniqueUpdateValidator extends ConstraintValidator
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    public function validate($entity, Constraint $constraint) :void
    {
        /** loading entity repository */
        $repository = $this->em->getRepository(Product::class);
        $product = $repository->findOneBy(['name' => $entity->getName()]);

        if ($product && $product->getId() !== $entity->getId()) {
            $this->context->buildViolation($constraint->message)
                ->setParameter('{{ value }}', $entity->getName())
                ->addViolation();
        }
    }
}
