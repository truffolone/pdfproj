<?php

namespace App\Validator\Constraints;

use Symfony\Component\Validator\Constraint;

/**
 * @Annotation
 */
class IsProductNameUnique extends Constraint
{
    public $message = 'The Product named "{{ value }}" is already registered.';
}
