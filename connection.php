<?php

require 'vendor/autoload.php';
session_start();

if (isset($_ENV['CLEARDB_DATABASE_URL'])) {
     $db = \atk4\data\Persistence::connect($_ENV['CLEARDB_DATABASE_URL']);
 } else {
     $db = \atk4\data\Persistence::connect('mysql:host=127.0.0.1;dbname=horoscope;charset=utf8', 'root', '');
 }

class Answer extends \atk4\data\Model {
	public $table = 'main';
function init() {
	parent::init();
	$this->addField('code');
  $this->addField('answer');
}
}
