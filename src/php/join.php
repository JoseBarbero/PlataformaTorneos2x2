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
	$nombre=$_POST["nombre"];
	$apellidos=$_POST["apellidos"];
	$email=$_POST["email"];
	$estrategia=$_POST["estrategia"];
	$numSala=$_POST["numSala"];
	session_start();
	$_SESSION['sala']=$numSala;
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
			echo ('Lo sentimos, el torneo no admite más participantes.');
		}else{
			$insertParticipante="INSERT INTO participantes VALUES ('$nombre', '$apellidos', '$estrategia', '$idTorneo', '$numParticipante', '$email', 0)";
			if (!mysql_query($insertParticipante))
			{
				die('Error: ' . mysql_error());
			}else{
				session_start();
				$_SESSION['participante'] = $numParticipante;
				header('Location: ../participar.html');
			}
		}
	}
?>