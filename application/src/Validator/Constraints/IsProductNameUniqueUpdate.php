<?php

namespace App\Validator\Constraints;

use Symfony\Component\Validator\Constraint;

/**
 * @Annotation
 */
class IsProductNameUniqueUpdate extends Constraint
{
    public $message = 'The product named "{{ value }}" is already registered.';

    public function getTargets()
    {
        return Constraint::CLASS_CONSTRAINT;
    }
}
