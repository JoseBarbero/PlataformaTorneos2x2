<?php
$con= new mysqli('localhost', 'root', '', 'torneos2x2db');
if ($con->connect_error){
	die('Fallo de conexión');
}else{
	$email=$_POST["email"];
	$password=$_POST["password"];
	
	$sql = "SELECT id FROM users WHERE email='$email' AND password='$password'";
	$result = $con->query($sql);
	if ($result->num_rows>0){
		header('Location: torneos.html');
	}else{
		//TODO mostrar que no existen usuarios con esa combinaci�n
		header('Location: index.html');
	}
}
?>