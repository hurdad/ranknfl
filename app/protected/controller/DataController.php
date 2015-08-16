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

		//year : required
		if (!isset($_GET['year']) && preg_match("/[0-9]{4}/", $_GET['year'])) {
			echo "Missing year parameter";
			return;
		}
		$year = $_GET['year'];

		//query mysql
		$sql = "SELECT teams.name, teams.color, avg(pre)* -1 AS pre, avg(week1)* -1 AS wk1, avg(week2)* -1  AS wk2, avg(week3)* -1  AS wk3, avg(week4)* -1 AS wk4, avg(week5)* -1 AS wk5, avg(week6)* -1  AS wk6, avg(week7)* -1  AS wk7, avg(week8)* -1  AS wk8, avg(week9)* -1  AS wk9, avg(week10)* -1  AS wk10, avg(week11)* -1 AS wk11, avg(week12)* -1  AS wk12, avg(week13)* -1  AS wk13, avg(week14)* -1  AS wk14, avg(week15)* -1  AS wk15, avg(week16)* -1  AS wk16, avg(week17)* -1  AS wk17, avg(week18)* -1  AS wk18
			FROM rankings
			LEFT JOIN teams
				ON rankings.team_id = teams.id
			WHERE source_ID in (" . join(',', $sources) . ") 
				AND teams.conference IN ('" . join("','", $confs) . "') 
				AND teams.division IN ('" . join("','", $divs) . "') 
				AND year = {$year}
			GROUP BY teams.name
			ORDER BY teams.name";

		//get return data
		$data = Doo::db()->fetchAll($sql);

		//build results array to be returned as json 
		$results = array();
		foreach($data as $row){
			$tmp = array();
			$tmp['name'] = $row['name'];
			$tmp['color'] = $row['color'];
			$tmp['data'] = array(isset($row['pre']) ? floatval($row['pre']) : null, isset($row['wk1']) ? floatval($row['wk1']) : null, isset($row['wk2']) ? floatval($row['wk2']) : null, isset($row['wk3']) ? floatval($row['wk3']) : null, isset($row['wk4']) ? floatval($row['wk4']) : null, isset($row['wk5']) ? floatval($row['wk5']) : null, isset($row['wk6']) ? floatval($row['wk6']) : null, isset($row['wk7']) ? floatval($row['wk7']) : null, isset($row['wk8']) ? floatval($row['wk8']) : null, isset($row['wk9']) ? floatval($row['wk9']) : null, isset($row['wk10']) ? floatval($row['wk10']) : null, isset($row['wk11']) ? floatval($row['wk11']) : null, isset($row['wk12']) ? floatval($row['wk12']) : null, isset($row['wk13']) ? floatval($row['wk13']) : null, isset($row['wk14']) ? floatval($row['wk14']) : null, isset($row['wk15']) ? floatval($row['wk15']) : null, isset($row['wk16']) ? floatval($row['wk16']) : null, isset($row['wk17']) ? floatval($row['wk17']) : null, isset($row['wk18']) ? floatval($row['wk18']) : null);
			$results[] = $tmp;//assign to  result
		}

		//print
		$this->setContentType('js'); //returning JSON type
		echo json_encode($results);
    }
}

?>