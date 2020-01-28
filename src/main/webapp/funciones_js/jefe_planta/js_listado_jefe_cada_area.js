/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
   // listar los jefes de area con sus respectivas areas
   inicio();
   var lista_jefes=[];
   var index_lista;
    function llenar_combo_areas_produccion() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'traer_datos_area_produccion',
            success: function (response) {
                //alert(response);
                var cantidad = response.length;
                llenar_combo_areas(cantidad,response);
            },
            error: function (response) {
                alert("hubo un error del servidor");
            }
        });
    }
    
     function llenar_combo_areas(cantidad_datos, respondar){
        $('.cbx_pro_tmpdetfac').remove();//clase CSS q remove todas las acitvite
        for (var k = 0; k < cantidad_datos; k++) {
            // input of data 
            var descripcion = respondar[k].nombre_area_produccion;
            var id_value_area = respondar[k].id_area_produccion;
            $('#m_txt_area_produccion').append('<option class="cbx_pro_tmpdetfac" value="' + 
                    id_value_area + '">'+ descripcion +'</option>' );
        }
    }
    // ::::::::::: guardar cambios de jefes de areas 
    // a la hacer click 
    $('#guardarjefe').click(function(){
        var nombre_e_x =$('#m_txt_nombres').val();
        var apellidos_e_x=$('#m_txt_apellidos').val();
        var email_e_x=$('#m_txt_email').val();
        var direccion_e_x = $('#m_txt_direccion').val();
        var estado_e_x = $('#cbx_estado_cuenta').val();
        var telefono_e_x = $('#m_txt_telefono').val();
        var usuario_e_x = $('#m_txt_usuario').val();
        var contrasenia_e_x = $('#m_txt_contra').val();
        var id_area_produccion_e_x = $('#m_txt_area_produccion').val();
        // in id_persona_e int, in id_jefe_area_e int
        var id_persona_e_x = lista_jefes[index_lista].id_persona;
        var id_jefe_area_e_x =lista_jefes[index_lista].id_jefe_area;
         $.ajax({
         type : "POST",
         data:{nombre_e:nombre_e_x,apellidos_e:apellidos_e_x,email_e: email_e_x,direccion_e : direccion_e_x,
         estado_e :estado_e_x,telefono_e : telefono_e_x,usuario_e : usuario_e_x,
         contrasenia_e : contrasenia_e_x,id_area_produccion_e : id_area_produccion_e_x,id_persona_e: id_persona_e_x,
         id_jefe_area_e :id_jefe_area_e_x},
         url:'modificar_jefes_area',
         success : function(response){
             alertify.success('se guardaron los cambios exitosamente');
             $('#nuevoProducto').modal('hide');
             // limpiar las cacjas y refrescar el listado 
             lista_jefes=[];
             index_lista=0;
             listar_tmp();
         } 
       });
    });
    
    
    function click_editar() {
        $('.lst_edit').click(function () {
            var id_input=$(this).attr('id');
            index_lista=id_input;
            console.log(lista_jefes[id_input]);
            $('#m_txt_nombres').val(lista_jefes[id_input].nombre);
            $('#m_txt_apellidos').val(lista_jefes[id_input].apellidos);
            $('#m_txt_email').val(lista_jefes[id_input].email);
            $('#m_txt_usuario').val(lista_jefes[id_input].usuario.user);
            $('#m_txt_direccion').val(lista_jefes[id_input].direccion);
            $('#m_txt_telefono').val(lista_jefes[id_input].telefono);
            // Password m_txt_telefono
            $('#m_txt_contra').val(lista_jefes[id_input].usuario.password);
            $("#cbx_estado_cuenta option[value='"+ lista_jefes[id_input].estado +"']").attr("selected",true);
            // id_area_produccion
            $("#m_txt_area_produccion option[value='" + lista_jefes[id_input].obj_area_produccion.id_area_produccion +"']").attr("selected",true);
        });
    }
   
   function traer_datos(id_input){
       $.ajax({
          type: "GET",
          data:{id_e:id_input},
          url : 'traer_datos_por_id',
          success: function(response){
            console.log(response);
            //alert(response);
            $('#m_txt_nombres').val();
            $('#m_txt_apellidos').val(response.apellidos);
            $('#m_txt_email').val(response.email);
           // $('#m_txt_usuario').val(response.usuario.user);
            $('#cbx_estado_cuenta').val(response.turno);
           // $('#m_txt_area_produccion').val(response.obj_area_produccion.nombre_area_produccion);
            
          },
          error: function(response){
              alert("hubo un error del servidor");
          }
       });
   };
   
    function listar_tmp() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'lst_jefes_area',
            success: function (response) {
                // cojia y limpiaba dagtos 
                // console.log(response.lst_datos_usuario);
                var cantidad = response.length;//console.log("count lista_detsalida : "+cantidad);
                lista_jefes = response;
                agregar_filas_tmp_detfactura(cantidad, lista_jefes);
                //click_boton_venta();
                //venta_producto();
                // click a un determinado boton  
                click_editar();
            }
        });
    }
   
   // listado de los jefes de area
    function agregar_filas_tmp_detfactura(cantidad_datos, respondar) {
        $('.fila_pro_tmpdetfac').remove();//clase CSS q remove todas las acitvite
       
        for (var k = 0; k < cantidad_datos; k++) {
            // input of data 
            var Nombres = respondar[k].nombre;
            var Apellidos = respondar[k].apellidos;
            var Email = respondar[k].email;
            var Usuario = respondar[k].usuario.user;
            var estado= respondar[k].estado;
            var Cuenta_Activa="Desactivado";
            if (estado === 0){
                Cuenta_Activa="Activado";
            };
            var Area_Producion = respondar[k].obj_area_produccion.nombre_area_produccion;
            var id_jefe_area= respondar[k].id_jefe_area;
            $('#contenido_lista_jefe_area').append('<tr class="fila_pro_tmpdetfac" id="' + k + '"> ' +
                    '<td>' + (k + 1) + '</td> <td>' + Nombres + '</td> \n\
                     <td>' + Apellidos + '</td>' +
                    '<td>' + Email + '</td>' +
                    '<td>' + Usuario + '</td>' +
                    '<td>' + Cuenta_Activa + '</td>' +
                    '<td>' + Area_Producion + '</td>' +
                    '<td> <button class="btn btn-primary lst_edit" data-toggle="modal" data-target="#nuevoProducto" id= ' + k + ' > <i class="fa  fa-edit">\n\
                     </i></button>  '  +
                     '<button class="btn btn-primary delete_edit" data-toggle="modal" data-target="#nuevoProducto" id= ' + k + ' > <i class="fa  fa-trash-o">\n\
                     </i></button>' +
                     '</td>'+ 
                    '</tr>'
                    );
        }
    }  
    
    
   
   
   //::: inicio :::.
   function inicio(){
       listar_tmp();
       llenar_combo_areas_produccion();
   }
   
   
});

