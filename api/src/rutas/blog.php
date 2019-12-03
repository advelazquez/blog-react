<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
$method = $_SERVER['REQUEST_METHOD'];
if($method == "OPTIONS") {
    die();
}

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

$app = new \Slim\App;

// get all
$app -> get('/api/blog', function(Request $request, Response $response){
	$sql = "SELECT * FROM posteos";
	try{
		$db = new db();
		$db = $db -> conectDB();
		$resultado = $db -> query($sql);
		if($resultado->rowCount()>0){
			$res = $resultado->fetchAll(PDO::FETCH_OBJ);
			echo json_encode($res);
		}
		else{
			echo 'no hay posteos';
		}
		$resultado = null;
		$db = null;
	}catch(PDOException $e){
		echo $e->getMessage();
	}
});


// new
$app -> post('/api/blog/nuevo', function(Request $request, Response $response){

	$titulo = $request->getParam('title');
	$descripcion = $request->getParam('description');

	$sql = "INSERT INTO posteos (title,description) VALUES (:titulo, :descripcion)";
	try{
		$db = new db();
		$db = $db -> conectDB();
		$resultado = $db -> prepare($sql);
		$resultado->bindparam(':titulo',$titulo);
		$resultado->bindparam(':descripcion',$descripcion);
		$resultado->execute();
		echo json_encode('OK');	
		$resultado = null;
		$db = null;
	}catch(PDOException $e){
		echo $e->getMessage();
	}
})


?>
