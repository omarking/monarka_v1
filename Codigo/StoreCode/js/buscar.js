$(function () {
  $('#form-search').submit(function(e) {
      e.preventDefault();
  
  })
$('#buscar').keyup(function(){
  var envio= $('#buscar').val();
  $('#resultado-q').html('<h4>< width="20" height="20" /> cargando</h4>');
  $.buscar({
    type: 'post',
    url: '../home/home.php',
    data: ('buscar'=envio),
    success: function(respuesta) {
        if(respuesta != ''){
            $('#resultado-q').html(respuesta);
        }
      }
    })
  })
})


