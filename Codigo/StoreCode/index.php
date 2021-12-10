
<?php
header('Cache-Control: no cache'); //disable validation of form by the browser
session_cache_limiter('private, must-revalidate');
session_cache_expire(60);
session_start();
include("./crudcarrito/encriptacion.php"); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">       
    <title>Iniciar sesión</title>       
    <link rel="shortcut icon" href="../img/utilidades/tiendaonlineico.ico"/>
    <link rel="stylesheet" href="../css\estiloGeneral.css" type="text/css">
    <link rel="stylesheet" href="../fontawesome\css\all.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/styles.css" media="screen"/>
    <script src="../js\validacionLogin.js"></script>
    
</head>
<body>    
<!--NAV-->
<!-- <nav class="navbar navbar-dark bg-dark text-white"> -->
    <nav class="navbar  text-white nav1">
        <div class="container-fluid">        
            <div class="col-sm-2">                
            <a href="login\login.php"><h2 class="logo">Monarka</h2>
            </div>    
            <div class="col-sm-5 text-wrap">        
            </div>
            <div class="col-sm-5">
                <ul class="nav text-white">
                    <li class="nav-item">

                    </li>                    
                    <li class="nav-item">
                    <a class="nav-link active font-weight-bold  text-info" aria-current="page" href="../vistasCRUDRegistro\vistaAltaUsuario.php"><h5>¿Aun no cuentas con una cuenta?, Créala Aquí!!!</h5></a>
                    </li>                    
                </ul>
            </div>
        </div>
    </nav>
<!--FIN NAV-->
    <br>
    
<!--Cuerpo de la pagina-->

    <div class="container">

        <div class="form-row row justify-content-center">
            <!--<div class="card border-info"  #e3f2fd>-->
            
                <div class="jumbotron">                    
                    <div class="form-row">  
                        <div class="form-group col-md-6">                                
                            <h2 class="logo">Monarka</h2>
                        </div>
                        <div class="form-group col-md-6">                                
                                    <form action="/login/modelogin.php" method="POST" onsubmit="return validar();">
                                        <div class="container">
                                        
                                            
                                            <div class="row justify-content-center">
                                                <div class="col-4"><i class="fas fa-user-circle text-center fa-7x "></i></div>                                                
                                            </div>
                                            <br>
                                            <div class="row justify-content-center">
                                                <div class="col-15">
                                                    <h5 class="letras">Email:</h5>
                                                    <input type="email" class="form-control" id="inputEmailv" name="txtEmailL" require>
                                                </div>                                                
                                            </div>
                                            <br>
                                            <div class="row justify-content-center, letras">
                                            <div class="col-15">
                                                    <h5>Contraseña:</h5>
                                                        <div class="row">
                                                            <div class="col-8">
                                                            <input type="password" class="form-control" name="txtContraseniaL" id="inputPasswordv" require>
                                                            </div>
                                                            <div class="col-3">
                                                            <button class="btn boton_crear text-white" type="button" onclick="mostrarContrasenaC()"><i class="fas fa-eye"></i></button>
                                                            </div>                                                                                                                        
                                                        </div>
                                                    
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row justify-content-around">
                                                <div class="col-7">
                                                    <input type="submit" class="btn boton_crear text-black, nav1"  name="" value="Iniciar Sesión">
                                                </div>
                                                <div class="col-4">
                                                    <input class="btn btn-dark text-white right" type="reset" name="" value="Cancelar">
                                                </div>
                                            </div>                                            
                                            
                                        </div>
                                    </form>                                                            
                        </div>
                    </div>       
                    </div>       
                </div>        
    </div>
    
<!--Fin del Cuerpo de la pagina-->    

<!--Piede de pagina-->    
<footer>
    <!--<div class="container-fluid bg-dark text-white text-center p-5">-->
    <div class="nav1  text-black text-center p-5 letras">
        <p>&copy; Todos los derechos reservados :: Empresa CODEWAY 2020</p>
    </div>
</footer>
<!-- Fin Piede de pagina-->    
<script>
  function mostrarContrasenaC(){
      var tipo = document.getElementById("inputPasswordv");
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