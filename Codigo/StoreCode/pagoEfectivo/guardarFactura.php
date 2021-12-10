<?php

session_start();
if(isset($_SESSION["Email"])) {
    
    if(isset($_POST["submits"])){

        $idUsu              = $_SESSION["Iden"];
        $nombre             = $_POST["nombre"];
        $ruc                = $_POST["ruc"];
        $cedula             = $_POST["cedula"];

        /*echo $idUsu;
        echo $nombre ;
        echo $ruc;
        echo $cedula;*/       

        include("../model\conexion.php"); 
        $factura = "SELECT * FROM tablacomprador;";                                                                              
        $consultaT = mysqli_query($conect,$factura);                                                                         
        while($rows                = mysqli_fetch_array($consultaT)){
            $idUsuario             = $rows["idUsuario"];
            $nombreu               = $rows["Nombrecompleto"];
            $rucc                  = $rows["RUC"];
            $cedulaa               = $rows["Cedula"];
        }
        
        if($idUsuario == $idUsu  && $nombre == $nombreu && $ruc== $rucc && $cedula){
            echo '<script type="text/javascript">alert("¡¡error al guardarx!!");window.location.href="efectivo.php";</script>';
            exit();
        }elseif($nombre  == "" || $nombre == "" || $ruc == "" || $cedula == ""){
            
            echo '<script type="text/javascript">alert("¡¡alguno de los campos está vacío!!");window.location.href="efectivo.php";</script>';
            exit();

        }else{
            $guardado ="INSERT INTO tablacomprador(idUsuario,Nombrecompleto,RUC,Cedula)
            VALUES('$idUsu','$nombre','$ruc','$cedula');";
            if(mysqli_query($conect, $guardado)){
                echo '<script type="text/javascript">alert("¡¡tarjeta de cobro almacenada correctamente!!");window.location.href="efectivo.php";</script>';
                exit();
            }else{
                echo "error: ".$guardado."<br>". mysqli_error($conect);
            }
        }
        mysqli_close($conect);

    
        
        

        /*echo $idUsuario;
        echo $nombreu;
        echo $rucc;
        echo $cedulaa;*/
        
        
    }
}else{
    echo "Sesion Incorrecta";
}

?>