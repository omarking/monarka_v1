// Validar Cantidad del producto antes de agregar
$('#txt_cant_producto').keyup(function(e){
    e.preventDefault();
    
    var precio_total= $(this).val() * $('#txt_precio').html();
    var existencia= parseInt($('#txt_existencia').html());
    $('#txt_precio_total').html(precio_total);
    // Ocualtar el boton de agregar si la cantidad es menor que 1
    if(($(this).val() < 1 || isNaN($(this).val())) || ($(this).val() > existencia)){
        $('#add_product_venta').slideUp();        
    }else{
        $('#add_product_venta').slideDown();
    }
});