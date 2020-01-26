/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
   // listar los jefes de area con sus respectivas areas
   inicio();
   
    function click_editar() {
        $('.lst_edit').click(function () {
            var id_input=$(this).attr('id');
            traer_datos(id_input);
        });
    }
   
   function traer_datos(id_input){
       $.ajax({
          type: "GET",
          data:{id_e:id_input},
          url : 'traer_datos_por_id',
          success: function(response){
            
            
            $('#m_txt_nombres').val(response.nombre);
            $('#m_txt_apellidos').val(response.apellidos);
            $('#m_txt_email').val(response.email);
            //$('#m_txt_usuario').val(response.usuario.user);
            $('#cbx_estado_cuenta').val(response.turno);
            $('#m_txt_area_produccion').val(response.obj_area_produccion.nombre_area_produccion);
            
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
                lista_usu = response;
                agregar_filas_tmp_detfactura(cantidad, lista_usu);
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
            var Cuenta_Activa = respondar[k].turno;
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
   }
   
   
});

