<?php

namespace App\Validator\Constraints;

use Symfony\Component\Validator\Constraint;

/**
 * @Annotation
 */
class IsApplicationNameUniqueUpdate extends Constraint
{
    public $message = 'The application name "{{ value }}" is already registered.';

    public function getTargets()
    {
        return Constraint::CLASS_CONSTRAINT;
    }
}
