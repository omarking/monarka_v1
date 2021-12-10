<select id="obj_provincia" name="obj_provincia" onchange="mostrarMunicipios()">
<option value="0">Seleccionar...</option>
<?php 
include("../model\conexion.php");
$rs_prov = $conect->query("SELECT * FROM provincia");
while($row_prov = $rs_prov->fetch_assoc()){
?>                        
<option value="<?php echo $row_prov['idProvincia']; ?>"><?php echo $row_prov['descripcion']; ?></option>
<?php } ?>                          
</select>