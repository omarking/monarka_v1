<?php
session_start();
if(isset($_SESSION["Email"])) {
    $email = ($_SESSION["Email"]) ;     
    include("../crudcarrito/encriptacion.php"); 
    include("../crudcarrito/mostrarcarrito.php");                    
?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">       
        <title>Home</title> 
        <link rel="shortcut icon" href="../img\utilidades\tiendaonlineico.ico"/>
        <link rel="stylesheet" href="../css\estiloindex.css" type="text/css">                                 
        <link rel="stylesheet" href="../fontawesome\css\all.css" type="text/css">
        <!--<link rel="stylesheet" href="../aler    tify\css\alertify.css" type="text/css">
        <link rel="stylesheet" href="../alertify\css\alertify.css\themes\default.css" type="text/css">-->
        <link rel="stylesheet" type="text/css" href="../librerias/bootstrap-5.0.1/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../css/styles.css" media="screen"/>

        <!--<script src="../js\validar.js"></script>-->
    </head>

    <body>    
        <!--NAV-->
        <!-- <nav class="navbar navbar-dark bg-dark text-white"> -->
        <nav class="navbar  text-black nav1">
            <div class="container-fluid p-4">        
                <div class="col-sm-4">                                
                    <h2 class="logo"> Monarka</h2> 
                </div>
                <form method="POST" action="home6.php" >
                    <label class="logo" for="inputStateCP">CATEGORÍA:</label>
                    <?php                            
                    include("../model/conexion.php");          
                    $conCate ="CALL psCateAct();";   
                    $ejeconsultaCate=mysqli_query($conect,$conCate);                                                               
                    $result_categoria = mysqli_num_rows($ejeconsultaCate);
                    mysqli_close($conect);
                    ?>
                    <select id="categorias" class="form-control" name="categorias">                                
                        <option  value="0"  disabled selected> -Seleccione Categoría- </option>
                        <?php
                            if($result_categoria > 0){
                                while($categoria = mysqli_fetch_array($ejeconsultaCate)){
                        ?>                                       
                                    <option value="<?php echo $categoria['desCategoria']?>"><?php echo $categoria['desCategoria']?></option>
                            <?php
                                }
                            }
                            ?>     
                    </select>
                    <br>
                    <button id="submit"  name="submit" type="submit" class="btn btn-primary btn-block">enviar</button>
                </form>   
                <div class="col-sm-4 text-wrap">                             
                    <div class="input-group" id="div-src">
                        <!--Funcion de Buscar -->
                        <form name="form" action="home6.php" method="POST">
                            <div class="container-fluid">
                                <input type="text"  class= "form-control" name="subject" id="subject" placeholder="¡Buscar Productos y más!">
                                <br>
                                <br>
                                <button type="submit" id="buscar" name="buscar" class="btn btn-primary">Buscar</button>
                            </div>
                        </from>        

                    </div>
                </div> 
            </div>
            <div class="col-sm-12">
                <div class="container-fluid">
                    <ul class="nav text-white">
                    <!--Divicion 1-->                                            
                    <li class="nav-item">
                        <h6><a class="nav-link active  text-light,logo" aria-current="page" href="#">Home</a></h6>
                    </li>         
                    <li class="nav-item">           
                        <a style="color:#ff9800; margin-right:10px; margin-top:10px" aria-current="page" href="..\crudcarrito/vistaaltacarrito.php">
                        <i class="fas fa-cart-plus fa-3x "></i>Carrito(<?php echo (empty($_SESSION['CARRITO']))?0:count($_SESSION['CARRITO']);?>)</a>                                                               
                    </li>                                        
                    <li class="nav-item">
                        <?php
                        if(isset($_SESSION["Email"]) == '') {   
                            echo '<h6><a class="nav-link active cerrar" aria-current="page" href="..\index.php">Iniciar Sesión </a> </h6>';                  
                        }else if(isset($_SESSION["Email"])){ 
                        ?>                                    
                            <div data-toggle="modal" data-target="#ventanaModalCloseIndex">
                            <h6><a class="nav-link active cerrar" aria-current="page" href="#">Cerrar Sesión</a></h6> 
                            </div>          
                        <?php
                        }
                        ?>                                                            
                    </li>
                    <?php
                    if(isset($_SESSION["Email"])){
                        $identificador = ($_SESSION["Iden"]);
                        include("../model/conexion.php");                
                        $sqlimgP="CALL psImagenUsuarioPerfil('$identificador');";
                        $resultadosqlimgP=mysqli_query($conect,$sqlimgP);                                                             
                        while($row=mysqli_fetch_row($resultadosqlimgP)){
                    ?>  
                            <li class="nav-item">   
                                <h6 data-toggle="modal" data-target="#ventanaModalVerPerfil"><a class="nav-link active  text-info" aria-current="page" href="#"><?php echo ($_SESSION["Nombre"]);?></a> </h6>
                            </li>                 
                            <li class="nav-item"> 
                                <img class="rounded-circle" src="<?php echo "../crudperfilusuario/".$row[0];?>" alt=".." width="50" height="50">  
                            </li>     
                    <?php                
                        }
                        mysqli_close($conect);  
                    }
                    ?>   
                </div>
            </div>
        </nav>
        <!--FIN NAV-->
        <!--Cuerpo de la pagina-->
        <!--Alertas-->  
        <br>
        <br>  
        <?php 
        if($mensaje!=""){
        ?>
            <div class="alert alert-success container">
            <?php         
            echo $mensaje;                                             
            ?>
            </div>
        <?php 
        }
        ?>
        <!--cards con registros de una tabla-->    
        <div class="container mt-3">
            <div class="row">                       
                <!--Modal-->
                <?php 
                    @$idProductoC = 0;
                    @$con1 = 0;
                    @$con1 = ($_SESSION['CARRITO']);
                    if ($con1<>0){
                        foreach(($_SESSION['CARRITO']) as $indice=>$producto){//recorremos los prouctos que tenemos en el carrito de compras                                                                
                            $idProductoC = $producto['id'] ;
                        }
                    }
                    include("../model\conexion.php");                                 
                    $sqlIU="CALL psBusIdProduCU('$idProductoC');";
                    $resultadosqlIU=mysqli_query($conect,$sqlIU);                                                                         
                    mysqli_close($conect); 
                    while($rowIU=mysqli_fetch_row($resultadosqlIU)){
                        $idUMP = $rowIU[0];
                    } 
                    if($con1 <> 0){
                        include("../model\conexion.php");                                 
                        $sqlMoIDS="CALL psMosProductoConUsuFCPSU('$idUMP', '$idProductoC');";                                                                             
                        $resultadoMoIDS=mysqli_query($conect,$sqlMoIDS);                                                                         
                        mysqli_close($conect); 
                        while($rowMoIDS=mysqli_fetch_row($resultadoMoIDS)){                
                            $identProducto1 = $rowMoIDS[0];
                            $titulo1        = $rowMoIDS[1];
                            $descripcion1   = $rowMoIDS[2];              
                            $precio1        = $rowMoIDS[3];
                            $imagen1        = $rowMoIDS[4];
                            $stockR1        = $rowMoIDS[5];
                            //PRUEBA DE USUARIO
                            //$usuarioIden = $rowMoIDS[6];
                            //echo $usuarioIden; 
                ?>

                            <div class="col-lg-4 col-lg-4 col-sm-12">            
                                <div class="card-deck">
                                    <div class="card">
                                        <form action="../crudcarrito/venModal.php" method="post">                            
                                            <button type="submit"  class="border border-light p-3 mb-2 bg-transparent">
                                                <input type="hidden" name="idprodComModal" id="" value="<?php echo $identProducto1; ?>">
                                                <img class="card-img-top" title="<?php echo $titulo1; ?>" src="<?php echo  $imagen1;?>" id="carruselancho" alt="Card image cap" data-toggle="popover" data-trigger="hover" data-content="<?php echo $descripcion1; ?>">                                                        
                                            </button>
                                            <div class="card-body">
                                                <h5 class="card-title"><?php echo $titulo1; ?></h5>
                                                <p class="card-text"><?php echo $descripcion1; ?></p>
                                                <p class="card-text">Precio <i class="fas fa-dollar-sign, letras"></i>: <?php echo $precio1; ?></p>
                                                <p class="card-text, letras">Productos Disponibles: <?php echo $stockR1; ?></p>                        
                                            </div>                                                                                        
                                        </form>                                                                        
                                        <div class="card-footer text-center">                                                                
                                            <form action="" method="post">
                                                <input type="hidden" name="idenProd" id="" value="<?php echo openssl_encrypt($rowMoIDS[0],COD,KEY); ?>">
                                                <input type="hidden" name="nombre" id="" value="<?php echo openssl_encrypt($rowMoIDS[1],COD,KEY);?>">
                                                <input type="hidden" name="Precio" id="" value="<?php echo openssl_encrypt($rowMoIDS[3],COD,KEY); ?>">
                                                <!--<input type="hidden" name="cantidad" id="" value="/**">-->                                
                                                <label for="inputProductCan" class="text-success font-weight-bold. letras">Cantidad a comprar:</label>        
                                                <select id="inputProductCan" class="btn btn-success dropdown-toggle" name="cantidad">                                
                                                    <?php 
                                                        for($i=1; $i <= $stockR1; $i++){                    
                                                    ?>                                                                                                                
                                                            <option value="<?php echo $i?>"><?php echo $i?></option>                         
                                                        <?php
                                                        }
                                                        ?>                                
                                            
                                                </select>
                                                <br>
                                                <br>
                                                <input type="hidden" name="usuventa" id="" value="<?php echo openssl_encrypt($rowMoIDS[6],COD,KEY); ?>">
                                                <button class="btn btn-primary" name="btnAccion" value="Agregar" type="submit">Agregar a carrito</button>
                                            </form>                                                                
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php 
                        }
                        ?>    
                    <?php                     
                    }elseif($con1 == 0){
                        include("../model/conexion.php");  
                        if(isset($_SESSION["Email"])) {
                            $idenNOU = ($_SESSION["Iden"]);  
                            $sql="CALL psMosProductoConUsu('$idenNOU');";
                        }elseif(isset($_SESSION["Email"]) == ''){
                            $sql="CALL psMosProducto;";
                        }                                    
                        $resultadosql=mysqli_query($conect,$sql);    
                        mysqli_close($conect);                                                                       
                        while($row=mysqli_fetch_row($resultadosql)){                
                            $identProducto  = $row[0];
                            $titulo         = $row[1];
                            $descripcion    = $row[2];              
                            $precio         = $row[3];
                            $imagen         = $row[4];
                            $stockR         = $row[5];
                            $usuarioIden    = $row[6];                                
                    ?> 
                            <div class="col-lg-4 col-lg-4 col-sm-12" id="Productos">            
                                <div class="card-deck">
                                    <div class="card">
                                        <form action="../crudcarrito/venModal.php" method="post">                            
                                            <button type="submit"  class="border border-light p-3 mb-2 bg-transparent">
                                                <input type="hidden" name="idprodComModal" id="" value="<?php echo $identProducto; ?>">
                                                <img class="card-img-top" title="<?php echo $titulo; ?>" src="<?php echo  $imagen;?>" id="carruselancho" alt="Card image cap" data-toggle="popover" data-trigger="hover" data-content="<?php echo $descripcion; ?>">                                                        
                                            </button>
                                            <div class="card-body">
                                                <h5 class="card-title"><?php echo $titulo; ?></h5>
                                                <p class="card-text"><?php echo $descripcion; ?></p>
                                                <p class="card-text">Precio <i class="fas fa-dollar-sign, letras"></i>: <?php echo $precio; ?></p>
                                                <p class="card-text, letras">Productos Disponibles: <?php echo $stockR; ?></p>                        
                                            </div>                                                        
                                            
                                        </form>                                                                        
                                        <div class="card-footer text-center">                                                                
                                            <form action="" method="post">
                                                <input type="hidden" name="idenProd" id="" value="<?php echo openssl_encrypt($row[0],COD,KEY); ?>">
                                                <input type="hidden" name="nombre" id="" value="<?php echo openssl_encrypt($row[1],COD,KEY);?>">
                                                <input type="hidden" name="Precio" id="" value="<?php echo openssl_encrypt($row[3],COD,KEY); ?>">                               
                                                <label for="inputProductCan" class="text-success font-weight-bold, letras">Cantidad a comprar:</label>        
                                                <select id="inputProductCan" class="btn btn-success dropdown-toggle" name="cantidad">                                
                                                    <?php 
                                                    for($i=1; $i <= $stockR; $i++){                    
                                                    ?>                                                                                                                
                                                        <option value="<?php echo $i?>"><?php echo $i?></option>                         
                                                    <?php
                                                    }
                                                    ?>                                
                                                    
                                                </select>
                                                <br>
                                                <br>
                                                <input type="hidden" name="usuventa" id="" value="<?php echo openssl_encrypt($row[6],COD,KEY); ?>">
                                                <button class="btn btn-primary, letras" name="btnAccion" value="Agregar" type="submit">Agregar a carrito</button>
                                            </form>                                                                
                                        </div>   
                                    </div>   
                                </div>   
                            </div>   
                    <?php 
                        }
                    }            
                    ?>
                    <br>
                    <?php
                    //$_SESSION['BUSQUEDA'][0]=$_POST['subject']; 
                    $buscar="";
                    //if(isset($_POST['BUSQUEDA'])){
                        //$buscar = $_SESSION['BUSQUEDA'][0];
                        //echo $buscar;
                    if(isset($_POST['subject'])){
                        $buscar = $_POST['subject'];
                        include("../model/conexion.php");        
                        if($buscar == ""){
                            
                            echo "Para realizar la busqueda por favor escriba el producto o categoria que desea buscar";
                            //se tiete que meter aqui un nuevo select con todos los productos para que cargue todo de nuevo
                            
                                
                        }else{
                            ?><style type="text/css">#Productos{
                                display:none;
                                }</style><?php
                            $consultar = "SELECT * FROM producto p inner join categoria c on p.idCategoria = c.idCategoria where p.nombreProducto LIKE '%$buscar%' LIMIT 5";                                                                            
                            $consultaBus = mysqli_query($conect,$consultar);
                            //$total = count($filas);                                                                       
                            mysqli_close($conect); 
                            while($filas = mysqli_fetch_assoc($consultaBus)){                                     
                                $idProducto     = $filas["nombreProducto"];
                                $nombreProducto = $filas["nombreProducto"];
                                $descripcionpro = $filas["desProducto"];
                                $preciopro      = $filas["precioUnitarioProducto"];
                                $imagenpro      = $filas["imagenProducto"];
                                $stockRpro      = $filas["stockRealProducto"];
                                //echo $nombreProducto;
                    ?>
                                <div class="col-lg-4 col-lg-4 col-sm-12" id="Buscar">            
                                    <div class="card-deck">
                                        <div class="card">
                                            <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="post">                            
                                                <button type="submit"  class="border border-light p-3 mb-2 bg-transparent">
                                                    <input type="hidden" name="idprodComModal" id="" value="<?php echo $idProducto; ?>">
                                                    <img class="card-img-top" $Nombrepro="<?php echo $Nombrepro; ?>" src="<?php echo  $imagenpro;?>" id="carruselancho" alt="Card image cap" data-toggle="popover" data-trigger="hover" data-content="<?php echo $descripcionpro; ?>">                                                        
                                                </button>
                                                <div class="card-body">
                                                    <h5 class="card-title"><?php echo $nombreProducto; ?></h5>
                                                    <p class="card-text"><?php echo $descripcionpro; ?></p>
                                                    <p class="card-text">Precio <i class="fas fa-dollar-sign, letras"></i>: <?php echo $preciopro; ?></p>
                                                    <p class="card-text, letras">Productos Disponibles: <?php echo $stockRpro; ?></p>                        
                                                </div>                                                                                        
                                            </form>                                                                        
                                            <div class="card-footer text-center">                                                                
                                                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="post">
                                                    <input type="hidden" name="idenProd" id="" value="<?php echo openssl_encrypt($rowMoIDS[0],COD,KEY); ?>">
                                                    <input type="hidden" name="nombre" id="" value="<?php echo openssl_encrypt($rowMoIDS[1],COD,KEY);?>">
                                                    <input type="hidden" name="Precio" id="" value="<?php echo openssl_encrypt($rowMoIDS[3],COD,KEY); ?>">                              
                                                    <label for="inputProductCan" class="text-success font-weight-bold. letras">Cantidad a comprar:</label>        
                                                    <select id="inputProductCan" class="btn btn-success dropdown-toggle" name="cantidad">                                
                                                        <?php 
                                                        for($i=1; $i <= $stockRpro; $i++){                    
                                                        ?>
                                                        <option value="<?php echo $i?>"><?php echo $i?></option>                         
                                                        <?php
                                                        }
                                                        ?>                                                              
                                                    </select>
                                                    <br>
                                                    <br>
                                                    <input type="hidden" name="usuventa" id="" value="<?php echo openssl_encrypt($rowMoIDS[6],COD,KEY); ?>">
                                                    <button class="btn btn-primary" name="btnAccion" value="Agregar" type="submit">Agregar a carrito</button>
                                                </form>                                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>

                    <?php
                                //echo $idProducto;
                                /*$Nombrepro = $fila[4];
                                $descripcionpro = $fila[5];              
                                $preciopro = $fila[6];
                                $imagenpro = $fila[7];
                                $stockRpro = $fila[10];
                                $idCategoria = $fila[13];
                                $desCategoria = $fila[14];*/ 
                            }  
                        } 
                    }else{
                        echo "" ; 
                    }            
                    ?> 
                <br>
                <?php
                if(isset($_POST['categorias'])){
                    $opcionCat=$_POST['categorias'];
                    //echo ("La categoria es: ".$opcionCat);
                    include("../model/conexion.php");
                    ?><style type="text/css">#Productos{
                        display:none;
                        }</style><?php
                    $categoria = "SELECT * FROM producto p inner join categoria c on p.idCategoria = c.idCategoria where c.desCategoria='$opcionCat' LIMIT 5";                                                                            
                    $consultaCate = mysqli_query($conect,$categoria);
                    //$total = count($rows);                                                                       
                    mysqli_close($conect); 
                    while($rows = mysqli_fetch_assoc($consultaCate)){                                     
                        $idProductos     = $rows["nombreProducto"];
                        $nomProducto     = $rows["nombreProducto"];
                        $descriprod      = $rows["desProducto"];
                        $preciounipro    = $rows["precioUnitarioProducto"];
                        $imagenproduc    = $rows["imagenProducto"];
                        $stockRproducto  = $rows["stockRealProducto"];
                        //echo $nomProducto;
                ?>
                        <div class="col-lg-4 col-lg-4 col-sm-12" id="Categorias">            
                            <div class="card-deck">
                                <div class="card">
                                    <form action="home6.php" method="POST">                            
                                        <button type="submit"  class="border border-light p-3 mb-2 bg-transparent">
                                        <input type="hidden" name="idprodComModal" id="" value="<?php echo $idProductos; ?>">
                                        <img class="card-img-top" $Nombrepro="<?php echo $Nombrepro; ?>" src="<?php echo  $imagenproduc;?>" id="carruselancho" alt="Card image cap" data-toggle="popover" data-trigger="hover" data-content="<?php echo $descriprod; ?>">                                                        
                                        </button>
                                        <div class="card-body">
                                            <h5 class="card-title"><?php echo $nomProducto; ?></h5>
                                            <p class="card-text"><?php echo $descriprod; ?></p>
                                            <p class="card-text">Precio <i class="fas fa-dollar-sign, letras"></i>: <?php echo $preciounipro; ?></p>
                                            <p class="card-text, letras">Productos Disponibles: <?php echo $stockRproducto; ?></p>                        
                                        </div>                                                                                        
                                    </form>                                                                        
                                    <div class="card-footer text-center">                                                                
                                        <form action="home6.php" method="POST">
                                            <input type="hidden" name="idenProd" id="" value="<?php echo openssl_encrypt($rowMoIDS[0],COD,KEY); ?>">
                                            <input type="hidden" name="nombre" id="" value="<?php echo openssl_encrypt($rowMoIDS[1],COD,KEY);?>">
                                            <input type="hidden" name="Precio" id="" value="<?php echo openssl_encrypt($rowMoIDS[3],COD,KEY); ?>">                              
                                            <label for="inputProductCan" class="text-success font-weight-bold. letras">Cantidad a comprar:</label>        
                                            <select id="inputProductCan" class="btn btn-success dropdown-toggle" name="cantidad">                                
                                            <?php 
                                                for($i=1; $i <= $stockRproducto; $i++){                    
                                            ?>
                                                    <option value="<?php echo $i?>"><?php echo $i?></option>                         
                                                <?php
                                                }
                                                ?>                                
                                            </select>
                                            <br>
                                            <input type="hidden" name="usuventa" id="" value="<?php echo openssl_encrypt($rowMoIDS[6],COD,KEY); ?>">
                                            <button class="btn btn-primary" name="btnAccion" value="Agregar" type="submit">Agregar a carrito</button>
                                        </form>                                                                
                                    </div>
                                </div>
                            </div>
                        </div>

                    <?php
                       
                       //echo $idProductos;
                       /*$Nombrepro = $fila[4];
                       $descriprod = $fila[5];              
                       $preciounipro = $fila[6];
                       $imagenproduc = $fila[7];
                       $stockRproducto = $fila[10];
                       $idCategoria = $fila[13];
                       $desCategoria = $fila[14];*/  
                    } 
                }else{
                   //echo "NO ENTRO " ; 
               }            
               ?>
            </div>
        </div>
        <!--Fin cards con registros de una tabla-->    
        <!-- Inicio del Modal Cerrar Sesion -->
        <div class="modal fade" id="ventanaModalCloseIndex" tabindex="-1" role="dialog" aria-labelledby="tituloVentana" aria-hidden="true"><!--Fade animacion de Pantalla tenue detras-->
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 id="tituloVentana">¡Cerrar Sesión¡</h5>
                        <button class="close, letras" data-dismiss="modal" arial-label="Cerrar">
                            <span arial-hiddeen="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                    <?php echo ($_SESSION["Nombre"]);?> deseas <a class="cerrar, letras",  aria-current="page" href="../login/cerrarSesion.php">Cerrar Sesion</a>                    
                    </div>
                    <div class="modal-footer, letras">
                    <button class="btn btn-warning" typr="button" data-dismiss="modal">        
                        Cancelar
                    </button>            
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin del Modal Cerra Sesion-->
        <!-- Inicio del Modal Ver Perfil -->
        <div class="modal fade" id="ventanaModalVerPerfil" tabindex="-1" role="dialog" aria-labelledby="tituloVentana" aria-hidden="true"><!--Fade animacion de Pantalla tenue detras-->
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-white" style="background: #0B3861;">
                        <h5 id="tituloVentana">¡Ver perfil¡</h5>
                        <button class="close" data-dismiss="modal" arial-label="Cerrar">
                            <span arial-hiddeen="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <a class="text-success font-weight-bold" aria-current="page" href="../crudperfilusuario/perfil.php"> <?php echo ($_SESSION["Nombre"]);?> deseas ver tu perfil </a>                    
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-warning" typr="button" data-dismiss="modal">        
                            Cancelar
                        </button>            
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin del Modal Ver Perfil-->
                
        <!--Fin del Cuerpo de la pagina-->    
        <br>
        <br>
        <!--Piede de pagina-->    
        <footer>
            <!--<div class="container-fluid bg-dark text-white text-center p-5">-->
            <div class="nav1  text-black text-center p-5">
                <p>&copy; Todos los derechos reservados :: Empresa CODEWAY 2020</p>
            </div>
        </footer>
        <!-- Fin Piede de pagina-->
        <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="alertify/alertify.js"></script>
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