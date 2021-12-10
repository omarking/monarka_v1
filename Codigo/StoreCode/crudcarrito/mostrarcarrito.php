<?php
//session_start();   
$mensaje="";
/*
$_POST['idenProd'];
$_POST['nombre'];
$_POST['Precio'];
$_POST['cantidad'];
$_POST['usuventa'];

                $mensaje = "OK ID correcto".$id;
                $nombre = $_POST['nombre'];
                $precio = $_POST['Precio'];
                $cantidad =$_POST['cantidad'];
                $usuarioIden =$_POST['usuventa'];
*/

//hile ($usuarioIden != $id) {
if(isset($_POST['btnAccion'])){   
    switch ($_POST['btnAccion']){
        
        //case 'EliminarUnset':
           // echo 'click sobre los unset';
            //unset($_SESSION['CARRITO']); 
            //unset($_SESSION['CARRITO2']);
            //break;

        case'Agregar':
            
            if(is_numeric(openssl_decrypt($_POST['idenProd'],COD,KEY))){
                $id=openssl_decrypt($_POST['idenProd'],COD,KEY);
                $mensaje.= "Ok ID correcto -> ".$id."<br>";//  Quitar el Id en el mensaje

            }else {
                $mensaje.= "OOps ID Incorrecto".$id."<br>";
            } 

            if(is_string(openssl_decrypt($_POST['nombre'],COD,KEY))){
                $nombre= openssl_decrypt($_POST['nombre'],COD,KEY);
                $mensaje.= "Ok Nombre correcto -> ".$nombre."<br>";
            }else{
                $mensaje.= "OOps algo a pasado con el Nombre" ."<br>";
                break;
            }
            
            if(is_numeric($_POST['cantidad'])){
                $cantidad=($_POST['cantidad']);                
                $mensaje.= "Ok Cantidad correcta -> ".$cantidad."<br>";
            }else {
                $mensaje.= "OOps algo pasa con la cantidad"."<br>";
                break;
            } 

            if(is_string(openssl_decrypt($_POST['usuventa'],COD,KEY))){
                $usuarioIden= openssl_decrypt($_POST['usuventa'],COD,KEY);
                $mensaje.= "Ok Nombre correcto -> ".$usuarioIden."<br>";
            }else{
                $mensaje.= "OOps algo a pasado con el Nombre" ."<br>";
                break;
            }

            if(is_numeric(openssl_decrypt($_POST['Precio'],COD,KEY))){
                $precio=openssl_decrypt($_POST['Precio'],COD,KEY);                
                $mensaje.= "Ok Precio correcto -> ".$precio."<br>";
            }else {
                $mensaje.= "OOps algo pasa con el Precio";
                break;
            } 
            if(is_numeric(openssl_decrypt($_POST['usuventa'],COD,KEY))){
                $usuarioIden=openssl_decrypt($_POST['usuventa'],COD,KEY);
                $mensaje.= "Ok ID Usuario correcto -> ".$id."<br>";//  Quitar el Id en el mensaje

            }else{
                $mensaje.= "OOps ID usuario incorrecto".$id."<br>";
            }


            //unset($_SESSION['CARRITO']);

            if(!isset($_SESSION['CARRITO'])){// Sino existe esa variable de sesion -> Recupera la informacion y lamacena el el array
                $producto=array(
                    'id'=> $id,
                    'nombre'=> $nombre,
                    'cantidad'=> $cantidad,
                    'precio'=> $precio                    
                );
                $_SESSION['CARRITO'][0]=$producto;//Crear un espacio en el arreglo
                $mensaje ="Producto agregado a carrito";
                //$mensaje2 = "Puedes finalizar tu compra o agregar más productos a tu carrito";
            }else{
                $idProductos=array_column($_SESSION['CARRITO'],"id");//Deposita los id al carritos de compras

                if(in_array($id,$idProductos)){//Si el id esta en arreglo, entonces el producto ya ha sido seleccionado
                    //echo "<script>alert('El producto ya ha sido seleccionado');</script>";
                    $mensaje="El producto ya ha sido seleccionado";
                }else{       //en caso contrario si el id no esta en el arreglo, entonces lo agrga al carrito
                    $numeroProductos = count($_SESSION['CARRITO']);//Contabiliza//Valor1
                    $producto=array(
                        'id'=> $id,
                        'nombre'=> $nombre,
                        'cantidad'=> $cantidad,
                        'precio'=> $precio                    
                    );
                    $_SESSION['CARRITO'][$numeroProductos]=$producto;
                    $mensaje ="Producto agregado a carrito";
                    $mensaje2 = "Puedes finalizar tu compra o agregar más productos a tu carrito";
                }
            }
            
//AQUI TERMINAN LOS IF          
break;
case 'Eliminar1':
   
    $aux = 0;
    
    if(is_numeric(openssl_decrypt($_POST['id'],COD,KEY))){
        $id = openssl_decrypt($_POST['id'],COD,KEY);
        //echo "El id correspondiente del elemento: ";
        //echo $id;
        
        foreach(($_SESSION['CARRITO']) as $indice=>$producto){
            $aux = $aux + 1;    
            //echo $producto['id'];
            //echo '/';
            //echo $id;    
            if($producto['id']==$id){
              
                //echo $aux;    
                //echo "Entro por condicion: ";
                //echo $producto['nombre'];
                //echo $indice;
                //echo $producto['id'];
                unset($_SESSION['CARRITO'][$indice]);
                //break;
                //echo "<script>alert('Elemento borrado..');</script>";
            }

        }
    }


break;        
case 'Eliminar2':            
    if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY ))){
        $id = openssl_decrypt($_POST['id'],COD,KEY);
        
        foreach(($_SESSION['CARRITO2']) as $indice=>$producto){                 
            if($producto['id']==$id){
                unset($_SESSION['CARRITO2'][$indice]);
                echo "<script>alert('Elemento borrado..');</script>";
            }

        }
    }


break;


case'Guardar':
    $x = 10;
    if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY ))){
        $id = openssl_decrypt($_POST['id'],COD,KEY);

        foreach(($_SESSION['CARRITO']) as $indice=>$producto){                 
            if($producto['id']==$id){
                
               // for ($i = 0; $i < 6; $i++) {
                   // $x += $i;
                //}
                $_SESSION['Guardar'][$id]=$producto;//Crear un espacio en el arreglo
                $mensaje ="Producto agregado a carrito";
                unset($_SESSION['CARRITO'][$indice]);
                echo "<script>alert('Elemento guardado..');</script>";

               //}else{       //en caso contrario si el id no esta en el arreglo, entonces lo agrga al carrito
               // $numeroProductos = count($_SESSION['CARRITO']);//Contabiliza//Valor1
                //$_SESSION['Guardar'][$numeroProductos]=$producto;
         }

        }
    }else {
        //$mensaje.= "OOps ID Incorrecto".$id."<br>";
    } 
    break;
    //$mensaje =print_r($_SESSION['CARRITO'],TRUE);
   
}
}
//echo $usuarioIden++;  
// antes del incremento
//(post-incremento) */
//}

?>