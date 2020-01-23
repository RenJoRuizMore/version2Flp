/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    inicio();
    lista_productos=[];
    var precio_prodcuto_por_kilo=0;
    // llamar al traer productos 
    $('#btn_registrar_Pedido').click(function(){
      var cbx_productos= $('#select_produ').val();    
      var tipo_emvio=$('#tipo_envio').val();
      var txt_cantidad_contenedor= $('#txt_cant_contenedores').val();
      var max_dias_llegar= $('#txt_max_dias').val();
      var rpt_checked= $('input:checkbox[name=emplea_malla]:checked').val();
    });
    // seleccion de combo 
     // evento change de jquery
    $('#select_produ').change(function(){
        //obtener el valor del texto seleccionado
        var id=$('#select_produ option:selected').index();
        console.log(lista_productos[id]);
        $('#txt_precio_prod').val(lista_productos[id].precio_por_kilo);
    });
    // inicio
    function inicio(){
        traer_productos();
    }
    // cargar los productos 
      function traer_productos(){
               $.ajax({
                      type:"GET",
                      url: 'llenar_combo_productoss',
                      success: function(response){
                      var cant_list=response.length;
                      lista_productos = response;
                            // remover los datos
                          $('.opciones').remove();
                          for(var x=0;x<cant_list;x++){
                           $('#select_produ').append( '<option class="opciones" value="'+response[x].id_producto+'">'+response[x].descipcion+'</option>' );
                              // traer precio kilo precio_prodcuto_por_kilo;
                              //precio_prodcuto_por_kilo = response.lista_especialdsf
                          }
                      }
                  }) ;
     }
});

