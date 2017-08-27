<?php

namespace AppBundle\Form;

use AppBundle\Entity\Chamados;
use AppBundle\Entity\Clientes;
use AppBundle\Entity\Pedidos;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ChamadoType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nome')
            ->add('numero')
            ->add('email')
            ->add('titulo')
            ->add('observacao',TextareaType::class,array('required'=>false));
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class'=>Chamados::class
        ]);
    }

    public function getBlockPrefix()
    {
        return 'app_bundle_chamado_type';
    }
}
