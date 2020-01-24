/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    
    // guardar cambios 
    $('#btn_guardar').click(function (){
        // recoger datos de las variables 
        var costo_malla = $('#txt_costo_malla').val(); 
        var kilo_por_caja = $('#txt_precio_por_kilo').val();
        var tipo_cambio_venta= $('#txt_tipo_cambio_venta').val();
        var tipo_cambio_compra = $('#txt_tipo_cambio_compra').val();
        var kilo_por_caja = $('#txt_kilos_por_caja').val();
        var cajas_por_pallet = $('#txt_num_cajas_pallet').val();
        
        var pallet_por_contenedor= $('#txt_num_contene_pallet').val();
        var precio_pallet_aire =$('#txt_precio_env_areo').val();
        var precio_pallet_mar = $('#txt_precio_env_mari').val();
        $.ajax({
           type: "POST",
           data : {costo_malla_e: costo_malla,kilo_por_caja_e :kilo_por_caja 
               ,tipo_cambio_venta_e :tipo_cambio_venta ,
               tipo_cambio_compra_e :tipo_cambio_compra ,cajas_por_pallet_e :cajas_por_pallet,
               pallet_por_contenedor_e :pallet_por_contenedor ,precio_pallet_aire_e :precio_pallet_aire,
               precio_pallet_mar_e :precio_pallet_mar
           },
           url: 'guardar_configuraciones', 
           success : function(response){
                alertify.success('se guardaron los cambios exitosamente');
           },
           error : function(response){
               alertify.success('hubo error en al consulta');
           }
        });
    });
    
    
    // traer datos de la configuracion 
    $.ajax({
       type: "POST",
       url: 'traer_datos_configuracion',
       success : function(response){
           // operacion con exito 
           $('#txt_costo_malla').val(response.costo_malla);
           $('#txt_precio_por_kilo').val(response.kilo_por_caja);
           $('#txt_tipo_cambio_venta').val(response.tipo_cambio_venta);
           $('#txt_tipo_cambio_compra').val(response.tipo_cambio_compra);
           // dias maximo no competen en la configuracion ya que van deacuerdo a los paises
           $('#txt_kilos_por_caja').val(response.kilo_por_caja);
           $('#txt_num_cajas_pallet').val(response.cajas_por_pallet);
           $('#txt_num_contene_pallet').val(response.pallet_por_contenedor);
           $('#txt_precio_env_areo').val(response.precio_pallet_aire);
           $('#txt_precio_env_mari').val(response.precio_pallet_mar);
           
           
       },
       error : function(response){
           console.log("no hubo respuesta del servidor");
       }
        
    });
    
    
});


