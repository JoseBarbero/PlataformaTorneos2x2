<?php
	
	//Obtener el número de participantes en esa sala
	$sala = $_GET['sala'];
	$fileEstrategias = fopen("Netlogo/Alumnos/Estrategias.txt", "w") or die("Unable to open file!");
	mysql_connect("localhost", "root", "") or 
	    	die("Error de conexión: " . mysql_error()); 
	mysql_select_db("torneos2x2db");

	$torneo = mysql_query("SELECT idTorneo FROM salas WHERE idSala = '$sala'");
	while ($row = mysql_fetch_array($torneo, MYSQL_ASSOC)) { 
   		$idTorneo = $row["idTorneo"]; 
   	}

	$result = mysql_query("SELECT numeroParticipante, participantes.idTorneo FROM participantes INNER JOIN salas ON participantes.idTorneo=salas.idTorneo WHERE idSala = '$sala'");
	//Meter en el txt una linea por cada participante y el random.
	while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) { 
   		$numParticipante = $row["numeroParticipante"];
   		$estrategia = "estrategiaAlumno" . $numParticipante . "\n";
		fwrite($fileEstrategias, $estrategia);
	}
	fwrite($fileEstrategias, "randomSt");
	fclose($fileEstrategias);

	//Ejecutar torneo.
	exec('php ejecutarTorneo.php');

	//Guardar resultados en la base de datos
	$csv = array_map('str_getcsv', file('Netlogo/Alumnos/Resultados.csv'));
	foreach ($csv as &$par) {
	    //Extracción del número de participante
		preg_match_all('!\d+!', $par[0], $num);
		if (!empty($num[0])){	//Comprobación para evitar estrategias establecidas de antemano
			$numPart=$num[0][0];
	    	$updatePuntuacion="UPDATE participantes SET puntuacion=$par[1] WHERE numeroParticipante=$numPart and idTorneo=$idTorneo";
			if (!mysql_query($updatePuntuacion))
			{
				die('Error: ' . mysql_error());
			}
		}
	}

	//Marcar torneo como finalizado
	$updateFinalizado="UPDATE torneos SET finalizado=1 WHERE id='$idTorneo'";
	if (!mysql_query($updateFinalizado))
	{
		die('Error: ' . mysql_error());
	}

	//Eliminar el torneo de la sala.
	$updateSala="UPDATE salas SET idTorneo=null WHERE idSala='$sala'";
	if (!mysql_query($updateSala))
	{
		die('Error: ' . mysql_error());
	}
	
	//Redirección
	header('Location: Torneos.html');
?>