<?php

namespace AppBundle\Form;

use AppBundle\Entity\Chamados;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class BuscaType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('numero',null, array('required' => false))
            ->add('email',null, array('required' =>false));
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class'=>Chamados::class
        ]);
    }

    public function getBlockPrefix()
    {
        return 'app_bundle_busca_type';
    }
}
