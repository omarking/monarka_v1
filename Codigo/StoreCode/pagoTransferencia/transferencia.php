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
    <title>Pago por Transferencia</title> 
    <link rel="shortcut icon" href="../img/utilidades/tiendaonlineico.ico"/>    
    <link rel="stylesheet" href="../css\estiloGeneral.css" type="text/css">
    <link rel="stylesheet" href="../fontawesome\css\all.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/styles.css" media="screen"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" language="javascript" src="ajax.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css" media="screen"/>
    <script type="text/javascript" src="../js/sweetalert2.all.min.js" charset="utf-8"></script>

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
                    <p  class="navbar-brand"><H4>¡Bienvenido!, Completa los campos para realizar tu pago.</H4></p>         
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
                        <h1>Pago por Transferencia</h1>
                    </div>
                </div>
                <form method ="POST" action ="transferencia.php">
                    <br>
                    <br>
                    <div class="card-body text-info">
                        <b>
                            <label for="inputNombre">Nombre completo:</label>
                        </b>
                        <input type="text" class="form-control" id="inputNombre" name="txtNombreU" placeholder="nombre(s) y apellidos" >
                        <br>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <b>
                                    <label for="claveInterbanc">Clave interbancaria:</label>
                                </b>
                                <input type="text" class="form-control" id="claveInterbanc" name="txtclaveInterb" placeholder="Clave interbancaria" >
                            </div>
                            <div class="form-group col-md-6">
                                <b>
                                    <label for="inputnumTarjeta">Número de tarjeta:</label>
                                </b>
                                <input type="numeTarjeta" class="form-control" name="txtnumTarjeta"  id="inputnumTarjeta" placeholder="número de tarjeta" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b>
                                    <label for="inputnomBanco">Nombre del banco:</label>
                                </b>
                                <input type="nomBanc" class="form-control" name="txtnomBanco" id="inputnomBanco">
                            </div>
                        </div>
                        <b>
                            <label for="numcuenta">Numero de Cuenta:</label>
                        </b>
                        <input type="text" class="form-control" id="numC" name="numC" placeholder="Número de Cuenta" >
                        <br>
                        <br>
                        <!--Botones-->
                        <div class="form-group col-md-12">
                            <input type="submit" class="btn boton_crear text-black nav1" name="guardar" value="Guardar">
                        </div>                           
                    </div>
                </form>
            </div>          

<!--Fin del Cuerpo de la pagina-->    

<!--Piede de pagina-->    
<footer>
    <!--<div class="container-fluid bg-dark text-white text-center p-5">-->
    <div class="container-fluid  text-black text-center p-5 nav1">
        <b>
        <p>&copy; Todos los derechos reservados :: Empresa CODEWAY 2020</p>
        </b>
    </div>
</footer>
<!-- Fin Piede de pagina-->    

        <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script>
            $(function () {
                $('[data-toggle="popover"]').popover()
            })
        </script>

</body>
</html>

<?php

    if(isset($_POST["guardar"])){

        $idUsu              = $_SESSION["Iden"];
        $nombreUsuario      = $_POST["txtNombreU"];
        $claveInterbancaria = $_POST["txtclaveInterb"];
        $numeroTarjeta      = $_POST["txtnumTarjeta"];
        $nombreBanco        = $_POST["txtnomBanco"];
        $numerCuenta        = $_POST["numC"];

        include("../model/conexion.php");
        $tarjetacobro = "SELECT * FROM transfpago";                                                                            
        $consultaDireccion = mysqli_query($conect,$tarjetacobro);                                                                         
        while($rows                = mysqli_fetch_array($consultaDireccion)){
            $idUsuario             = $rows["idUsuario"];
            $nombreUsuariot        = $rows["nombreUsuario"];
            $claveInterbancariat   = $rows["claveInterbancaria"];
            $numeroTarjetat        = $rows["numeroTarjeta"];
            $nombreBancot          = $rows["nombreBanco"];
            $numeroCuenta          = $rows["numeroCuenta"];
        } 


        
        if($idUsuario == $idUsu  && $nombreUsuariot == $nombreUsuario && $claveInterbancaria == $claveInterbancariat && $numeroTarjeta == $numeroTarjetat && $nombreBanco == $nombreBancot && $numerCuenta == $numerCuenta){
            
            echo '<script type="text/javascript">alert("¡¡error al guardarx!!");window.location.href="transferencia.php";</script>';
            exit();
        }elseif($nombreUsuario  == "" || $claveInterbancaria == "" || $numeroTarjeta == "" || $nombreBanco == "" || $numerCuenta == ""){
            
            echo '<script type="text/javascript">alert("¡¡alguno de los campos está vacío!!");window.location.href="transferencia.php";</script>';
            exit();
        }else{
            $guardado ="INSERT INTO transfpago(idUsuario,nombreUsuario,claveInterbancaria,numeroTarjeta,nombreBanco,numeroCuenta)
            VALUES('$idUsu','$nombreUsuario','$claveInterbancaria','$numeroTarjeta','$nombreBanco','$numerCuenta')";
            if(mysqli_query($conect, $guardado)){
                echo '<script type="text/javascript">
                //alert("¡¡tarjeta de cobro almacenada correctamente!!");
                //window.location.href="../crudperfilusuario/perfil.php";
                Swal.fire({
                    title: "Listo",
                    text: "¡¡Tarjeta de cobro almacenada correctamente!!",
                    type: "success",
                    showCancelButton: true,
                    confirmButtonText: "ok",
                    cancelButtonText: "cancel",
                    allowOutsideClick: false
                }).then((result) => {
                    if (result.dismiss !== "cancel") {
                        window.location.href="../crudperfilusuario/perfil.php";
                    }
                })
                </script>';
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
    
}else{
    echo "sesion incorrecta";
}
?>

