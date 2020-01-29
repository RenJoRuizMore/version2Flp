/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    inicio();
   var lista_jefes=[];
   var index_lista;
  
    function listar_tmp() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'lst_clientes',
            success: function (response) {
                // cojia y limpiaba dagtos 
                // console.log(response.lst_datos_usuario);
                var cantidad = response.length;//console.log("count lista_detsalida : "+cantidad);
                lista_jefes = response;
                console.log(lista_jefes);
                agregar_filas_tmp_detfactura(cantidad, lista_jefes);
                //click_boton_venta();
                //venta_producto();
                // click a un determinado boton  
                click_editar();
                //eleiminar();
            }
        });
    }
   
   // listado de los jefes de area
    function agregar_filas_tmp_detfactura(cantidad_datos, respondar) {
        $('.fila_pro_tmpdetfac').remove();//clase CSS q remove todas las acitvite
        for (var k = 0; k < cantidad_datos; k++) {
            // input of data 
            var Representante = respondar[k].nombre;
            var Razon_Social = respondar[k].razon_social;
            var Email = respondar[k].email;
            var Telefono = respondar[k].telefono;
            var Cantidad_pedidos = respondar[k].cantidad_pedidos;
            $('#contenido_clientes').append('<tr class="fila_pro_tmpdetfac" id="' + k + '"> ' +
                    '<td>' + (k + 1) + '</td> <td>' + Representante + '</td> \n\
                     <td>' + Razon_Social + '</td>' +
                    '<td>' + Email + '</td>' +
                    '<td>' + Telefono + '</td>' +
                    '<td>' + Cantidad_pedidos + '</td>' +
                    '<td> <button class="btn btn-primary lst_edit" data-toggle="modal" data-target="#nuevoProducto" id= ' + k + ' > <i class="fa  fa-edit">\n\
                     </i></button>  ' +
                     '<button class="btn btn-primary delete_edit"  id= ' + k + ' > <i class="fa  fa-trash-o">\n\
                     </i></button>' +
                     '</td>'+ 
                    '</tr>'
                    );
        }
    }  
    
      function click_editar() {
        $('.lst_edit').click(function () {
            var id_input = $(this).attr('id');
            index_lista = id_input;
            var id_clientes = lista_jefes[id_input].id_cliente;
            //var id_e= lista_jefes[id_input].
            /*
             * $('#m_txt_nombres').val(lista_jefes[id_input].nombre);
            $('#m_txt_apellidos').val(lista_jefes[id_input].apellidos);
            $('#m_txt_email').val(lista_jefes[id_input].email);
            $('#m_txt_usuario').val(lista_jefes[id_input].usuario.user);
            $('#m_txt_direccion').val(lista_jefes[id_input].direccion);
            $('#m_txt_telefono').val(lista_jefes[id_input].telefono);
            // Password m_txt_telefono
            $('#m_txt_contra').val(lista_jefes[id_input].usuario.password);
            $("#cbx_estado_cuenta option[value='" + lista_jefes[id_input].estado + "']").attr("selected", true);
            // id_area_produccion
            $("#m_txt_area_produccion option[value='" + lista_jefes[id_input].obj_area_produccion.id_area_produccion + "']").attr("selected", true);
            */
              $.ajax({
                type: "POST",
                data: {id_clientes_e:id_clientes},
                url: 'ir_editar_cliente',
                success: function (response) {
                   window.location="ir_editar_cliente";
                   // console.log(response);
                   $('#txt_nombre_representante_c').val("renejose");
                   //alert();
                }
            });
        });
    }  
    
    
  function inicio(){
      listar_tmp();
      
  };
  
});
