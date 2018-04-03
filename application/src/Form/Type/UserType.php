<?php

namespace App\Form\Type;

use App\Entity\Roles;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\Exception\AccessException;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Exception\ConstraintDefinitionException;
use Symfony\Component\Validator\Exception\InvalidOptionsException;
use Symfony\Component\Validator\Exception\MissingOptionsException;

class UserType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     * @throws MissingOptionsException
     * @throws InvalidOptionsException
     * @throws ConstraintDefinitionException
     */
    public function buildForm(FormBuilderInterface $builder, array $options) :void
    {
        $builder
            ->add('username', TextType::class, ['label' => 'Username', 'translation_domain' => 'messages'])
            ->add(
                'plainPassword',
                PasswordType::class,
                [
                    'required' => false,
                    'label' => 'Password',
                    'translation_domain' => 'messages'
                ]
            )
            ->add('email', EmailType::class, ['label' => 'Email', 'translation_domain' => 'messages'])
            ->add(
                'role',
                EntityType::class,
                [
                    'class' => Roles::class,
                    'choice_label' => 'name',
                    'expanded' => false,
                    'multiple' => false,
                    'label' => 'Role',
                    'translation_domain' => 'messages'
                ]
            );

        $builder->add('save', SubmitType::class, array('label' => 'Save User', 'translation_domain' => 'messages'));
    }

    /**
     * @param OptionsResolver $resolver
     * @throws AccessException
     * @return void
     */
    public function configureOptions(OptionsResolver $resolver) :void
    {
        $resolver->setDefaults([]);
    }
}
