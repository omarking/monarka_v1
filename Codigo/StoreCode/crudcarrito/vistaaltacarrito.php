<?php
//Inicio de La sesion
    session_start();                  
    include("encriptacion.php"); 
    include("mostrarcarrito.php");  
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">       
    <title>Carrito de Compras</title> 
    <link rel="shortcut icon" href="../img/utilidades/tiendaonlineico.ico"/>                                        
    <link rel="stylesheet" href="../css\estiloproducto.css" type="text/css">
    <link rel="stylesheet" href="../fontawesome\css\all.css" type="text/css">      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css" media="screen"/>
    <script type="text/javascript" src="../js/sweetalert2.all.min.js" charset="utf-8"></script>
    
</head>
<body>    
<!--NAV-->
<!-- <nav class="navbar navbar-dark bg-dark text-black"> -->
    <nav class="navbar  text-black, letras">
        <div class="container-fluid p-7">        
            <div class="col-sm-2">            
            <h2 class="logo"> Monarka</h2> 
            </div>                
            <div class="col-sm-5 text-wrap, letras">             
                <p  class="navbar-brand"><H2>Carrito de Compras</H2></p>
                        
            </div>
            <div class="col-sm-5">
                <ul class="nav text-black">
                    <li class="nav-item">
                    <a class="nav-link active  text-light, logo" aria-current="page" href="../home/home.php">Home</a>
                    </li>
                    <?php
                    if(isset($_SESSION["Email"]) == '') {   
                        echo '<a class="nav-link active cerrar" aria-current="page" href="../home/home.php">Cerrar Sesión </a> ';                  
                    }else if(isset($_SESSION["Email"])) { 
                        ?>
                    <li class="nav-item">
                    <a class="nav-link active cerrar" aria-current="page" href="../login/cerrarSesion.php">Cerrar Sesion</a>                    
                    </li>
                    <li class="nav-item">                                        
                        <?php
                                        $identificador = ($_SESSION["Iden"]);
                                        //$identificador = 11;
                                        //echo ; 
                                        include("../model/conexion.php");                
                                        $sqlimgP="CALL psImagenUsuarioPerfil('$identificador');";
                                        $resultadosqlimgP=mysqli_query($conect,$sqlimgP);                                                             
                                        while($row=mysqli_fetch_row($resultadosqlimgP)){
                                            //CALL psImagenUsuarioPerfil(20);
                                ?>  
                                        <div class="row">
                                            <div class="col-md-3">
                                                <img class="rounded-circle" src="<?php echo '../crudperfilusuario/'.$row[0];?>" alt=".." width="50" height="50">  
                                            </div>
                                            <div class="col-md-9">
                                            <a class="nav-link active  text-info" aria-current="page" href="#"> <?php echo ($_SESSION["Nombre"]);?></a> 
                                            </div>
                                        </div>
                        <?php                
                            }
                            mysqli_close($conect);                                          
                        ?>                                                                                   
                    </li>  
                        <?php 
                            }else{
                            echo "Sesion Incorrecta";
                            }
                        ?> 
                   <li class="nav-item">                    
                                <a style="color:#ff9800; margin-right:10px; margin-top:10px" aria-current="page" href="..crudcarrito/vistaaltacarrito.php">
                                    <i class="fas fa-cart-plus fa-3x "></i>Carrito(<?php echo (empty($_SESSION['CARRITO']))?0:count($_SESSION['CARRITO']);?>)</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active  text-light" aria-current="page" href="../home/home.php"><i class="fas fa-undo-alt"></i>   Regresar</a>
                    </li>              
                </ul>
            </div>
        </div>
    </nav>
<!--FIN NAV-->
    <br>
    <br>
<!--Cuerpo de la pagina-->
    
<div class="container letras">
     
    <h3>Lista  Carrito de Compras</h3>
   
<!-- TABLE CARRITO 1-->    
<table>
   <thead class="text-black, letras" style="background: #ffb300;">
    <tr>
    <tr> 
        <th width="40%">Nombre</th>                
        <th width="15%" class="text-left">Cantidad</th>
        <th width="15%" class="text-left">Vendedor</th>
        <th width="15%" class="text-left">Precio</th>
        <th width="15%" class="text-left">Total</th>
        <th width="15%"></th>
        <th width="15%"></th>     
    </tr>
  <tbody>
   <?php 
    $total = 0;

    if(!empty($_SESSION['CARRITO'])){

    $contador = count($_SESSION['CARRITO']);    
    if($contador == 0){
        unset($_SESSION['CARRITO']);
    }    

    foreach ($_SESSION['CARRITO'] as $rows) :?>
   
    <tr class="item_row">
        <td> <?php  echo $rows['nombre']; ?></td>
        <td> <?php echo ++$total;?></td>
        <td> <?php echo $rows['precio']; ?></td>
        <td> <?php echo number_format($rows['precio']*$rows['cantidad'],2)?></td>
    
        
        <!--<td><form action="" method="post"><button class="btn btn-danger" type="submit" name="btnAccion" value="EliminarUnset">Eliminar unsets</button></form></td>-->
        <td><form action="" method="post"><input type="hidden" name="id" value="<?php echo openssl_encrypt($rows['id'],COD,KEY); ?>"><button class="btn btn-danger" type="submit" name="btnAccion" value="Eliminar1">Eliminar</button></form></td>
        <td><form action="" method="post"><input type="hidden" name="id" value="<?php echo openssl_encrypt($rows['id'],COD,KEY); ?>"><button class="btn btn-primary" type="submit" name="btnAccion" value="Guardar" >Guardar</button></form></td>
        
   <?php endforeach;
   
   }else{
       echo 'Lista Vacia';
       unset($_SESSION['CARRITO']);
   }
   
   ?>
   </tr>
                <td colspan="5">
                    <!--Meter en sesion -->
                    <!--Meter en sesion -->
                    <?php
                            if(isset($_SESSION["Email"])) {
                            ?>
                                <form action="pagar.php" method="post">
                                    <div class="alert alert-primary">
                                        <div class="form-group">
                                                                
                                            
                                            <input type="hidden" name="email" class="form-control" value="<? echo ($_SESSION['Email']);?>">
                                            <input type="hidden" name="Precio" id="" value=";
                                            echo openssl_encrypt($row[3],COD,KEY); 
                                            echo '">
                                        </div>
                                        <?php
                                        if(isset($_SESSION['CARRITO'])){
                                        ?>  <button type="submit" class="btn btn-primary btn-lg btn-block" name="btnAccion" value="proceder">Proceder a pagar</button>
                                        <?php
                                        }else{
                                            //echo "<script>alert('Carrito vacio..');</script>";
                                            unset ($_SESSION['CARRITO']);
                                        }
                                        ?>
                                    </div>
                                </form>
                            
                            
                                <?php
                            }if(isset($_SESSION["Email"])) {
                            ?>

                                <form action="../pagoEfectivo/efectivo.php" method="post">
                                    <div class="alert alert-primary">
                                        <div class="form-group">
                                                                
                                            
                                            <input type="hidden" name="email" class="form-control" value="<? echo ($_SESSION['Email']);?>">
                                            <input type="hidden" name="Precio" id="" value=";
                                            echo openssl_encrypt($row[3],COD,KEY); 
                                            echo '">
                                        </div>
                                        <?php
                                        if(isset($_SESSION['CARRITO'])){
                                        ?>  <button type="submit" class="btn btn-primary btn-lg btn-block" name="btnAccion" value="proceder">Proceder a pagar por efectivo</button>
                                        <?php
                                        }else{
                                            //echo "<script>alert('Carrito vacio..');</script>";
                                            unset ($_SESSION['CARRITO']);
                                        }
                                        ?>
                                    </div>
                                </form>
                            
                                
                                <?php
                            }if(isset($_SESSION["Email"])) {
                            ?>
                                <form action="" method="post">
                                    <div class="alert alert-primary">
                                        <div class="form-group"> 
                                            <input type="hidden" name="email" class="form-control" value="<? echo ($_SESSION['Email']);?>">
                                            <input type="hidden" name="Precio" id="" value=";
                                            echo openssl_encrypt($row[3],COD,KEY); 
                                            echo '">
                                        </div>
                                        <?php
                                        if(isset($_SESSION['CARRITO'])){
                                        ?>  
                                        <!--<button type="submit" class="btn btn-primary btn-lg btn-block" name="transferencia" value="transferencia">transferencia</button>-->
                                        <button type="button" <i class="btn btn-primary btn-lg btn-block" onclick="alerta()">Pagar Compra por Transferencia</i></button>
                                            
                                        <?php
                                        }else{
                                            //echo "<script>alert('Carrito vacio..');</script>";
                                            unset ($_SESSION['CARRITO']);
                                        }
                                        ?>
                                    </div>
                                </form>
                            <?php
                            }else if(isset($_SESSION["Email"]) == '') {   
                                echo '<a class="nav-link active cerrar" aria-current="page" href="../login/login.php">Si deseas proceder con el pago, es necesario que inicies sesión </a> ';                  
                            }
                            ?>
                                
                        </td>                      
                    </tbody>              
                </table>

                <!--Modal ingresar direcion-->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-body">
                                    <!--Inicio de formulario dirección-->
                                    <form class="text-dark">                                         
                                        <div class="form-group">
                                            <button type="button" name="comprar" onclick="alerta()" class="btn btn-primary">pagar</button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                        </div>
                                        <input type="hidden" id="description" value="<?php echo $rows['nombre'];?>"/>
                                    </form> 
                                </div>   
                            </div> 
                        </div>
                </div>



                <script type="text/javascript">
                    function alerta(){
                        var producto = $("#description").val();
                        //Swal.fire("Realizado","Has realizado la compra de un@ "+producto+", tienes un plazo de 24 horas para realizar la transferencia o el deposito de tu producto a la cuenta mencionada y se pueda validar la compra con el vendedor", "success");
                        Swal.fire({
                            title: 'Realizado',
                            text: "Has realizado la compra de un@ "+producto+", tienes un plazo de 24 horas para realizar la transferencia o el deposito de tu producto a la cuenta mencionada y se pueda validar la compra con el vendedor",
                            type: "success",
                            showCancelButton: true,
                            confirmButtonText: 'ok',
                            cancelButtonText: 'cancel',
                            allowOutsideClick: false
                        }).then((result) => {
                            if (result.dismiss !== 'cancel') {
                                //Swal.fire("Venta Realizada","cuando se realice la transferencia de deposito procede ir a tus productos comprados, para cargar el comprobante de tu deposito.", "warning");
                                Swal.fire({
                                    title: "Venta Realizada",
                                    text: "cuando se realice la transferencia de deposito procede ir a tus productos comprados, para cargar el comprobante de tu deposito.",
                                    type: "warning",
                                    showCancelButton: true,
                                    confirmButtonText: 'ok',
                                    cancelButtonText: 'cancel',
                                    allowOutsideClick: false
                                }).then((result) => {
                                    if (result.dismiss !== 'cancel') {
                                        window.location.href="../pagoTransferencia/pdf.php";
                                    }
                                })
                                
                            }
                        })
                    }
                </script>
                                               
                  
                <!--Meter en sesion --> 
                </tr>              
               
   
</tbody>
</table>  
<p>
</p>



    
</div>
<!--------------------------------Guardar producto----------------------------------------------------------------->
<div class="container letras">
     <h3>Productos Guardados</h3>

    <?php if(!empty($_SESSION['Guardar'])){

    ?>
    <br>

    <table class="table ">
        <thead class="text-black" style="background: #ffb300;">
            <tr>
                <th width="40%">Nombre</th>                
                <th width="15%" class="text-center">Cantidad</th>
                <th width="15%" class="text-center">Precio</th>
                <th width="15%" class="text-center">Total</th>
                <th width="15%"></th>
                
                
            </tr>
        </thead>
        <tbody class="font-weight-bold">
            <?php $total=0; ?>
            <?php foreach($_SESSION['Guardar'] as $indice=>$producto){ ?>
                <?php
                $spIdProduct = $producto['id'];
                $spIdCarrito = $producto['usuventa'];
                $spCantidadProducto = $producto['cantidad'];
                include("../model\conexion.php");
                $prodGuardar ="CALL psInsertProductoCarrito ('$spIdProduct','$spIdCarrito','$spCantidadProducto');";
                $ejeConsulta= mysqli_query($conect,$prodGuardar);
                mysqli_close($conect);
                ?>
            <tr>
                <td width="40%"><?php echo $producto['nombre']?></td>                
                <td width="15%" class="text-center"><?php echo $producto['cantidad']?></td>
                <td width="15%" class="text-center"><i class="fas fa-dollar-sign"></i>  <?php echo $producto['precio']?></td>
                <td width="15%" class="text-center"><i class="fas fa-dollar-sign"></i>  <?php echo number_format($producto['precio']*$producto['cantidad'],2);?></td><!--Calculo suptotal-->
                <td width="15%">

                <form action="" method="post">
                    <input type="hidden" name="id" value="<?php echo openssl_encrypt($producto['id'],COD,KEY); ?>">                   
                    <button class="btn btn-danger" type="submit" name="btnAccion" value="Eliminar2">Eliminar</button> </td>
                </form>
                
                </tr>
            <?php $total=$total+($producto['precio']*$producto['cantidad']); ?><!--Calculo de Total-->
            <?php } ?>
            
            <tr>
                <td colspan="3" align="right"><h3>Total</h3></td>
                <td align="right"><h3><i class="fas fa-dollar-sign"></i>  <?php echo number_format($total,2);?></h3></td><!--Formato y la sumatoria de todos los registros--->
                <td></td>            
            </tr>
                <td colspan="5">
                    <!--Meter en sesion -->
                    <?php 
                    if(isset($_SESSION["Email"])) {
                        ?>
                        
                            <form action="pagar.php" method="post">
                                <div class="alert alert-primary">
                                    <div class="form-group">
                                    
                                    <!--<input type="email" name="email" id="" value="<?php //echo ($_SESSION["Email"]);?>">-->
                                    <input type="hidden" name="email" class="form-control" value="<?echo ($_SESSION['Email']);?>">
                                    <input type="hidden" name="Precio" id="" value="<?php echo openssl_encrypt($row[3],COD,KEY); ?>">
                                    <label for="my-input">Cantidad de Productos: </label>
                                    <?php echo $producto['cantidad']?>
                                    </div>
                                    <!--
                                    <small id="emailHelp" class="form-text text-muted">
                                        los productos se enviaran a este correo
                                    </small>-->                        
                                <button type="submit" class="btn btn-primary btn-lg btn-block" name="btnAccion" value="proceder">
                                Proceder a pagar 
                                </button>
                                </div>
                            </form>     
                                              
                        <?php                         
                        }if(isset($_SESSION["Email"])) {
                            ?>
                            
                                <form action="../pagoEfectivo/efectivo.php" method="post">
                                    <div class="alert alert-primary">
                                        <div class="form-group">
                                        
                                        <!--<input type="email" name="email" id="" value="<?php //echo ($_SESSION["Email"]);?>">-->
                                        <input type="hidden" name="email" class="form-control" value="<?echo ($_SESSION['Email']);?>">
                                        <input type="hidden" name="Precio" id="" value="<?php echo openssl_encrypt($row[3],COD,KEY); ?>">
                                        <label for="my-input">Efectivo: </label>
                                        <?php echo $producto['cantidad']?>
                                        </div>
                                        <!--
                                        <small id="emailHelp" class="form-text text-muted">
                                            los productos se enviaran a este correo
                                        </small>-->                        
                                    <button type="submit" class="btn btn-primary btn-lg btn-block" name="btnAccion" value="proceder">
                                    Efectivo 
                                    </button>
                                    </div>
                                </form>     
                                                  
                            <?php                         
                        }else if(isset($_SESSION["Email"]) == '') {   
                            echo '<a class="nav-link active cerrar" aria-current="page" href="../login/login.php">Si deseas proceder con el pago, es necesario que inicies sesión </a> ';                  
                        }                        
                        ?>
                                        <!--Meter en sesion -->               
                </td>
            <tr>
            </tr>
        </tbody>
    </table>
    <?php }else{ ?>
    <div class="alert alert-success">
        No hay Productos en el carrito....
    </div>
    <?php } ?>
</div>

<!--Fin del Cuerpo de la pagina-->
<!-------------------------------------------------------------------TABLA VENDEDOR---------------------------------------------------------------------------------------------->


<!--Fin del Cuerpo de la pagina-->    
<br>
<br>

<!--Piede de pagina-->    
<footer>
    <!--<div class="container-fluid bg-dark text-black text-center p-5">-->
    <div class="container-fluid  text-black text-center p-5">
        <b>
        <p>&copy; Todos los derechos reservados :: Empresa CODEWAY 2020</p>
        </b>
    </div>
</footer>
<!-- Fin Piede de pagina-->    
        
        <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        
</body>
</html>