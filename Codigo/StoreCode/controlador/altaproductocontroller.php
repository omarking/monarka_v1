<?php

session_start();
if(isset($_SESSION["Email"])) {
    
$identU = ($_SESSION["Iden"]);


@$proNomPro         = $_POST["txtNonProduc"];
@$proDesPro         = $_POST["txtDesProduct"];
@$proMarcaPro       = $_POST["cmbMarcaP"];
@$proCategoriaPro   = $_POST["cmbCategoriaP"];
@$proCantidadPro    = $_POST["txtCanP"];
@$proPrecioPro      = $_POST["txtPrecioU"];

@$urlTemp    =  $_FILES["foto"]["tmp_name"];
@$foto       =  $_FILES["foto"]["name"];//array de la imagen
@$foto1       =  $_FILES["foto"];//array de la imagen
$nombreFoto =  $foto1['name'];
$typeFoto   =  $foto1['type'];



if($nombreFoto != ''){
    $destino = '../img/productos/';
    $imgNombre = 'imgProd'.date('d-m-Y_Hms');// Se le agrega un npmbre aleatorio a la foto
    $imgProducto = $imgNombre .'.jpg'; // Las imagenes se almacenaran con formato jpg -> Se utiliza para
    $imgProductoI = 'img/productos/'. $imgProducto;
    $src =  $destino.$imgProducto;// alamacena el destino y ala vez el nombre de la foto
}

include("../model/conexion.php");
        $consultaaltp ="CALL psInsertProducto('$proNomPro','$proDesPro','$proPrecioPro','$proCantidadPro','$imgProductoI','$proMarcaPro','$proCategoriaPro','$identU');";           
        if(mysqli_query($conect,$consultaaltp)){
            move_uploaded_file($urlTemp,$src);
            echo'<script type="text/javascript">alert("¡¡Producto almacenado correctamente!!");window.location.href="../crudperfilusuario/perfil.php";</script>';
            exit();
        }else{
            echo'<script type="text/javascript">alert("¡¡Fallo al agregar  :( !!");window.location.href="../crudperfilusuario/perfil.php";</script>';
            exit();
        }                                       
        mysqli_close($conect); 
        
}else{
    echo "Sesion Incorrecta";
    }
//Fin de la condicion de la sesion
?>
