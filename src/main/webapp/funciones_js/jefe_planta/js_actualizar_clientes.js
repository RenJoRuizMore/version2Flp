/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    cargar_datos();
    lst_clientes=[];
     function cargar_datos() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'carga_datos',
            success: function (response) {
                console.log(response[0].nombre);
               // alert(response.nombre);
                lst_clientes = response;
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
          var nombre_representante_e_x = $('#txt_nombre_representante_c').val();
          var razon_social_e_x= $('#txt_razon_scocial_c').val();
          var email_e_x=   $('#txt_email_c').val();
          var pais_e_x=  $('#txt_pais_c').val();
          var region_e_x= $('#txt_region_c').val();
          var ciudad_e_x =$('#txt_ciudad_c').val();
          var direccion_e_x = $('#txt_direccion_c').val();
          var codigo_postal_e_x =$('#txt_codigo_postal_c').val();
          var telefono_e_x = $('#txt_telefonos_c').val();
          var password_e_x = $('#txt_clave_c').val();
          console.log(lst_clientes[0]);
          var id_persona_e_x =lst_clientes[0].id_persona;
          var id_usuario_e_x =lst_clientes[0].id_usuario;
          var id_cliente_e_x =lst_clientes[0].id_cliente;
          $.ajax({
            type: "POST",
            data: {nombre_representante_e:nombre_representante_e_x,razon_social_e : razon_social_e_x,
            email_e : email_e_x ,pais_e : pais_e_x,region_e :region_e_x ,ciudad_e : ciudad_e_x,
            direccion_e : direccion_e_x , codigo_postal_e: codigo_postal_e_x,telefono_e: telefono_e_x,
            password_e: password_e_x,id_persona_e:id_persona_e_x,id_usuario_e: id_usuario_e_x,
            id_cliente_e : id_cliente_e_x
            },
            url: 'guardar_datos_cliente',
            success: function (response) {
                //console.log(response[0].nombre);
               // alert(response.nombre);
               window.location="ir_listado_clientes";
            }
        });
    }
    
    
    $('#btn_guardar_clientes').click(function(){
        guardar_cambios();
    });
});
