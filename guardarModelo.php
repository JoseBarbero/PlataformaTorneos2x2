<?php

	if(!empty($_POST['data'])){
	$data = $_POST['data'];
	$fname = mktime() . ".nlogo"; //Todo Guardar Con el n�mero de participante

	$file = fopen("Netlogo/Alumnos/Modelos_Alumnos/" .$fname, 'w');
	fwrite($file, $data);
	fclose($file);
	}	
?>