<?php
//Inicio de La sesion
session_start();
if(isset($_SESSION["Email"])) {
    $email = ($_SESSION["Email"]) ;
    if($_POST){
        $total=0;
        $SID = session_id();
        //echo $SID ."<br>";      
        foreach(($_SESSION['CARRITO']) as $indice=>$producto){   //Recolecta los prodcutos dentro del carrito              
            $total=$total+($producto['precio']*$producto['cantidad']);
        }
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">       
    <title>Pago por Efectivo</title> 
    <link rel="shortcut icon" href="../img/utilidades/tiendaonlineico.ico"/>    
    <link rel="stylesheet" href="../css\estiloGeneral.css" type="text/css">
    <link rel="stylesheet" href="../fontawesome\css\all.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/styles.css" media="screen"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="restar.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css" media="screen"/>
    <script type="text/javascript" src="../js/sweetalert2.all.min.js" charset="utf-8"></script>                 
</head>
<body> 
<!--NAV-->
<!-- <nav class="navbar navbar-dark bg-dark text-white"> -->
    <nav class="navbar  text-white">
        <div class="container-fluid p-7">
            <div class="col-sm-5 text-wrap">
                <h2 class="logo"> Monarka</h2>
            </div>
            <div class="col-sm-5">
                <ul class="nav text-white">
                    <li class="nav-item">
                    <a class="nav-link active  text-light" aria-current="page" href="../index.php">Home</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active cerrar" aria-current="page" href="../login/cerrarSesion.php">Cerrar Sesion</a>
                    </li>
                    <li class="nav-item">
                        <?php
                                        $identificador = ($_SESSION["Iden"]);
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
                                            <a class="nav-link active  text-info" aria-current="page" href="#"><?php echo ($_SESSION["Nombre"]);?></a>
                                            </div>
                                        </div>
                        <?php
                            }
                            mysqli_close($conect);
                        ?>
                    </li>

                    <li class="nav-item">
                    <a class="nav-link active  text-light" aria-current="page" href="../crudcarrito/vistaaltacarrito.php."><i class="fas fa-undo-alt"></i> Regresar</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<!--FIN NAV-->
    <br>
    <br>
<!--Cuerpo de la pagina-->
<center>
        <form method="POST" action ="" class="form-group col-md-10">
                        <div class="card border-info " >
                            <div class="card-header row">
                                <div class="col-sm-2">               
                                </div>
                            <div class="col-sm-7 text-wrap, logo "> 
                                    <h1>Pago por Efectivo</h1>
                            </div>
                        </div>
                        <br>
                        <br>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                </div>
                                <div class="form-group col-md-4">
                                    <b>
                                        <label for="Total">Total:</label>
                                    </b>
                                    <input type="number" step="0.1" class="form-control" id="caja1" name="caja1" value="<?php echo $total;?>">
                                </div>
                                <div class="form-group col-md-4">
                                    <b>
                                        <label for="dinero">Pago con:</label>
                                    </b>
                                    <input type="number" step="0.1" class="form-control" name="caja2"  id="caja2" placeholder="$" value="<?php echo $n2;?>" >
                                </div>
                            </div>
                            <div class="form-row">
                            <div class="form-group col-md-2">
                                </div>
                                <div class="form-group col-md-4">
                                    <b>
                                        <label for="cambio">Cambio:</label>
                                    </b>
                                    <input type="number" step="0.1" class="form-control" name="caja3" id="caja3" placeholder="$" value="<?php echo $s;?>">
                                </div>
                                <div class="form-group col-md-2">
                                <input type="checkbox" <i class="btn boton_crear text-white" data-toggle="modal" data-target="#exampleModal">  Agregar datos para facturar</i></input>
                                </div>
                                
                            </div>
                            <br> 
                            <center>
                                <button type="button" <i class="btn btn-primary btn-lg btn-block" style="width:700px"  data-toggle="modal" onclick="alerta()">Generar Factura</i></button>
                            </center>
                            <br>
                            <br>
                            <!-- FUNCION DE RESTA PARA EL CAMBIO -->
                            <script>
                                    let precio1 = document.getElementById("caja1")
                                    let precio2 = document.getElementById("caja2")
                                    let precio3 = document.getElementById("caja3")
                                    
                                    precio2.addEventListener("change", () => {
                                        precio3.value = parseFloat(precio2.value) - parseFloat(precio1.value)

                                        if (precio2 <=0 ){
                                            alert("Lo siento necesito un valor")
                                        }

                                    })
                                    
                            </script>
                            <!-- FIN DE FUNCION -->
                                
                        </div>
        </form>
</center>
        <?php
                            if(isset($_SESSION["Email"])) {
                            ?>
                                <form action="" method="post">
                                    
                                        <?php
                                        if(isset($_SESSION['CARRITO'])){
                                        ?>  
                                        <!--<button type="submit" class="btn btn-primary btn-lg btn-block" name="transferencia" value="transferencia">transferencia</button>-->
                                        
                                            
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
                            title: '¿Quieres generar la factura?',
                            text: "Estas seguro que quieres generar la factura",
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonText: 'si',
                            cancelButtonText: 'no',
                            allowOutsideClick: false
                        }).then((result) => {
                            if (result.dismiss !== 'cancel') {
                                //Swal.fire("Venta Realizada","cuando se realice la transferencia de deposito procede ir a tus productos comprados, para cargar el comprobante de tu deposito.", "warning");
                                Swal.fire({
                                    title: "Generar factura",
                                    text: "Tu factura en este momento va ser creada",
                                    type: "success",
                                    showCancelButton: true,
                                    confirmButtonText: 'ok',
                                    cancelButtonText: 'cancel',
                                    allowOutsideClick: false
                                }).then((result) => {
                                    if (result.dismiss !== 'cancel') {
                                        window.location.href="factura.php";
                                    }
                                })
                                
                            }
                        })
                    }
                </script>


                   <!--Modal ingresar datos de factura-->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Datos para tu facturización</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                                    <div class="modal-body">
                                        <!--Inicio de formulario dirección-->
                                        <form method ="POST" action ="guardarFactura.php">
                                            <br>
                                            <br> 
                                            <div class="card-body text-info">
                                                <b>
                                                    <label for="inputNombre">Nombre completo:</label>
                                                </b>
                                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="nombre(s) y apellidos" >
                                                <br>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <b>
                                                            <label for="claveInterbanc">RUC:</label>
                                                        </b>
                                                        <input type="text" class="form-control" id="ruc" name="ruc" placeholder="RUC" >
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <b>
                                                            <label for="inputnumTarjeta">Cedula:</label>
                                                        </b>
                                                        <input type="numeTarjeta" class="form-control" name="cedula"  id="cedula" placeholder="Cedula" >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-warning" name="submits" id="submits">Enviar</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </form> 
                                    </div>   
                                </div> 
                            </div>
                    </div>
            </div>
        </div>
    </div>
    <!--Fin del Cuerpo de la pagina-->
    <br>
    <br>
    <!--Piede de pagina-->
    <footer>
        <!--<div class="container-fluid bg-dark text-white text-center p-5">-->
        <div class="container-fluid  text-white text-center p-5">
            <p>&copy; Todos los derechos reservados :: Empresa CODEWAY 2020</p>
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
//Fin de la condicion de la sesion
}else{
    echo "Sesion Incorrecta";
}
//Fin de la condicion de la sesion
?>

