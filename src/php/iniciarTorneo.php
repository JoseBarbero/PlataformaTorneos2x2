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
					echo "Torneo creado correctamente.";
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
?>