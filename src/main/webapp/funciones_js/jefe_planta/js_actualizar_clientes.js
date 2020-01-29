/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    cargar_datos();
   
     function cargar_datos() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'carga_datos',
            success: function (response) {
                console.log(response[0].nombre);
               // alert(response.nombre);
                $('#txt_nombre_representante_c').val(response[0].nombre);
                $('#txt_razon_scocial_c').val(response[0].razon_social);
                $('#txt_email_c').val(response[0].email);
                $('#txt_pais_c').val(response[0].pais);
                $('#txt_region_c').val(response[0].region);
                $('#txt_ciudad_c').val(response[0].ciudad);
                $('#txt_direccion_c').val(response[0].direccion);
                $('#txt_codigo_postal_c').val(response[0].codigo_postal);
                $('#txt_telefonos_c').val(response[0].telefono);
                $('#txt_clave_c').val(response[0].usuario.password);
            }
        });
    }
    
    function guardar_cambios(){
          $.ajax({
            type: "POST",
            data: {},
            url: 'guardar_datos_cliente',
            success: function (response) {
                console.log(response[0].nombre);
               // alert(response.nombre);
                $('#txt_nombre_representante_c').val(response[0].nombre);
                $('#txt_razon_scocial_c').val(response[0].razon_social);
                $('#txt_email_c').val(response[0].email);
                $('#txt_pais_c').val(response[0].pais);
                $('#txt_region_c').val(response[0].region);
                $('#txt_ciudad_c').val(response[0].ciudad);
                $('#txt_direccion_c').val(response[0].direccion);
                $('#txt_codigo_postal_c').val(response[0].codigo_postal);
                $('#txt_telefonos_c').val(response[0].telefono);
                $('#txt_clave_c').val(response[0].usuario.password);
            }
        });
    }
    
    
});
