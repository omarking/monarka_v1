<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">       
    <title>Registro Usuario</title> 
    <link rel="shortcut icon" href="../img/utilidades/tiendaonlineico.ico"/>    
    <link rel="stylesheet" href="../css\estiloGeneral.css" type="text/css">
    <link rel="stylesheet" href="../fontawesome\css\all.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/styles.css" media="screen"/>

    <script src="validarAltaUsuario.js"></script>    
               
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
                <p  class="navbar-brand"><H4>¡¡¡Bienvenido!!!, Crea tu cuenta en Monarka</H4></p>         
            </div>
            <div class="col-sm-5">
                <ul class="nav text-black">
                    <li class="nav-item">           
                    </li>
                    <li class="nav-item">    
                    <a class="nav-link active cerrar" aria-current="page" href="../index.php">Iniciar Sesión </a>                    
                    </li>
                    <li class="nav-item, logo">                    
                    <a class="nav-link active  text-info, logo" aria-current="page" href="#">¿Aun no cuentas con una cuenta?, Créala Aquí!!!</a>
                    </li>                    
                </ul>
            </div>
        </div>
    </nav>
<!--FIN NAV-->
    <br>
    <br>
<!--Cuerpo de la pagina-->
    
<div class="container">
        <div class="card border-info " >
            <div class="card-header row">
                <div class="col-sm-2">
                <h2 class="logo">Monarka</h2>     
                                
                </div>
                <div class="col-sm-10 text-center">
                    <h1>¡Datos esenciales para tu perfil!</h1>
                </div>
            </div>

            <div class="card-body text-info">
            <!--Inicio del formulario-->
                <form class="text-dark" action="../controlador/altaUsuarioController.php" method="post" onsubmit="return validarAltaUsuario();">
                <!--<form class="text-dark" action="" method="post" onsubmit="return validarAltaUsuario();">-->                              
                    <!--Nombre-->
                    <div class="form-row">
                        <div class="form-group col-md-2">
                        </div>
                        <div class="form-group col-md-4">
                            <b>
                            <label for="inputNombre">Nombre:</label>
                            </b>
                            <input type="text" class="form-control" id="inputNombre" name="txtNombreU" placeholder="Solo Nombre" >
                        </div>
                        <div class="form-group col-md-4">
                            <b>
                            <label for="inputApell">Apellido Paterno:</label>
                            </b>
                            <input type="text" class="form-control" id="inputApell" name="txtApellido1U" placeholder="Apellido Paterno" >
                        </div>
                    </div>

                    <!--RFC-->
                    <div class="form-row">
                        <div class="form-group col-md-2">
                        </div>
                    <div class="form-group col-md-4">
                            <b>
                            <label for="inputCedula">Cédula/Identidad:</label>
                            </b>
                            <input type="text" class="form-control" id="inputCedula" name="txtcedula1U" placeholder="Cédula/Identidad" >
                        </div>

                    <!--Provincia-->
                    <div class="form-group col-md-4">
                        <b>
                            <label for="inputProvincia">Provincia</label>
                        </b>  
                            <select  class="form-control" id="inputProvincia" name="txtprovincia1U">                            
                                <option  value="0"  disabled selected> -Seleccione Provincia- </option>
                            </select>   
                    </div>

                    <!--Cantón-->
                    
                        <div class="form-group col-md-2">
                        </div>
                    <div class="form-group col-md-4">
                        <b>
                            <label for="inputCanton">Cantón:</label>
                        </b>
                        <?php                            
                                include("../model/conexion.php");          
                                $conCate ="CALL psCateAct();";   
                                $ejeconsultaCate=mysqli_query($conect,$conCate);                                                               
                                $result_canton = mysqli_num_rows($ejeconsultaCate);
                                mysqli_close($conect);
                            ?>
                            <form method="GET" <?php echo htmlspecialchars($_SERVER['PHP_SELF'])?> >
                                <select id="CANTON" class="form-control" name="CANTON">                                
                                    <option  value="0"  disabled selected> -Seleccione Canton- </option>
                                        <?php
                                        if($result_canton > 0){
                                            while($canton = mysqli_fetch_array($ejeconsultaCate)){
                                    ?>
                                     <option value="<?php echo $canton['idCanton']?>"><?php echo $canton['descripcion']?></option>
                                        <?php
                                                }
                                            }
                                        ?>     
                                </select>
                            </form>
                        </div>                        
                        <div class="form-group col-md-2">

                    <!--Parroquía-->    
                    <div class="form-group col-md-4">
                        <b>
                            <label for="inputParroquia">Parroquía:</label>
                        </b>
                            <?php                            
                                include("../model/conexion.php");          
                                $conCate ="CALL psCateAct();";   
                                $ejeconsultaCate=mysqli_query($conect,$conCate);                                                               
                                $result_parroquia = mysqli_num_rows($ejeconsultaCate);
                                mysqli_close($conect);
                            ?>
                            <form method="GET" <?php echo htmlspecialchars($_SERVER['PHP_SELF'])?> >
                                <select id="PARROQUIA" class="form-control" name="PARROQUIA">                                
                                    <option  value="0"  disabled selected> -Seleccione Categoría- </option>
                                        <?php
                                        if($result_parroquia > 0){
                                            while($parroquia = mysqli_fetch_array($ejeconsultaCate)){
                                    ?>
                                     <option value="<?php echo $parroquia['idParroquia']?>"><?php echo $parroquia['descripcion']?></option>
                                        <?php
                                                }
                                            }
                                        ?>     
                                </select>
                            </form>
                        </div>                        
                        <div class="form-group col-md-2">
                        </div>

                    <!--Email-->
                        <div class="form-group col-md-4">
                        <div class="form-group col-md-100">
                            <b>
                            <label for="inputEmail4">Em@il:</label>
                            </b>
                            <!--<input type="email" class="form-control" name="txtCorreoU"  id="inputEmail4" placeholder="nombre@dominio.com">-->
                            <input type="email" class="form-control" name="txtCorreoU"  id="inputEmail4" placeholder="nombre@dominio.com" >
                        </div>                        
                        <div class="form-group col-md-2">
                        </div>
                    </div>
                    
                    <!--PASS-->
                    <div class="form-row">
                        <div class="form-group col-md-2">
                        </div>
                        <!--Contraseseña-->
                        <div class="form-group col-md-4">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <b>
                                    <label for="inputPassword">Contraseña:</label>
                                    </b>
                                    <div class="row">                                    
                                        <div class="col-md-8">
                                        <input type="password" class="form-control" name="txtCon1U" id="inputPassword">
                                        </div>
                                        <div class="col-md-2">
                                            <button class="btn boton_crear text-black" type="button" onclick="mostrarContrasena()"><i class="fas fa-eye"></i></button>                                                                                      
                                        </div>
                                        <div class="col-md-2">
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                                
                            </div>
                        </div>
                        
                        <!--Confirma Contraseseña-->
                        <div class="form-group col-md-4">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <b>
                                    <label for="inputPasswordC">Confirma tu contraseña:</label>
                                    </b>                                    
                                        <div class="row">
                                            <div class="col-md-8">
                                            <input type="password" class="form-control" name="txtCon2U" id="inputPasswordC" >
                                            </div>
                                            <div class="col-md-2">
                                            <button class="btn boton_crear text-black" type="button" onclick="mostrarContrasenaC()"><i class="fas fa-eye"></i></button>                                                                                      
                                            </div>
                                            <div class="col-md-2"></div>
                                        </div>
                                    </div>                                                              
                            </div>
                        </div>
                    </div>    
                    <!--Botones-->
                    <div class="form-row">
                        <div class="form-group col-md-8">
                        </div>
                        
                        <div class="form-group col-md-8 ">
                            <!--<button type="button" class="btn btn-info">   Crear  </button>-->
                            <input type="submit" class="btn boton_crear text-black nav1" name="enviar" value="Crear Cuenta">
                            <!--<td><input class="btn btn-danger" type="submit"  value="Enviar" name="enviar" onClick="comprobarClave()"></td>-->
                        </div>
                        <div class="form-group col-md-4 ">
                            <!--<button type="button" class="btn btn-dark">  Cancelar  </button>-->
                            <input class="btn btn-dark text-black right" type="reset" name="" value="Cancelar">                            
                        </div>                                                
                    </div>    
                    
                    </form>
            </div>
        </div>
    </div>

<!--Fin del Cuerpo de la pagina-->    
<br>
<br>
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
<script>
  function mostrarContrasena(){
      var tipo = document.getElementById("inputPassword");
      if(tipo.type == "password"){
          tipo.type = "text";
      }else{
          tipo.type = "password";
      }
  }
</script>

<script>
  function mostrarContrasenaC(){
      var tipo = document.getElementById("inputPasswordC");
      if(tipo.type == "password"){
          tipo.type = "text";
      }else{
          tipo.type = "password";
      }
  }
</script>
        <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script>
            $(function () {
                $('[data-toggle="popover"]').popover()
            })
        </script>
</body>
</html>