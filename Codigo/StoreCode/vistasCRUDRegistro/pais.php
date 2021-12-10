<?php
	include("../model\conexion.php");

	$consulta = "SELECT * FROM canton";
	$ejecutarConsulta = mysqli_query($conect, $consulta);
	
	echo'<select name="select" id="select" class="col-4 form-control">';
		while($fila=mysqli_fetch_array($ejecutarConsulta)){
			if($fila['idCanton']==$_GET['c']){
				echo "<option value='".$fila['idCanton']."'>".$fila['descripcion']."</option>";
			}
		}

	echo'</select>';
?>