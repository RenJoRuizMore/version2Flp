/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// logueo del la apliacion 
$(document).ready(function(){
    // registrar clientes 
    $('#btn_resgistar').click(function () {
        var txtnombre_representante = $('#txt_nombre_representante').val();
        var txtrazon_social = $('#txt_razon_social').val();
        var txtemail = $('#txt_email').val();
        var txt_pais = $('#txt_pais').val();
        var txt_region = $('#txt_region').val();
        var txt_ciudad = $('#txt_ciudad').val();
        var txt_direccion = $('#txt_direccion').val();
        var txt_codigo_postal = $('#txt_codigo_postal').val();
        var txt_telefono = $('#txt_telefono').val();
        var txt_usuario = $('#txt_usuario').val();
        var txt_contra = $('#txt_contra').val();
        var txt_tarjeta = $('#txt_tarjeta').val();
        var txt_verificacion = $('#txt_verificacion').val();
        var txt_mes_vencimiento = $('#txt_mes_vencimiento').val();
        var txt_año = $('#txt_año').val();
        // metodo post
        $.ajax({
            type: "POST",
            data: {txtnombre_representante_e: txtnombre_representante, txtrazon_social_e: txtrazon_social,
                txtemail_e:txtemail,txt_pais_e: txt_pais,txt_region_e:txt_region,txt_ciudad_e:txt_ciudad,
                txt_direccion_e:txt_direccion,txt_codigo_postal_e:txt_codigo_postal,txt_telefono_e:txt_telefono,
                txt_usuario:txt_usuario,
                txt_contra_e:txt_contra,txt_tarjeta_e:txt_tarjeta,txt_verificacion_e:txt_verificacion,
                txt_mes_vencimiento_e:txt_mes_vencimiento,txt_año_e:txt_año},
            url: 'registrar_cliente',
            success: function (response) {
                //console.log(response);
               // alert("con exito");
                alertify.success('se inserto exitosamente');
            }
        });
    });
    
    
   /* $('#btn_aceptar').click(function(){
        
        // envio de datos 
        var txtnumero = $('#txt_usuario').val();
        var txtpass= $('#txt_pass').val();
        // metodo post
            $.ajax({
            type:"POST",
            data:{txt_user:txtnumero,txt_contrasenia:txtpass},
            url: 'loguear.action',
            success: function(response){
          
            } 
        });
     }); */

});

