<?php

class BootstrapController extends DooController{

    function index(){
	
		//array to send to view
		$data = array();

		//get soruces
		Doo::loadModel('Sources');
		$sources = new Sources();
		$data['sources'] = $sources->find();

		//render
		$this->renderc('index', $data);

    }
}

?>