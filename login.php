<?php
	mysql_connect("localhost", "root", "") or 
	    	die("Error de conexión: " . mysql_error()); 
	mysql_select_db("torneos2x2db"); 
	$email=$_POST["email"];
	//ToDo cifrado de contraseña
	$password=$_POST["password"];
	$resultIDUser = mysql_query("SELECT id FROM users WHERE email='$email' AND password='$password'"); 
	if (mysql_num_rows($resultIDUser) > 0){
		while ($row = mysql_fetch_array($resultIDUser, MYSQL_ASSOC)) { 
	   		$idUser = $row["id"];
		}
		session_start();
		$_SESSION['userEmail'] = $email;
		$_SESSION['userID'] = $idUser;
		$_SESSION['tipoUser'] = "Profesor";
		header('Location: torneos.html');
	}else{
		//TODO mostrar que no existen usuarios con esa combinación
		header('Location: index.html');
	}
?>