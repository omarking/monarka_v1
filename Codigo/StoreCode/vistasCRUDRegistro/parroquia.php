<?php
	include("../model\conexion.php");

	$consulta1 = "SELECT * FROM parroquia";
	$ejecutarConsulta = mysqli_query($conect, $consulta1);
	
	echo'<select name="selectt" id="selectt" class="col-4 form-control">';
		while($fila=mysqli_fetch_array($ejecutarConsulta)){
			if($fila['idParroquia']==$_GET['d']){
				echo "<option value='".$fila['idParroquia']."'>".$fila['descripcion']."</option>";
			}
		}

	echo'</select>';
?>