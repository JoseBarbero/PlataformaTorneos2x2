<?php
/*
Plataforma Torneos 2x2
Plataforma Torneos 2x2 es una aplicación destinada a la simulación
de torneos de tipo 2x2 en una plataforma web.
Copyright (C) 2017 Jose Antonio Barbero

This file is part of Plataforma Torneos 2x2.

Plataforma Torneos 2x2 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Plataforma Torneos 2x2 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Plataforma Torneos 2x2.  If not, see <http://www.gnu.org/licenses/>.

Contact information:
Jose Antonio Barbero
   University of Burgos, Spain. 
   e-mail: jba0040@alu.ubu.es
*/
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
		header('Location: ../../index.html');
	}
?>