<?php
	mysql_connect("localhost", "root", "") or 
	    	die("Error de conexi�n: " . mysql_error()); 
	mysql_select_db("torneos2x2db"); 
	$email=$_POST["email"];
	//ToDo cifrado de contrase�a
	$password=$_POST["password"];
	$resultIDUser = mysql_query("SELECT id, nombre, apellidos, profesor FROM users WHERE email='$email' AND password='$password'");
	if (mysql_num_rows($resultIDUser) > 0){
		while ($row = mysql_fetch_array($resultIDUser, MYSQL_ASSOC)) { 
	   		$idUser = $row["id"];
	   		$profesor = $row["profesor"];
	   		$nombre = $row["nombre"];
	   		$apellidos = $row["apellidos"];
		}
		session_start();
		$_SESSION['userEmail'] = $email;
		$_SESSION['userID'] = $idUser;
		$_SESSION['userNombre'] = $nombre;
		$_SESSION['userApellidos'] = $apellidos;

		if($profesor == 1){
			$_SESSION['tipoUser'] = "Profesor";
		}else{
			$_SESSION['tipoUser'] = "Alumno";
		}
		header('Location: torneos.html');
	}else{
		//TODO mostrar que no existen usuarios con esa combinaci�n
		header('Location: index.html');
	}
?>