<?php
session_start();
if(isset($_SESSION["Email"])){
?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">       
    <title>Facturacion</title> 
    <link rel="shortcut icon" href="../img/utilidades/tiendaonlineico.ico"/>    
    <link rel="stylesheet" href="../css\estiloGeneral.css" type="text/css">
    <link rel="stylesheet" href="../fontawesome\css\all.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/styles.css" media="screen"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" language="javascript" src="ajax.js"></script>

    </head>

    <body>
        <!--NAV-->
        <!-- <nav class="navbar navbar-dark bg-dark text-white"> -->
        <nav class="navbar  text-black nav1">
            <div class="container-fluid p-7">        
                <div class="col-sm-2">                
                    <h2 class="logo"> Monarka</h2>
                    </div> 
                    <div class="col-sm-5 text-wrap">
                        <p  class="navbar-brand"><H4>¡Bienvenido!, Completa los campos para realizar tu Facturacion.</H4></p>         
                </div>
                <div class="col-sm-5">
                    <ul class="nav text-black">
                        <li class="nav-item">
                        </li>
                        <li class="nav-item">    
                        <a class="nav-link active cerrar" aria-current="page" href="../index.php">Cerrar Sesión </a>                    
                        </li>
                        <li class="nav-item, logo">                    
                        <a class="nav-link active  text-info, logo" aria-current="page" href="#">¿Aun no cuentas con una cuenta?, Créala Aquí!!!</a>
                        </li>                    
                    </ul>
                </div>
            </div>
        </nav>
        
        <!--FIN NAV-->

        <!--Cuerpo de la pagina-->
        <div class="container">
                <div class="card border-info " >
                    <div class="card-header row">
                        <div class="col-sm-2">
                            <h2 class="logo"> Monarka</h2>                
                        </div>
                    <div class="col-sm-10 text-wrap, logo">
                        <h1>Facturacion</h1>
                    </div>
                </div>

                <form method ="POST" action ="facturacion.php">
                    <div class="card-body text-info">
                        <!--Inicio del formulario-->
                        <!--<form class="text-dark" action="" method="post" onsubmit="return validarAltaUsuario();">-->                              
                        <!--Nombre-->
                        <div class="form-row">
                            <div class="form-group col-md-2">
                        </div>
                        <div class="form-group col-md-4">
                            <b>
                                <label for="inputNombre">Nombre completo:</label>
                            </b>
                            <input type="text" class="form-control" id="inputNombre" name="nomComp" placeholder="nombre(s) y apellidos" >
                        </div>
                        <div class="form-group col-md-4">
                            <b>
                                <label for="ruc">RUC</label>
                            </b>
                            <input type="text" class="form-control" id="claveInterbanc" name="ruc" placeholder="RUC" >
                        </div>
                                
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                    </div>
                    <div class="form-group col-md-8">
                        <b>
                            <label for="inputnumTarjeta">Cedula</label>
                        </b>
                        <!--<input type="numeTarjeta" class="form-control" name="txtnumTarjeta"  id="inputnumTarjeta" placeholder="number">-->
                        <input type="numeTarjeta" class="form-control" name="cedula"  id="inputnumTarjeta" placeholder="Cedula" >
                    </div>                        
                        <div class="form-group col-md-2">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-2">
                    </div>

                    <!---->
                                
                                <div class="col-md-2">
                                </div>


                                <b>
                        <div class="row justify-content-around">
                            <div class="col-7">
                                <input type="submit" class="btn boton_crear text-black, nav1"  name="factura" value="Generar Factura">
                            </div>

                    </b>
                            </div>          
                        </div>
                    </div>

</body>
    </html>


<?php

    if(isset($_POST["factura"])){

        $idCom      = $_SESSION["IdCom"];
        $nomCom     = $_POST["nomComp"];
        $ruc        = $_POST["ruc"];
        $cedula     = $_POST["cedula"];

        include("../model/conexion.php");
        $factabla = "SELECT * FROM tablacomprador";                                                                            
        $consultafac = mysqli_query($conect,$factabla);                                                                         
        while($rows                 = mysqli_fetch_array($consultafac)){
            $idComprador            = $rows["idComprador"];
            $nombreUsuariot         = $rows["Nombrecompleto"];
            $rucc                   = $rows["RUC"];
            $cedulacom              = $rows["Cedula"];
        } 


        
        if($idComprador == $idCom  && $nombreUsuariot == $nomCom && $rucc == $ruc && $cedulacom == $cedula){
            
            echo '<script type="text/javascript">alert("¡¡error al guardarx!!");window.location.href="facturacion.php";</script>';
            exit();
        }elseif($nomCom  == "" || $ruc == "" || $cedula == ""){
            
            echo '<script type="text/javascript">alert("¡¡alguno de los campos está vacío!!");window.location.href="transferencia.php";</script>';
            exit();
        }else{
            $guardado ="INSERT INTO tablacomprador(idComprador,Nombrecompleto,RUC,Cedula)
            VALUES('$idCom','$nomCom','$ruc','$cedula')";
            if(mysqli_query($conect, $guardado)){
                echo '<script type="text/javascript">alert("¡¡tarjeta de cobro almacenada correctamente!!");window.location.href="../crudperfilusuario/perfil.php";</script>';
                exit();
            }else{
                echo "error: ".$guardado."<br>". mysqli_error($conect);
            }
        }
        mysqli_close($conect);

        /*echo $idUsu;
        echo $nombreUsuario;
        echo $claveInterbancaria;
        echo $numeroTarjeta;
        echo $nombreBanco;*/
    
    
    }
}
?>
