<?php
	$sala = $_GET['sala'];
	$conn = mysqli_connect("localhost","root","","torneos2x2db");
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$selectIDUser = "SELECT * FROM participantes INNER JOIN salas ON participantes.idTorneo=salas.idTorneo WHERE idSala = '$sala'";
	$result = $conn->query($selectIDUser);
	echo $result->num_rows . "/25";
?>