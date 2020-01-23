/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// lamado de jquery
$(document).ready(function(){
   // enrutar un indce atraves de llamadas jquery de rutas 
   //llamra al action registrar pedido 
   $('.frutas').click(function(){
         $.ajax({
            type: "POST",
            url: 'ir_registrar_pedidosw',
            success: function (response) {
                //console.log(response);
               // alert("con exito");
               // pasa el windows a ota seccion 
                alertify.success('se inserto exitosamente');
                 window.location="ir_registrar_pedidosw.action";
            }
        });
   });
       
   
   
   
    
});

