<?php
Doo::loadCore('db/DooModel');

class Rankings extends DooModel{

    /**
     * @var int Max length is 11.
     */
    public $id;

    /**
     * @var int Max length is 11.
     */
    public $source_id;

    /**
     * @var smallint Max length is 6.
     */
    public $year;

    /**
     * @var int Max length is 11.
     */
    public $team_id;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week1;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week2;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week3;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week4;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week5;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week6;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week7;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week8;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week9;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week10;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week11;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week12;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week13;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week14;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week15;

    /**
     * @var tinyint Max length is 3.  unsigned.
     */
    public $week16;

    public $_table = 'rankings';
    public $_primarykey = 'id';
    public $_fields = array('id','source_id','year','team_id','week1','week2','week3','week4','week5','week6','week7','week8','week9','week10','week11','week12','week13','week14','week15','week16');

    public function getVRules() {
        return array(
                'id' => array(
                        array( 'integer' ),
                        array( 'maxlength', 11 ),
                        array( 'optional' ),
                ),

                'source_id' => array(
                        array( 'integer' ),
                        array( 'maxlength', 11 ),
                        array( 'notnull' ),
                ),

                'year' => array(
                        array( 'integer' ),
                        array( 'maxlength', 6 ),
                        array( 'notnull' ),
                ),

                'team_id' => array(
                        array( 'integer' ),
                        array( 'maxlength', 11 ),
                        array( 'notnull' ),
                ),

                'week1' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week2' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week3' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week4' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week5' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week6' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week7' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week8' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week9' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week10' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week11' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week12' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week13' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week14' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week15' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                ),

                'week16' => array(
                        array( 'integer' ),
                        array( 'min', 0 ),
                        array( 'maxlength', 3 ),
                        array( 'optional' ),
                )
            );
    }

}