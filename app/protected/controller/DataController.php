<?php

class DataController extends DooController{

    function data(){

    	//sources : required
		if (!isset($_GET['sources'])) {
			echo "Missing sources parameter";
			return;
		}
		$sources = json_decode($_GET['sources']);

		if(!isset($sources)){
			echo "Invalid sources parameter: " . $_GET['sources'];
			return;
		}

		//confs : required
		if (!isset($_GET['confs'])) {
			echo "Missing confs parameter";
			return;
		}
		$confs = json_decode($_GET['confs']);

		if(!isset($confs)){
			echo "Invalid confs parameter: " . $_GET['confs'];
			return;
		}

		//divs : required
		if (!isset($_GET['divs'])) {
			echo "Missing divs parameter";
			return;
		}
		$divs = json_decode($_GET['divs']);

		if(!isset($divs)){
			echo "Invalid divs parameter: " . $_GET['divs'];
			return;
		}

		//query mysql
		$sql = "SELECT teams.name, teams.color, avg(week1) AS wk1, avg(week2) AS wk2, avg(week3) AS wk3, avg(week4) AS wk4, avg(week5) AS wk5, avg(week6) AS wk6, avg(week7) AS wk7, avg(week8) AS wk8, avg(week9) AS wk9, avg(week10) AS wk10, avg(week11) AS wk11, avg(week12) AS wk12, avg(week13) AS wk13, avg(week14) AS wk14, avg(week15) AS wk15, avg(week16) AS wk16 
			FROM rankings
			LEFT JOIN teams
				ON rankings.team_id = teams.id
			WHERE source_ID in (" . join(',', $sources) . ") 
				AND year = 2014 
				AND teams.conference IN ('" . join("','", $confs) . "') 
				AND teams.division IN ('" . join("','", $divs) . "') 
			GROUP BY teams.name
			ORDER BY teams.name";


		//get return data
		$data = Doo::db()->fetchAll($sql);

		//build results array to be returned as json 
		$result = array();
		foreach($data as $row){
			$tmp = array();
			$tmp['name'] = $row['name'];
			$tmp['color'] = $row['color'];
			$tmp['data'] = array(isset($row['wk1']) ? floatval($row['wk1']) : null, isset($row['wk2']) ? floatval($row['wk2']) : null, isset($row['wk3']) ? floatval($row['wk3']) : null, isset($row['wk4']) ? floatval($row['wk4']) : null, isset($row['wk5']) ? floatval($row['wk5']) : null, isset($row['wk6']) ? floatval($row['wk6']) : null, isset($row['wk7']) ? floatval($row['wk7']) : null, isset($row['wk8']) ? floatval($row['wk8']) : null, isset($row['wk9']) ? floatval($row['wk9']) : null, isset($row['wk10']) ? floatval($row['wk10']) : null, isset($row['wk11']) ? floatval($row['wk11']) : null, isset($row['wk12']) ? floatval($row['wk12']) : null, isset($row['wk13']) ? floatval($row['wk13']) : null, isset($row['wk14']) ? floatval($row['wk14']) : null, isset($row['wk15']) ? floatval($row['wk15']) : null, isset($row['wk16']) ? floatval($row['wk16']) : null);
			$results[] = $tmp;//assign to  result
		}

		//print
		$this->setContentType('js'); //returning JSON type
		echo json_encode($results);
    }
}

?>