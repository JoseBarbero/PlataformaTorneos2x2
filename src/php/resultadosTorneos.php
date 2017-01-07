<?php
/*
Plataforma Torneos 2x2
Plataforma Torneos 2x2 es una aplicación destinada a la simulación
de torneos de tipo 2x2 en una plataforma web.
Copyright (C) 2017 Jose Antonio Barbero

This file is part of Plataforma Torneos 2x2.

Plataforma Torneos 2x2 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Plataforma Torneos 2x2 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Plataforma Torneos 2x2.  If not, see <http://www.gnu.org/licenses/>.

Contact information:
Jose Antonio Barbero
   University of Burgos, Spain. 
   e-mail: jba0040@alu.ubu.es
*/
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