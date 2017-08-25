<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ClienteController extends Controller
{
    public function indexAction($id,$email)
    {

        $cliente = $this->getDoctrine()->getRepository("AppBundle:Clientes")->find($id);
        $cliente->setEmail($email);
        $cliente->setUpdatedAt(new \DateTime("now", new \DateTimeZone("America/Sao_Paulo")));
        $doctrine = $this->getDoctrine()->getEntityManager();
        $doctrine->persist($cliente);

        $doctrine->flush();
    }
}
