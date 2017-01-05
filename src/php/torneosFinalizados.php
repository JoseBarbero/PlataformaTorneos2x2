<?
	$conn = mysqli_connect("localhost","root","","torneos2x2db");
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	$selectTorneos = "SELECT nombre, fechaFin FROM torneos WHERE finalizado=1";
	$result = $conn->query($selectTorneos);

	$divHtml ='';
	while($row = $result->fetch_assoc()) {
		$divHtml .= '<a href="resultados.html" class="list-group-item">' . $row["nombre"] . " - " . $row["fechaFin"] . '</a>';
	}
	echo $divHtml;
	$conn->close();
?>