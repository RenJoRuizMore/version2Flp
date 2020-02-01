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
                eleiminar();
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
              $.ajax({
                type: "POST",
                data: {id_clientes_e:id_clientes},
                url: 'ir_editar_cliente',
                success: function (response) {
                   window.location="ir_editar_cliente";
                   // console.log(response);
                   
                }
            });
        });
    }
    
    
        function eleiminar() {
        $('.delete_edit').click(function () {
            var id_input_x = $(this).attr('id');
            // index_lista = id_input;
            var id_input = lista_jefes[id_input_x].id_cliente;
            alertify.confirm("Factura Compra", "Desea Eliminar el usuario <b> " + lista_jefes[id_input_x].nombre +  " </b> de la lista",
                    function () {
                        $.ajax({
                            type: "GET",
                            data: {id_e: id_input},
                            url: 'eliminar_por_id_clientes',
                            success: function (response) {
                                //.success('se guardaron los cambios exitosamente');
                                lista_jefes = [];
                                index_lista = 0;
                                listar_tmp();
                            },
                            error: function (response) {
                                alert("hubo un error del servidor");
                            }
                        });
                    }
            ,
                    function () {//cancelo
                    });

        });
    }
    
    
  function inicio(){
      listar_tmp();
  };
  
});
