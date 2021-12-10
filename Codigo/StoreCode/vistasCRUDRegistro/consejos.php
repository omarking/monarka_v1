<select id="obj_consejos" name="obj_consejos" onchange="mostrarBarrio()">
<option value="">Seleccionar...</option>
<?php 
include("../model\conexion.php");
$colonia = $_POST['idmun']; 

$rs_cp = $conect->query("SELECT * FROM parroquia WHERE idCanton ='$colonia'");
while($row_cp = $rs_cp->fetch_assoc()){
?>                        
<option value="<?php echo $row_cp['idParroquia']; ?>"><?php echo $row_cp['descripcion']; ?></option>
<?php } ?>                          
</select>