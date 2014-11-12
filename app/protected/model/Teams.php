<?php
Doo::loadCore('db/DooModel');

class Teams extends DooModel{

    /**
     * @var int Max length is 11.
     */
    public $id;

    /**
     * @var varchar Max length is 45.
     */
    public $name;

    /**
     * @var varchar Max length is 45.
     */
    public $city;

    /**
     * @var varchar Max length is 45.
     */
    public $color;

    /**
     * @var varchar Max length is 45.
     */
    public $conference;

    /**
     * @var varchar Max length is 45.
     */
    public $division;

    public $_table = 'teams';
    public $_primarykey = 'id';
    public $_fields = array('id','name','city','color','conference','division');

    public function getVRules() {
        return array(
                'id' => array(
                        array( 'integer' ),
                        array( 'maxlength', 11 ),
                        array( 'notnull' ),
                ),

                'name' => array(
                        array( 'maxlength', 45 ),
                        array( 'notnull' ),
                ),

                'city' => array(
                        array( 'maxlength', 45 ),
                        array( 'notnull' ),
                ),

                'color' => array(
                        array( 'maxlength', 45 ),
                        array( 'notnull' ),
                ),

                'conference' => array(
                        array( 'maxlength', 45 ),
                        array( 'optional' ),
                ),

                'division' => array(
                        array( 'maxlength', 45 ),
                        array( 'optional' ),
                )
            );
    }

}