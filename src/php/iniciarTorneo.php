<?php
	//Recibir parámetros de creación del torneo
	session_start();
	$idUser = $_SESSION["userID"];
	$tipoUser = $_SESSION["tipoUser"];
	$nombreTorneo = $_POST['nombreTorneo'];
	$sala = $_POST['numSala'];
	$reward = $_POST['reward'];
	$sucker = $_POST['sucker'];
	$defect = $_POST['defect'];
	$punishment = $_POST['punishment'];

	$conn = mysqli_connect("localhost","root","","torneos2x2db");
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	if (strcmp($tipoUser, "Profesor") == 0){
		//Comprobar que no exista un torneo en esa sala
		$selectTorneoSala = "SELECT idTorneo FROM salas WHERE idSala='$sala'";
		$result = $conn->query($selectTorneoSala);
		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		        if ($row["idTorneo"] > 0){
					echo "Ya existe un torneo creado en esa sala.";
		        } else {
		        	//Introducir en base de datos (como no finalizado)
					$insertTorneo = "INSERT INTO torneos VALUES (DEFAULT, '$nombreTorneo', '$idUser', 0, CURDATE(),'0000-00-00')";
					if ($conn->query($insertTorneo) === FALSE) {
						echo "Error: " . $insertTorneo . "<br>" . $conn->error;   
					}

					//Añadir torneo a la sala
					$idTorneo = $conn->insert_id;
					$updateSala="UPDATE salas SET idTorneo='$idTorneo' WHERE idSala='$sala'";
					if ($conn->query($updateSala) === FALSE) {
						echo "Error: " . $updateSala . "<br>" . $conn->error;
					}

					//Añadir payoffs del torneo
					$insertPayoffs = "INSERT INTO payoffs VALUES ('$idTorneo', '$reward', '$sucker', '$defect', '$punishment')";
					if ($conn->query($insertPayoffs) === FALSE) {
						echo "Error: " . $insertPayoffs . "<br>" . $conn->error;
					}

		        }
		    }
		} else {
			echo "La sala seleccionada no existe.";
		}
		$result->close();
	}else{
		echo "Debes estar logeado como profesor para crear un torneo.";
	}
	$conn->close();
	echo "Torneo creado correctamente.";
?>