<?php
$con= new mysqli('localhost', 'root', '', 'torneos2x2db');
if ($con->connect_error){
	die('Fallo de conexiÃ³n');
}else{
	$email=$_POST["email"];
	$password=$_POST["password"];
	//TODO CIFRADO DE CONTRASEÑA
	$sql = "SELECT id FROM users WHERE email='$email' AND password='$password'";
	$result = $con->query($sql);
	if ($result->num_rows>0){
		header('Location: torneos.html');
	}else{
		//TODO mostrar que no existen usuarios con esa combinación
		header('Location: index.html');
	}
}
?>