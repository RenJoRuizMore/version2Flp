<%-- 
    Document   : ConsultaPedidoPendiente
    Created on : 14/01/2020, 08:27:17 AM
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
<body class="inner_page innerpage">
    <div class="bg_parallax" id="inb">
        <!--navigation swipe-->
        <div class="menu-btn">&#9776;</div>
        <nav class="pushy pushy-left">
            <div class="profile">
                <div class="avatar"><img src="./img/avatarlogo.jpg" alt="#"></div>
                <h3><a href="03.html">Bienvenido Flp</a></h3>
                <a href="#" class="log_btn">Acceso</a>
            </div>
         <!-- codigo de menus -->
          <%@include file="../manejo_menus/clientes/menu.jsp"  %>
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
                        <div class="col-md-12"><a href="index.html" class="logo"><img src="./img/logo1.png" alt="Flp"/></a>
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
                <div class="row">
                 
                     <!--content-->
                    <div class="col-md-12 basic" >
                        <div class="" >
                                <!--Blog post style one-->
                            <div class="" >
                                  
                                <div class="">
                                      
                                    <h2><a href="#"> Consulta de Pedidos </a><span></span></h2><br>
                                    <div class="row">
                                      
                                        <div class="col-sm-2" id="div_fechai">
                                            <input type="date" class="form-control" id="txt_fechai">
                                            <small style="align-text:center;"> Fecha Inicial</small>
                                        </div>
                                        <div class="col-sm-2" id="div_fechaf">
                                            <input type="date" class="form-control" id="txt_fechaf">
                                            <small style="align-text:center;"> Fecha Final</small>
                                        </div> 
                                        <div class="col-sm-1">
                                            <button type="button" class="btn btn-primary" id="btn_buscar">
                                                <i class="fa  fa-search" ></i> Buscar
                                            </button>
                                        </div> 
                                         <div class="col-sm-3">
                                            <div class="form-group">
                                                <select class="form-control" id="cbx_vende">
                                                    <option value="0"> Todos los Productos </option>                                                      
                                                </select>
                                             </div>
                                        </div>
                                         <div class="col-sm-4">
                                            <div class="form-group">
                                                <select class="form-control" id="cbx_vende">
                                                    <option value="0"> Todos los Destinatarios </option>                                                      
                                                </select>
                                             </div>
                                        </div> 
                                    
                                    </div>  
                          
                                    
                                    <hr>
                                    
                                    <div class="p_text">
                                         <table class="table table-hover text-center">
                                            <thead>
                                              <tr>
                                                <th class="text-center">#</th>
                                                <th class="text-center">Codigo</th>
                                                <th class="text-center">Producto</th>
                                                <th class="text-center">Fecha Periodo</th>
                                                <th class="text-center">Dias Restantes</th>                                                
                                                <th class="text-center">Destinatario</th>     
                                                <th class="text-center">¿Pago de CLiente?</th>
                                                <th class="text-center">Opciones</th>
                                              </tr>
                                            </thead>                                            
                                             <tbody id="contenido_factura">
                                                <tr>
                                                    <td>1</td>
                                                    <td>360</td>
                                                    <td> 10 x 15 ARCHIVO/3032 DG</td>
                                                    <td> 12/12/2020</td>
                                                    <td> 10</td>
                                                    <td> Rne Jose</td>											 
                                                    <td> NO</td>
                                                    <td>
                                                    <p><a href="#!" class="btn btn-danger btn-raised btn-xs"><i class="fa fa-search"></i>
                                                                Enviar area Producc</a></p>
                                                   <p> <a href="#!" class="btn btn-danger btn-raised btn-xs"><i class="fa fa-trash-o"></i>
                                                    Ver detalle de pedido</a></p>
                                                    <p>
                                                    <a href="#!" class="btn btn-danger btn-raised btn-xs"><i class="fa fa-leaf"></i>
                                                        Ver estado de pedido</a>
                                                    </p>
                                                    </td>
                                                </tr>
                                                   <tr>
                                                    <td>1</td>
                                                    <td>360</td>
                                                    <td> 10 x 15 ARCHIVO/3032 DG</td>
                                                    <td> 12/12/2020</td>
                                                    <td> 10</td>
                                                    <td> Rne Jose</td>											 
                                                    <td> NO</td>
                                                    <td>
                                                        <p><a href="#!" class="btn btn-danger btn-raised btn-xs"><i class="fa fa-search"></i>
                                                                Ver Temperatura </a></p>
                                                   <p> <a href="#!" class="btn btn-danger btn-raised btn-xs"><i class="fa fa-trash-o"></i>
                                                    Ver detalle de pedido</a></p>
                                                    <p>
                                                    <a href="#!" class="btn btn-danger btn-raised btn-xs"><i class="fa fa-leaf"></i>
                                                        Ver estado de pedido</a>
                                                    </p>
                                                    </td>
                                                </tr>
                                                   <tr>
                                                    <td>1</td>
                                                    <td>360</td>
                                                    <td> 10 x 15 ARCHIVO/3032 DG</td>
                                                    <td> 12/12/2020</td>
                                                    <td> 10</td>
                                                    <td> Rne Jose</td>											 
                                                    <td> NO</td>
                                                    <td>
                                                        <p><a href="#!" class="btn btn-primary btn-raised btn-xs"><i class="fa fa-search"></i>
                                                                Enviar area Producc</a></p>
                                                    <p> <a href="#!" class="btn btn-success btn-raised btn-xs"><i class="fa fa-trash-o"></i>
                                                    Ver detalle de pedido</a></p>
                                                    <p>
                                                    <a href="#!" class="btn btn-danger btn-raised btn-xs"><i class="fa fa-leaf"></i>
                                                        Ver estado de pedido</a>
                                                    </p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                          </table>
                                    </div>
                                    <div aria-label="Page navigation example">
                                        <ul class="pagination pagination-sm" id="boton_lista_factura">

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
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



