<?php
Doo::loadCore('db/DooModel');

class Sources extends DooModel{

    /**
     * @var int Max length is 11.
     */
    public $id;

    /**
     * @var varchar Max length is 45.
     */
    public $name;

    /**
     * @var text
     */
    public $url;

    /**
     * @var tinyint Max length is 4.
     */
    public $active;

    public $_table = 'sources';
    public $_primarykey = 'id';
    public $_fields = array('id','name','url','active');

    public function getVRules() {
        return array(
                'id' => array(
                        array( 'integer' ),
                        array( 'maxlength', 11 ),
                        array( 'optional' ),
                ),

                'name' => array(
                        array( 'maxlength', 45 ),
                        array( 'notnull' ),
                ),

                'url' => array(
                        array( 'optional' ),
                ),

                'active' => array(
                        array( 'integer' ),
                        array( 'maxlength', 4 ),
                        array( 'notnull' ),
                )
            );
    }

}