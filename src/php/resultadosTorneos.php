<?php
	session_start();
	$conn = mysqli_connect("localhost","root","","torneos2x2db");
	$user = $_GET['user'];
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	if($user == 1){
		$mail = $_SESSION['userEmail'];
		$selectTorneos = "SELECT * FROM participantes INNER JOIN torneos ON participantes.idTorneo=torneos.id WHERE finalizado=1 AND correo='$mail'";
	} else {
		$selectTorneos = "SELECT id, nombre, fechaFin FROM torneos WHERE finalizado=1 ORDER BY fechaFin";
	}
	$result = $conn->query($selectTorneos);

	$divHtml ='';
	while($row = $result->fetch_assoc()) {
		$tempHtml = '';
		$tempHtml .='<a class="list-group-item">';
		$tempHtml .='<div class="panel panel-default">';
		$tempHtml .=	'<div class="panel-heading">' . $row["nombre"] . " - Fecha de finalización: " . $row["fechaFin"] . '</div>';
		$tempHtml .='<table class="table">';
		$tempHtml .='<thead>';
		$tempHtml .='<tr>';
      	$tempHtml .='<th>Puntuación</th>';
      	$tempHtml .='<th>Estrategia</th>';
        $tempHtml .='<th>Nombre</th>';
        $tempHtml .='<th>Apellidos</th>';
        $tempHtml .='<th>Email</th>';
		$tempHtml .='</tr>';
		$tempHtml .='</thead>';
		$tempHtml .='<tbody>';
		$idTorneo = $row["id"];
		$selectParticipantes = "SELECT nombre, apellidos, nombreEstrategia, correo, puntuacion FROM participantes WHERE idTorneo='$idTorneo' ORDER BY puntuacion DESC";
		$result2 = $conn->query($selectParticipantes);
		$torneoVacio = true;
		while($row2 = $result2->fetch_assoc()) {
			$torneoVacio = false;
			$tempHtml .='<tr>';
			$tempHtml .='<td>' . $row2["puntuacion"] . '</td>';
			$tempHtml .='<td>' . $row2["nombreEstrategia"] . '</td>';
			$tempHtml .='<td>' . $row2["nombre"] . '</td>';
			$tempHtml .='<td>' . $row2["apellidos"] . '</td>';
			$tempHtml .='<td>' . $row2["correo"] . '</td>';
			$tempHtml .='</tr>';
		}
		$tempHtml .='</tbody>';
		$tempHtml .='</table>';
		$tempHtml .='</div>';
		$tempHtml .='</a>';
		if(!$torneoVacio){
			$divHtml .= $tempHtml;
		}
	}
	echo $divHtml;
	$conn->close();
?>