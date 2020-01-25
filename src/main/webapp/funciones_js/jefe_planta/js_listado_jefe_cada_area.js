/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
   // listar los jefes de area con sus respectivas areas
    function listar_tmp() {
        $.ajax({
            type: "GET",
            data: {},
            url: 'lst_jefes_area',
            success: function (response) {
                // cojia y limpiaba dagtos 
                console.log(response.lst_datos_usuario);
                var cantidad = response.lst_datos_usuario.length;//console.log("count lista_detsalida : "+cantidad);
                lista_usu = response.lst_datos_usuario;
                agregar_filas_tmp_detfactura(cantidad, lista_usu);
                click_boton_venta();
                venta_producto();
                // click a un determinado boton  
            }
        });
    }
   
   
   
   // listado de los jefes de area
    function agregar_filas_tmp_detfactura(cantidad_datos, respondar) {
        $('.fila_pro_tmpdetfac').remove();//clase CSS q remove todas las acitvite
       
        for (var k = 0; k < cantidad_datos; k++) {
            // input of data 
            var Nombres = respondar[k].turno;
            var Apellidos = respondar[k].nombre_persona;
            var Email = respondar[k].turno;
            var Usuario = respondar[k].nombre_persona;
            var Cuenta_Activa = respondar[k].turno;
            var Area_Producion = respondar[k].nombre_persona;
            var id_jefe_area= respondar[k].id_usuario;
            $('#contenido_lista_jefe_area').append('<tr class="fila_pro_tmpdetfac" id="' + k + '"> ' +
                    '<td>' + (k + 1) + '</td> <td>' + Nombres + '</td> \n\
                     <td>' + Apellidos + '</td>' +
                    '<td>' + Email + '</td>' +
                    '<td>' + Usuario + '</td>' +
                    '<td>' + Cuenta_Activa + '</td>' +
                    '<td>' + Area_Producion + '</td>' +
                    '<td> <button class="btn btn-primary ventas_dia"  id= ' + k + ' > <i class="fa  fa-edit">\n\
                     </i></button>' +
                     '<button class="btn btn-primary ventas_dia"  id= ' + k + ' > <i class="fa  fa-edit">\n\
                     </i></button>' +
                     '</td>'+ 
                    '</tr>'
                    );
        }
    }  
   
   
   
   
});

