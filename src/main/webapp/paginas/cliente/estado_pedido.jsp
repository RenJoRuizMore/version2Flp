<%-- 
    Document   : ListaClientes
    Created on : 14/01/2020, 10:38:34 AM
    Author     : Rene Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flp</title>

<!-- Bootstrap -->
<%@include file="../source_css/enlaces_css.jsp" %>

<style type="text/css">
	.perfil{
		padding: 0px !important;
	}
    .centro{
    	margin: 0px auto 0px auto !important;
    	text-align: center;
    }
</style>
</head>
<body onload="initialize()" class="inner_page innerpage">
    <div class="bg_parallax" id="inb">
        <!--navigation swipe-->
        <div class="menu-btn">&#9776;</div>
        <nav class="pushy pushy-left">
            <div class="profile">
                <div class="avatar"><img src="../../img/avatarlogo.jpg" alt="#"></div>
                <h3><a href="03.html">Bienvenido Flp</a></h3>
                <a href="#" class="log_btn">Acceso</a>
            </div>
         <!-- codigo de menus -->
          <%@include file="../manejo_menus/jefe_planta/menu.jsp"  %>
        </nav>
        <!-- modal para logueo-->
        <div class="add_place none" id="autorized">
            <div class="place_form login_form">
                <i class="fa fa-times close_window" id="closeau"></i>
                <h3>Acceso Al Sistema<span></span></h3>
                <form action="loguear" method="post">
                    <label>Usuario:<input type="text" name="txt_user"></label>
                    <label>Contraseña:<input type="text" name="txt_contrasenia"></label>
                    <center>
                        <button type="submit" class="btn btn-success" style="margin-bottom:40px;">
                            <i class="fa fa-power-off"></i> Iniciar </button>
                    </center>

                </form>
            </div>
        </div>
        <div class="site-overlay"></div>
        <div id="container">
            <!--header-->
            <div class="container-fluid header inner_head">
                <div class="fixed_w">
                    <div class="row">
                        <div class="col-md-12"><a href="index.html" class="logo"><img src="../../img/logo1.png" alt="Flp"/></a>
                            <a href="RegistroUsuarios.jsp" class="green_btn_header " id="ad"><i class="fa fa-marker"></i>Registrate</a>
                            <a href="#" class="green_btn_header" id="ad">Productos</a>
                            <a href="#" class="green_btn_header" id="ad">Ubicacion</a>
                            <a href="index.jsp" class="green_btn_header" id="ad">Inicio</a></div>
                    </div>
                </div>
            </div>
            <!-- saltos de linea -->
            <div>
                <br><br>
                <br><br>
            </div>
            <div class="container body" style="background:white;height:100%;">
                <div class="row centro">
                    
                     <!--content-->
                     <div class="col-md-4 basic col-md-offset-4" style="border: #DDD solid 1px">
                        <div class="place_inn">
                            <h3>Estado Actual de Pedido </h3>
                            <hr>
                            <div class="form-group">
                                <label>Codigo Pedido</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="text"  class="form-control" id="txt_produc"  placeholder="Ingresar Nombre ">
                                </div> 
                            </div>
                            
                             <div class="form-group">
                                <label>Producto</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="text"  class="form-control" id="txt_produc"  placeholder="Ingresar Nombre ">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*nombre de empleado</small>
                            </div>
                            
                            <div class="form-group">
                                <label>¿Pago el Pedido? </label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="text"  class="form-control" id="txt_produc"  placeholder="Ingresar Nombre ">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*nombre de empleado</small>
                            </div>
                            
                             <div class="form-group">
                                <label>Area ultima en donde se derivo el pedido  </label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="text"  class="form-control" id="txt_produc"  placeholder="Ingresar Nombre ">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*nombre de empleado</small>
                            </div>
                               <div class="form-group">
                                <label>¿Llego a su destino el pedido? </label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="number"  class="form-control" id="txt_produc"  placeholder="Ingresar Nombre ">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*nombre de empleado</small>
                            </div>
                               <div class="form-group">
                                <label>Ultima fecha de salida</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="number"  class="form-control" id="txt_produc"  placeholder="Ingresar Nombre ">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*nombre de empleado</small>
                            </div>
                        </div>
                    </div>
                     
                     <!-- tabla de seguimiento de productos -->
                     <div class="col-md-8 col-md-offset-2">
                         <table class="table table-hover text-center">
                             <thead>
                                 <tr>
                                     <th class="text-center">#</th>
                                     <th class="text-center">Area_Produccion</th>
                                     <th class="text-center">Fecha de Entrada</th>
                                     <th class="text-center">Hora de Entrada</th>                                                
                                     <th class="text-center">Fecha de Salida</th>     
                                     <th class="text-center">Hora de salida</th>
                                 </tr>
                             </thead>                                            
                             <tbody id="contenido_factura">
                                 
                         
                             </tbody>
                         </table>
                     </div>
                     
                </div>

            </div>
        </div>
    </div>




<!--
#################################
- SCRIPT FILES -
#################################
-->
<%@include file="../source_js/enlaces_js.jsp" %>
<!--Parallax bg-->
<script type="text/javascript">
"use strict";
$('#inb').parallax({
'elements': [
{
'selector': '#inb',
'properties': {
'x': {
'background-position-x': {
'initial': 0,
'multiplier': 0.03,
'invert': true
}
},
'y': {
'background-position-y': {
'initial': 30,
'multiplier': 0.03,
'invert': true
}
}
}
}
]
});
</script>
<!--Flickr widget-->
<script type="text/javascript">
"use strict";
$('#basicuse').jflickrfeed({
limit: 6,
qstrings: {
id: '52617155@N08'
},
itemTemplate: 
'<li>' +
'<a href="{{image_b}}"><img src="{{image_m}}" alt="{{title}}" /></a>' +
'</li>'
});
</script>
</body>
</html>




