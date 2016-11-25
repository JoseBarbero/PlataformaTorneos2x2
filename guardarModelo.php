<?php

	if(!empty($_POST['data'])){
	$data = $_POST['data'];
	session_start();
	$numParticipante = $_SESSION['participante'];
	$fname = "ModeloAlumno" . $numParticipante . ".nlogo";

	$file = fopen("Netlogo/Alumnos/Modelos_Alumnos/" .$fname, 'w');
	fwrite($file, $data);
	fclose($file);
	}	
?>