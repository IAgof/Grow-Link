<?php
/**
* Main Advertikon Helper Class
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/
class Advertikon_Helper_Main extends Model{

	/**
	*
	*
	*
	*/
	protected $_log;

	/**
	* Merge aray Targer with array With
	*
	* @param Array $target
	* @param Array $with
	* @param boolean $rewrite
	*/
	public function merge( Array &$target , Array $with , $rewrite = false ){
        foreach( $with as $key => $value )
            if( $rewrite || ! isset( $target[ $key ] ) )
                $target[ $key ] = $value;
    }

    /**
    * Purge path string
    *
    * @param string $path
    * @return string
    */
    public function sanitizePath( $path ){
    	return str_replace( '//' , '/' , $path );
    }

	/**
	* Extract params to new array
	*
	* @param Array $from
	* @param Array $fields
	*/
	public function extractParam( $from , $fields ) {
		$return = array();
		foreach( $fields as $name ) {
			if( array_key_exists( $name , $from ) ) {
				$return[ $name ] = $from[ $name ];
			}
		}
		return $return;
	}

	/**
	* Translate
	*
	* @param string $text
	* @return string
	*/
	public function __( $text ){
		return $this->language->get( $text );
	}

	

	/**
	*
	*
	*
	*/
	public function logException( $msg ){
		
	}
}
?>