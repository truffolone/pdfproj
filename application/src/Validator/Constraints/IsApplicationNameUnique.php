<?php

namespace App\Validator\Constraints;

use Symfony\Component\Validator\Constraint;

/**
 * @Annotation
 */
class IsApplicationNameUnique extends Constraint
{
    public $message = 'The application name "{{ value }}" is already registered.';
}
