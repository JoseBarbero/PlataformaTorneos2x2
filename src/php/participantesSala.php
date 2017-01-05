<?php
	$sala = $_GET['sala'];
	mysql_connect("localhost", "root", "") or 
	    	die("Error de conexión: " . mysql_error()); 
	mysql_select_db("torneos2x2db");
	$resultIDUser = mysql_query("SELECT * FROM participantes INNER JOIN salas ON participantes.idTorneo=salas.idTorneo WHERE idSala = '$sala'"); 
	echo mysql_num_rows($resultIDUser) . "/25";
?>