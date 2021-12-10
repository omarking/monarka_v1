<select id="obj_municipio" name="obj_municipio" onchange="mostrarConsejos()">
<option value="">Seleccionar...</option>
<?php 
include("../model\conexion.php");
$rs_mun = $conect->query("SELECT * FROM canton WHERE idProvincia='".$_POST['idprov']."'");
while($row_mun = $rs_mun->fetch_assoc()){
?>                        
<option value="<?php echo $row_mun['idCanton']; ?>"><?php echo $row_mun['descripcion']; ?></option>
<?php } ?>                          
</select>