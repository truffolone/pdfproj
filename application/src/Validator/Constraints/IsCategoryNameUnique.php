<?php

namespace App\Validator\Constraints;

use Symfony\Component\Validator\Constraint;

/**
 * @Annotation
 */
class IsCategoryNameUnique extends Constraint
{
    public $message = 'The category "{{ value }}" is already registered.';
}
