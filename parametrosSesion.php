<?php
	session_start();
	$parametroSesion = $_GET['parametroSesion'];
	if($parametroSesion == "nombre"){
		if(array_key_exists ( "userNombre" , $_SESSION)) {
			echo $_SESSION['userNombre'];
		} else {
			echo "";
		}
	}elseif($parametroSesion == "apellidos"){
		if(array_key_exists ( "userApellidos" , $_SESSION)) {
			echo $_SESSION['userApellidos'];
		} else {
			echo "";
		}
	}elseif($parametroSesion == "email"){
		if(array_key_exists ( "userEmail" , $_SESSION)) {
			echo $_SESSION['userEmail'];
		} else {
			echo "";
		}
	}
?>