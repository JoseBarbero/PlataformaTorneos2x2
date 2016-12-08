<?php
	$conn = mysqli_connect("localhost","root","","torneos2x2db");
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	$selectTorneos = "SELECT id, nombre, fechaFin FROM torneos WHERE finalizado=1 ORDER BY fechaFin";
	$result = $conn->query($selectTorneos);

	$divHtml ='';
	while($row = $result->fetch_assoc()) {
		$divHtml .=	'<a class="list-group-item">';
		$divHtml .=	'<div class="panel panel-default">';
		$divHtml .=	'<div class="panel-heading">' . $row["nombre"] . " - Fecha de finalización: " . $row["fechaFin"] . '</div>';
		$divHtml .=	'<table class="table">';
		$divHtml .=	'<thead>';
		$divHtml .=	'<tr>';
      	$divHtml .=	'<th>Puntuación</th>';
      	$divHtml .=	'<th>Estrategia</th>';
        $divHtml .=	'<th>Nombre</th>';
        $divHtml .=	'<th>Apellidos</th>';
        $divHtml .=	'<th>Email</th>';
		$divHtml .=	'</tr>';
		$divHtml .=	'</thead>';
		$divHtml .=	'<tbody>';
		$idTorneo = $row["id"];
		$selectParticipantes = "SELECT nombre, apellidos, nombreEstrategia, correo, puntuacion FROM participantes WHERE idTorneo='$idTorneo' ORDER BY puntuacion DESC";
		$result2 = $conn->query($selectParticipantes);
		while($row2 = $result2->fetch_assoc()) {
			$divHtml .=	'<tr>';
			$divHtml .=	'<td>' . $row2["puntuacion"] . '</td>';
			$divHtml .=	'<td>' . $row2["nombreEstrategia"] . '</td>';
			$divHtml .=	'<td>' . $row2["nombre"] . '</td>';
			$divHtml .=	'<td>' . $row2["apellidos"] . '</td>';
			$divHtml .=	'<td>' . $row2["correo"] . '</td>';
			$divHtml .=	'</tr>';
		}
		$divHtml .=	'</tbody>';
		$divHtml .=	'</table>';
		$divHtml .=	'</div>';
		$divHtml .=	'</a>';
	}
	echo $divHtml;
	$conn->close();
?>