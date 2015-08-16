<?php
Doo::loadCore('db/DooSmartModel');

class Sources extends DooSmartModel{
    
    function __construct(){    
         parent::setupModel(__CLASS__, 'memcache');
    }

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

    /**
     * @var tinyint Max length is 4.
     */
    public $selected;

    public $_table = 'sources';
    public $_primarykey = 'id';
    public $_fields = array('id','name','url','active','selected');

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
                ),
                
                'selected' => array(
                        array( 'integer' ),
                        array( 'maxlength', 4 ),
                        array( 'notnull' ),
                )
            );
    }

}