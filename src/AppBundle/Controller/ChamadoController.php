<?php

namespace AppBundle\Controller;

use AppBundle\Form\ChamadoType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use AppBundle\Controller\ClienteController;
/**
 * @Route("/chamado")
 * @package AppBundle\Controller
 */
class ChamadoController extends Controller
{
    /**
     * @Route("/", name="chamado")
     */
    public function indexAction(Request $request)
    {
        $form = $this->createForm(ChamadoType::class);
        $form->handleRequest($request);

        if ($form->isValid() && $form->isSubmitted()){
            $chamado = $form->getData();
            $pedido = $this->getDoctrine()->getRepository("AppBundle:Pedidos")->findOneBy(array('numero' => $chamado->getNumero()));

            if(isset($pedido)) {//verifica o numero do pedido
                $cliente = $this->getDoctrine()->getRepository("AppBundle:Clientes")->findOneBy(array('nome' => $chamado->getNome()));
                $chamado->setClienteId($cliente->getId());
                $chamado->setPedidoId($pedido->getId());

                $chamado->setCreatedAt(new \DateTime("now", new \DateTimeZone("America/Sao_Paulo")));
                $chamado->setUpdatedAt(new \DateTime("now", new \DateTimeZone("America/Sao_Paulo")));

                if(empty($cliente->getEmail())===true){//grava o e-mail do para o cliente caso não tenha
                   ClienteController::indexAction($cliente->getId(),$chamado->getEmail());
                }

                $doctrine = $this->getDoctrine()->getEntityManager();
                $doctrine->persist($chamado);

                $doctrine->flush();


                $this->addFlash("success","Chamado gravado com sucesso");
                $this->redirect('/');
            }else{
                $this->addFlash("error","Número do Pedido Não encotrado");
            }
        }

        return $this->render('sac/chamado.html.twig',['form' => $form->createView()]);
    }

    /**
     * @Route("/lista", name="lista")
     */
    public function atendimentoAction(){
        $chamados = $this->getDoctrine()->getRepository("AppBundle:Chamados")->findAll();
        return $this->render('sac/atendimento.html.twig',['chamados'=>$chamados]);
    }
}
