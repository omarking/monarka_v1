<?php
	include("../model\conexion.php");

	$consulta = "SELECT * FROM provincia";
	$ejecutarConsulta = mysqli_query($conect, $consulta);

	while($fila = mysqli_fetch_array($ejecutarConsulta)){
		echo"<option value='".$fila['idProvincia']."'>".$fila['descripcion']."</option>";
	}

	mysqli_close($enlace);
?>