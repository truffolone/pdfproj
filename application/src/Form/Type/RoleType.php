<?php

namespace App\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\OptionsResolver\Exception\AccessException;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RoleType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     * @return void
     */
    public function buildForm(FormBuilderInterface $builder, array $options) :void
    {
        $builder
            ->add('name', TextType::class, ['label' => 'Name', 'translation_domain' => 'messages'])
            ->add('slug', TextType::class, ['label' => 'Slug', 'translation_domain' => 'messages'])
            ->add('description', TextareaType::class, ['label' => 'Description', 'translation_domain' => 'messages'])
        ;

        $builder->add('save', SubmitType::class, array('label' => 'Save Role', 'translation_domain' => 'messages'));
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
