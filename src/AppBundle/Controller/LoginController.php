<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Facebook\Facebook;

/**
 * Class LoginController
 * @author Sydney Moutia <sydney@akhann.com>
 */
class LoginController extends Controller
{
    /**
     * @Route("/login", name="login")
     */
    public function loginAction(Request $request)
    {
        $this->get('session')->start();

        $fb = new Facebook([
          'app_id' => '1690300947880602',
          'app_secret' => '0b6107ea187ee9cd79adc66a2dd84254',
          'default_graph_version' => 'v2.5',
          'persistent_data_handler'=>'session'
          ]);

        $helper = $fb->getRedirectLoginHelper();

        $permissions = ['email']; // Optional permissions
        $loginUrl = $helper->getLoginUrl($this->generateUrl('homepage', array(), true), $permissions);


        return $this->render('login/login.html.twig', array("loginUrl" => $loginUrl,));
    }
}

