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
	$conn = mysqli_connect("localhost","root","","torneos2x2db");
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	//Obtener el número de participantes en esa sala y comprobar que el usuario es el creador
	session_start();
	$sala = $_GET['sala'];
	$user = $_SESSION['userID'];
	$fileEstrategias = fopen("../../Netlogo/Alumnos/Estrategias.txt", "w") or die("Unable to open file!");



	//Pasar estrategias de la sala que corresponda al directorio de Netlogo
	for ($i = 1; $i <= 25; $i++) {
    	copy("../../Netlogo/Alumnos/Sala" . $sala ."/ModeloAlumno" . $i . ".nlogo", "../../Netlogo/Alumnos/Modelos_Alumnos/ModeloAlumno" . $i . ".nlogo");
	}


	$selectTorneo = "SELECT idTorneo FROM salas WHERE idSala = '$sala'";
	$result = $conn->query($selectTorneo);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
   			$idTorneo = $row["idTorneo"];
   		}
   	}

   	$idUserCreador = 0;
   	$selectCreador = "SELECT idUserCreador FROM torneos WHERE id = '$idTorneo'";
   	$result = $conn->query($selectCreador);
   	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
   			$idUserCreador = $row["idUserCreador"];
   		}
   	}
   	if($user == $idUserCreador){
   		$selectNumeroParticipante = "SELECT numeroParticipante, participantes.idTorneo FROM participantes INNER JOIN salas ON participantes.idTorneo=salas.idTorneo WHERE idSala = '$sala'";
		$result = $conn->query($selectNumeroParticipante);
		
		//Meter en el txt una linea por cada participante y el random.
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
		   		$numParticipante = $row["numeroParticipante"];
		   		$estrategia = "estrategiaAlumno" . $numParticipante . "\n";
				fwrite($fileEstrategias, $estrategia);
			}
		}
		fwrite($fileEstrategias, "randomSt");
		fclose($fileEstrategias);
		$result->close();

		//Escribir los payoffs en el archivo de lectura
		$selectPayoffs = "SELECT * FROM payoffs WHERE idTorneo = '$idTorneo'";
	   	$resultPayoffs = $conn->query($selectPayoffs);
	   	$row = $resultPayoffs->fetch_assoc();

	   	$filePayoffs = fopen("../../Netlogo/Alumnos/Payoffs.txt", "w") or die("Unable to open file!");
	   	fwrite($filePayoffs, $row["mutualcoop"] . "\n");
		fwrite($filePayoffs, $row["suckerspayoff"] . "\n");
		fwrite($filePayoffs, $row["mutualdefect"] . "\n");
		fwrite($filePayoffs, $row["temptationtodefect"] . "\n");
		fclose($filePayoffs);

		//Ejecutar torneo.
		$command = "cd .. && cd .. && ./Torneo";
		exec ($command);

		//Guardar resultados en la base de datos
		$csv = array_map('str_getcsv', file('../../Netlogo/Alumnos/Resultados.csv'));
		foreach ($csv as &$par) {
		    //Extracción del número de participante
			preg_match_all('!\d+!', $par[0], $num);
			if (!empty($num[0])){	//Comprobación para evitar estrategias establecidas de antemano
				$numPart=$num[0][0];
				$updatePuntuacion="UPDATE participantes SET puntuacion=$par[1] WHERE numeroParticipante=$numPart and idTorneo=$idTorneo";
				if ($conn->query($updatePuntuacion) === FALSE) {
				   echo "Error updating record: " . $conn->error;
				}
			}
		}

		//Marcar torneo como finalizado
		$updateFinalizado="UPDATE torneos SET finalizado=1, fechaFin=CURDATE() WHERE id='$idTorneo'";
		if ($conn->query($updateFinalizado) === FALSE) {
			echo "Error updating record: " . $conn->error;
		}

		//Eliminar el torneo de la sala.
		$updateSala="UPDATE salas SET idTorneo=null WHERE idSala='$sala'";
		if ($conn->query($updateSala) === FALSE) {
			echo "Error updating record: " . $conn->error;
		}
		echo ("El torneo ha finalizado correctamente.");
	}elseif($idUserCreador == 0){
		echo ("No existe ningún torneo en esa sala actualmente.");
	}else{
		echo ("Solo el creador de un torneo puede finalizarlo.");
	}
	$conn->close();
?>