/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
  
   /* 
    * cuando se cargan las listas en las tablas se cargan apartir de dos funciones
    * una que arma los datos segun la tabla y otro que trae los datos de la cosnulta sql 
    * */
   inicio();
    var lista_pedidos;
    function listar_tmp() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'lst_pedidos_pendientes',
            success: function (response) {
                // cojia y limpiaba dagtos 
                // console.log(response.lst_datos_usuario);
                var cantidad = response.length;//console.log("count lista_detsalida : "+cantidad);
                lista_pedidos = response;
                console.log(lista_pedidos);
                agregar_filas_tmp_detfactura(cantidad, lista_pedidos);
                //click_boton_venta();
                //venta_producto();
                // click a un determinado boton  
                click_enviar_area();
                //eleiminar();
            }
        });
    }
   // listado de los jefes de area
    function agregar_filas_tmp_detfactura(cantidad_datos, respondar) {
        $('.fila_pro_tmpdetfac').remove();//clase CSS q remove todas las acitvite
        for (var k = 0; k < cantidad_datos; k++) {
            // input of data 
            var Codigo_pedido = respondar[k].codigo_pedido;
            var nombre_producto = respondar[k].nombre_producto;
            var fecha_periodo = respondar[k].fecha;
            var dias_restantes = respondar[k].dias_restantes;
            var destinatario = respondar[k].destinatario;
            var pago_clientes = respondar[k].pregunta;
            $('#contenido_pedidos').append('<tr class="fila_pro_tmpdetfac" id="' + k + '"> ' +
                    '<td>' + (k + 1) + '</td> <td>' + Codigo_pedido + '</td> \n\
                     <td>' + nombre_producto + '</td>' +
                    '<td>' + fecha_periodo + '</td>' +
                    '<td>' + dias_restantes + '</td>' +
                    '<td>' + destinatario + '</td>' +
                    '<td>' + pago_clientes + '</td>' +
                    '<td>'+
                        '<p><a href="#!" class="btn btn-primary btn-raised class_enviar_area btn-xs" id= ' + k + ' ><i class="fa fa-search"></i>'
                          + 'Enviar area Producc</a></p>'+
                             '<p><a href="#!" class="btn btn-primary btn-raised btn-xs" id= ' + k + ' ><i class="fa fa-search"></i>'
                          + 'Ver detalle pedidos </a></p>'+
                             '<p><a href="#!" class="btn btn-primary btn-raised btn-xs" id= ' + k + ' ><i class="fa fa-search"></i>'
                          + 'Ver estado de pedido</a></p>'+
                     '</td>'+
                    '</tr>'
                    );
        }
    }
    
    function click_enviar_area(){
        $('.class_enviar_area').click(function(){
            var indice =$(this).attr('id');
            var id_pedido=lista_pedidos[indice].id_pedido;
            alertify.confirm(" Envio de Pedido a Area", "Desea enviar a area de produccion? ",
            // si da como  resultado si 
                            function () {
                                $.ajax({
                                    type: 'POST',
                                    data: {id_pedido_d:id_pedido},
                                    url: 'enviar_area_recpcion',
                                    success: function (response) {
                                        inicio();
                                    },
                                    error: function (response) {
                                       console.log(response);
                                    }

                                });
                            }
            ,
            // si da como resultado no
            function(){
                
            });
          });
        };
    
    
    
    function inicio(){
        lista_pedidos = [];
        listar_tmp();
    }
    
   
});



