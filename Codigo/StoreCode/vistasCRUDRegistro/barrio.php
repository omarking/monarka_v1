<select id="obj_barrio" name="obj_barrio">
<option value="">Seleccionar...</option>
<?php 
include("../model\conexion.php");
$calle = $_POST['idbarrio']; 
$barrio = $conect->query("SELECT * FROM barrio WHERE idParroquia='$calle'");
while($row_br = $barrio->fetch_assoc()){
?>                        
<option value="<?php echo $row_br['idBarrio']; ?>"><?php echo $row_br['descripcion']; ?></option>
<?php } ?>                          
</select>