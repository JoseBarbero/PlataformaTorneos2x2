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
	$username = $_POST['username'];
	$nombre = $_POST['nombre'];
	$apellidos = $_POST['apellidos'];
	$email = $_POST['email'];
	$password = $_POST['passwordReg'];
	$cpassword = $_POST['c_password'];
	$radio = $_POST['optradio'];

	
	$passwordHash = password_hash($password, PASSWORD_BCRYPT);
	if($password == $cpassword){
		$conn = mysqli_connect("localhost","root","","torneos2x2db");
		if (mysqli_connect_errno())
		{
			echo "Failed to connect to MySQL: " . mysqli_connect_error();
		}

		if($radio=="profesor"){
			$rol=1;
		}else{
			$rol=0;
		}

		$selectCorreo = "SELECT id FROM users WHERE email='$email'";
		$result = $conn->query($selectCorreo);
		if ($result->num_rows == 0) {
			$insertUser = "INSERT INTO users VALUES (DEFAULT, '$username', '$nombre', '$apellidos', '$email', '$passwordHash', '$rol')";
			if ($conn->query($insertUser) === FALSE) {
				echo "Error: " . $insertUser . "<br>" . $conn->error;   
			}
			echo "Usuario registrado correctamente.";
		} else {
			echo "Ya existe un usuario con ese correo electrónico.";
		}
		$conn->close();
	} else {
		echo "Las contraseñas no coinciden.";
	}
?>