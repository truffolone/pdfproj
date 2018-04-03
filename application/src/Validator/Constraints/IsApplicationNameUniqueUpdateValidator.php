<?php

namespace App\Validator\Constraints;

use App\Entity\Application;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

class IsApplicationNameUniqueUpdateValidator extends ConstraintValidator
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    public function validate($entity, Constraint $constraint) :void
    {
        /** loading entity repository */
        $repository = $this->em->getRepository(Application::class);
        $application = $repository->findOneBy(['name' => $entity->getName()]);

        if ($application && $application->getId() !== $entity->getId()) {
            $this->context->buildViolation($constraint->message)
                ->setParameter('{{ value }}', $entity->getName())
                ->addViolation();
        }
    }
}
