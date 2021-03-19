<?php 
/* 
*      Robo Gallery     
*      Version: 2.8.23 - 31205
*      By Robosoft
*
*      Contact: https://robosoft.co/robogallery/ 
*      Created: 2015
*      Licensed under the GPLv2 license - http://opensource.org/licenses/gpl-2.0.php

 */

if ( ! defined( 'ABSPATH' ) ) exit;


class roboGalleryClass{

	public function __construct(  ){ 
		$this->hooks();
		$this->ajaxHooks();
	}

	public function hooks(){
		add_action( 'init', array($this, 'init') );
	}

	public function ajaxHooks(){ }

	public function init(){}
}