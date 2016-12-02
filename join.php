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
		$resultNumParticipantes = mysql_query("SELECT * FROM participantes WHERE idTorneo = '$idTorneo'");
		$numParticipante=mysql_num_rows($resultNumParticipantes) + 1;
		if ($numParticipante > 25){
			//TODO mostrar un mensaje sin cerrar la página
			die('Lo sentimos, el torneo no admite más participantes.');
		}else{
			$insertParticipante="INSERT INTO participantes VALUES ('$nombre', '$apellidos', '$estrategia', '$idTorneo', '$numParticipante', 'correo', 0)";
			if (!mysql_query($insertParticipante))
			{
				die('Error: ' . mysql_error());
			}else{
				session_start();
				$_SESSION['participante'] = $numParticipante;
				header('Location: participar.html');
			}
		}
	}
?>