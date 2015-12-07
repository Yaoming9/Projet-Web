<?php
class IndexController extends Zend_Controller_Action
{
 
    /**
	* Return current db adapter.
	*/
	protected function _getDbAdapter()
	{
		$front = Zend_Controller_Front::getInstance();
		$bootstrap = $front->getParam("bootstrap");
		$dbResource = $bootstrap->getPluginResource("db");
		return $dbResource->getDbAdapter();	
	}
 
    public function init()
    {	
    }	
 
    public function indexAction()
    {
		$this->view->page = "index"; //pour les onglets de la navbar du haut
    }
}