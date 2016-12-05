<?php
	$username = $_POST['username'];
	$nombre = $_POST['nombre'];
	$apellidos = $_POST['apellidos'];
	$email = $_POST['email'];
	$password = $_POST['passwordReg'];
	$cpassword = $_POST['c_password'];
	$radio = $_POST['optradio'];
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
			$insertUser = "INSERT INTO users VALUES (DEFAULT, '$username', '$nombre', '$apellidos', '$email', '$password', '$rol')";
			if ($conn->query($insertUser) === FALSE) {
				echo "Error: " . $insertUser . "<br>" . $conn->error;   
			}
		} else {
			echo "<script type='text/javascript'>alert('Ya existe un usuario con ese correo electrónico.')</script>";
		}
	} else {
		echo "<script type='text/javascript'>alert('Las contraseñas no coinciden.')</script>";
	}
?>