<?php
/**
 * Created by PhpStorm.
 * User: truffolone
 * Date: 20/03/18
 * Time: 16.59
 */

namespace App\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

/**
 * Class IndexController
 * @package App\Controller
 * @Route("/", name="index")
 */
class IndexController extends Controller
{
    /**
     * @Route("/", name="_index")
     * @return RedirectResponse
     */
    public function index() :RedirectResponse
    {
        return $this->redirectToRoute('admin_products_list');
    }
}