<?php

	if(!empty($_POST['data'])){
	$data = $_POST['data'];
	session_start();
	$numParticipante = $_SESSION['participante'];
	$sala = $_SESSION['sala'];
	$fname = "ModeloAlumno" . $numParticipante . ".nlogo";

	$file = fopen("Netlogo/Alumnos/Sala" . $sala . "/" .$fname, 'w');
	fwrite($file, $data);
	fclose($file);
	}
?>