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
	if(!empty($_POST['data'])){
	$data = $_POST['data'];
	session_start();
	$numParticipante = $_SESSION['participante'];
	$sala = $_SESSION['sala'];
	$fname = "ModeloAlumno" . $numParticipante . ".nlogo";

	$file = fopen("../../Netlogo/Alumnos/Sala" . $sala . "/" .$fname, 'w');
	fwrite($file, $data);
	fclose($file);
	}
?>