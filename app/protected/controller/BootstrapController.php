<?php

class BootstrapController extends DooController{

    function index(){
	
		//array to send to view
		$data = array();

		//get soruces
		$data['sources'] = Doo::db()->find('Sources');

		//render
		$this->renderc('index', $data);

    }
}

?>