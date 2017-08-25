<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
/**
 * Description of InicioController
 *
 * @author Wilson
 */

/**
 * @Route("/inicio")
 * @package AppBundle\Controller
 */
class InicioController extends Controller{

    /**
     * @Route("/",name="inicio")
     */
    public function indexAction() {
       // return new Response("novo controller");
        return $this->render('sac/inicio.html.twig');
    }
}
