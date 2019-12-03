<?php

class db{
	private $dbHost = 'localhost';
	private $dbUser = 'root';
	private $dbPass = '';
	private $dbName = 'prueba';

	public function conectDB(){
		$mySqlConnect = "mysql:host=$this->dbHost;dbname=$this->dbName";
		$dbConection = new PDO($mySqlConnect,$this->dbUser, $this->dbPass);
		$dbConection-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		return $dbConection;
	}
}

?>