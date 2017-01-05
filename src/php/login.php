<?php
	mysql_connect("localhost", "root", "") or 
	    	die("Error de conexión: " . mysql_error()); 
	mysql_select_db("torneos2x2db"); 
	$email=$_POST["email"];
	$password=$_POST["password"];
	$resultIDUser = mysql_query("SELECT id, nombre, apellidos, profesor, password FROM users WHERE email='$email'");
	if (mysql_num_rows($resultIDUser) > 0){
		while ($row = mysql_fetch_array($resultIDUser, MYSQL_ASSOC)) { 
	   		$idUser = $row["id"];
	   		$profesor = $row["profesor"];
	   		$nombre = $row["nombre"];
	   		$apellidos = $row["apellidos"];
	   		if (password_verify($password, $row["password"])){
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
				header('Location: ../torneos.html');
			} else {
			echo "Nombre de usuario o contraseña incorrectos.";
			}
		}
	}else{
		echo "Nombre de usuario incorrecto.";
		header('Location: ../index.html');
	}
?>