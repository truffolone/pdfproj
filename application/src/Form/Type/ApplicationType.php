<?php

namespace App\Form\Type;

use App\Entity\Category;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\OptionsResolver\Exception\AccessException;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ApplicationType extends AbstractType
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
            ->add(
                'categories',
                EntityType::class,
                [
                    'label' => 'categories',
                    'translation_domain' => 'messages',
                    'multiple' => true,
                    'class' => Category::class,
                    'choice_label' => 'name'
                ]
            )
        ;

        $builder->add(
            'save',
            SubmitType::class,
            array('label' => 'Save Application', 'translation_domain' => 'messages')
        );
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
