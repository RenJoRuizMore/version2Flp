/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    inicio();
    lista_productos=[];
    lst_pedidos=[];
    lst_paises=[];
    var total_pagar=0;
    var id_cliente_d;
    // variables 
    var id_producto_e;
    var total_pago_por_contenedor=0;
    // precio segun tipo de via
    var tipo_via=0;
    var precio_prodcuto_por_kilo=0;
    // pedidos
    $('#btn_calcular').click(function(){
        total_pagar=0;
        var coste_por_malla=0;
        if($("#check_responder").is(':checked')) {  
            
           coste_por_malla = lst_pedidos.costo_malla;
        }
        total_pagar= total_pago_por_contenedor * $('#txt_precio_prod').val() * 
                $('#txt_cant_contenedores').val() + tipo_via + coste_por_malla;
        $('#txt_precio_total').val(total_pagar);
    });
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
        //console.log(lista_productos);
        $('#txt_precio_prod').val(lista_productos[id].precio_por_kilo);
        id_producto_e=id;
    });
    // combo del tipo de envio 
     $('#tipo_envio').change(function(){
        //obtener el valor del texto seleccionado
        var id=$('#tipo_envio option:selected').index();
        //console.log(lista_productos);
    
        if (id==2) {
            tipo_via = lst_pedidos.precio_pallet_mar;
        }
        if(id==3){
           tipo_via = lst_pedidos.precio_pallet_aire;
        }
       
    });
    
    // inicio
    function inicio(){
        traer_productos();
        llenar_combo_paisess();
        traer_id_cliente();
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
                           $('#select_produ').append(
                          '<option class="opciones" value="'+response[x].id_producto+'">'+response[x].descipcion+'</option>' );
                              // traer precio kilo precio_prodcuto_por_kilo;
                              //precio_prodcuto_por_kilo = response.lista_especialdsf
                          }
                      }
                  }) ;
     }
     
     
       // cargar los productos 
      function traer_id_cliente(){
               $.ajax({
                      type:"GET",
                      url: 'usuario_load',
                      success: function(response){
                      //var cant_list=response.length;
                       id_cliente_d = response; 
                       console.log(id_cliente_d);
                      }
                  }) ;
     }
     
     
     
      // traer datos de la configuracion 
    $.ajax({
       type: "POST",
       url: 'traer_datos_configuracion',
       success : function(response){
           lst_pedidos = response;
           
           total_pago_por_contenedor = response.pallet_por_contenedor * response.cajas_por_pallet * response.kilo_por_caja;
          
           // operacion con exito 
           /*
           $('#txt_costo_malla').val(response.costo_malla);
           $('#txt_precio_por_kilo').val(response.kilo_por_caja);
           $('#txt_tipo_cambio_venta').val(response.tipo_cambio_venta);
           $('#txt_tipo_cambio_compra').val(response.tipo_cambio_compra);
           // dias maximo no competen en la configuracion ya que van deacuerdo a los paises
           $('#txt_kilos_por_caja').val(response.kilo_por_caja);
           $('#txt_num_cajas_pallet').val(response.cajas_por_pallet);
           $('#txt_num_contene_pallet').val(response.pallet_por_contenedor);
           $('#txt_precio_env_areo').val(response.precio_pallet_aire);
           $('#txt_precio_env_mari').val(response.precio_pallet_mar);*/
           
           
       },
       error : function(response){
           console.log("no hubo respuesta del servidor");
       }
        
    });
    
    
    // llenar comobo de paises 
     function llenar_combo_paisess() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'traer_datos_paises',
            success: function (response) {
                //alert(response);
                lst_paises =response;
                console.log(response[0].nombre_paises);
                var cantidad = response.length;
                llenar_combo_paises(cantidad,response);
            },
            error: function (response) {
                alert("hubo un error del servidor");
            }
        });
    }
     function llenar_combo_paises(cantidad_datos, respondar){
        $('.cbx_pro_tmpdetfac').remove();//clase CSS q remove todas las acitvite
        for (var k = 0; k < cantidad_datos; k++) {
            // input of data    
            var descripcion = respondar[k].nombre_paises;
            var id_value_area = respondar[k].id_paises;
           //console.log(k);
           // $('.chosen-results').append('<li>'+k+'</li>' );
            $('#cbx_paisesr').append('<option class="cbx_pro_tmpdetfac" value="' + 
                    id_value_area + '">'+ descripcion +'</option>' );
        }
    } 
    function verificacion_dias_maximos(d_maximo,d_minimos , dia_input){
        $('#msj_dias').text('');
        if (dia_input <= d_maximo && dia_input >= d_minimos ) {
            
            $('#msj_dias').text('rango de dias validos');
            $('#txt_max_dias').css("background-color","white");
        }
        else{
            $('#msj_dias').text('los dias deben estar entre :'+d_minimos + " y "+ d_maximo);
            $('#msj_dias').css("color","red");
        }
    }
    // funcion de change en el combo paises
    $('#cbx_paisesr').change(function(){
        // obtener el id los pasises;
        var id_pasises=$('.cbx_pro_tmpdetfac').attr('value');
        var d_maximo= lst_paises[id_pasises].max_dias_llegada;
        var d_minimos= lst_paises[id_pasises].min_dias_llegada;
        var  dia_input= $('#txt_max_dias').val();
        verificacion_dias_maximos(d_maximo,d_minimos , dia_input);
    });
    
    // funcion para envio de pedidos usando el objeto form data 
    
    $('#btn_registrar_Pedido').click(function(){
        // objeto forma data 
         var datos_a_enviar= new FormData();
        // poner los datos como query 
        datos_a_enviar.append('maximo_dias_llegada_e',$('#txt_max_dias').val());
        datos_a_enviar.append('tipo_envio_e',1);
        datos_a_enviar.append('cantidad_contenedores_e',$('#txt_cant_contenedores').val());
        datos_a_enviar.append('emplea_malla_e',1);
        datos_a_enviar.append('precio_por_kilogramo_e',$('#txt_precio_prod').val());
        datos_a_enviar.append('precio_total_pedido_e',$('#txt_precio_total').val());
        datos_a_enviar.append('destinatario_e',$('#txt_destinatario').val());
        datos_a_enviar.append('direccion_e',$('#txt_direccion').val());
        datos_a_enviar.append('email_e',$('#txt_email').val());
        datos_a_enviar.append('id_pais_e',2);
        datos_a_enviar.append('region_provincia_e',$('#txt_region').val());
        datos_a_enviar.append('ciudad_e',$('#txt_ciudad').val());
        datos_a_enviar.append('codigo_postal_e',$('#txt_codigo_postal').val());
        datos_a_enviar.append('telefono_e',$('#txt_telefono').val());
       // enviar datos del  fichero  
       datos_a_enviar.append('fichero_enviado',$('#txt_archivo')[0].files[0]);
        alert($('#txt_archivo')[0].files[0]);
        datos_a_enviar.append('observaciones_e',$('#txt_observaciones').val());
        datos_a_enviar.append('id_user_cliente_e',id_cliente_d);
        datos_a_enviar.append('id_producto_e',id_producto_e);
        $.ajax({
           type : "POST",
           enctype: 'multipart/form-data',
           contentType: false,
           data: datos_a_enviar,
           url : 'test_envio',
           processData: false,
	   cache: false,
           success : function(response){
             console.log(response);  
           },
           error : function(response){
             console.log("error : "+ response);  
           }
        });
        
    });
    
    
     
});

