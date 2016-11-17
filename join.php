<?php
	$nombre=$_POST["nombre"];
	$apellidos=$_POST["apellidos"];
	$estrategia=$_POST["estrategia"];
	$numSala=$_POST["numSala"];

	mysql_connect("localhost", "root", "") or 
    	die("Could not connect: " . mysql_error()); 
	mysql_select_db("torneos2x2db"); 
	$resultIDTorneo = mysql_query("SELECT idTorneo FROM salas WHERE idSala = '$numSala'"); 
	while ($row = mysql_fetch_array($resultIDTorneo, MYSQL_ASSOC)) { 
    	$idTorneo = $row["idTorneo"];
	}
	if(is_null($idTorneo)){
		die('No existe ningún torneo creado en esa sala.');
	} else {

		$resultNumParticipantes = mysql_query("SELECT COUNT(*) as numParticipantes FROM participantes WHERE idTorneo = '$idTorneo'");
		$info = mysql_fetch_assoc($resultNumParticipantes);
		$numParticipante=$info["numParticipantes"] + 1;
		if ($numParticipante > 25){
			//TODO mostrar un mensaje sin cerrar la página
			die('Lo sentimos, el torneo no admite más participantes.');
		}else{
			$insertParticipante="INSERT INTO participantes VALUES ('$nombre', '$apellidos', '$estrategia', '$idTorneo', '$numParticipante')";
			if (!mysql_query($insertParticipante))
			{
				die('Error: ' . mysql_error());
			}else{
				header('Location: participar.html');
			}
		}
	}
?>