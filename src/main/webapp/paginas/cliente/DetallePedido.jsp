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
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
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
                <div class="row">
                    <h1>Detalle de Pedido</h1>
                    <hr>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label >Producto Seleccionado</label>
                            <div class="input-group" id="datetimepicker1">
                                 <span class="input-group-addon">
                                    <span class="fa fa-user"></span>
                                </span>
                                <select class="form-control" id="txt_produ" disabled >
                                    <option>Producto1 </option>
                                    <option>Producto2 </option>
                                    <option>Producto3 </option>
                                    
                                </select>
                                
                               
                            </div>                                        
                            <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                        </div>
                          <div class="form-group">
                            <label >Tipo de Envio</label>
                            <div class="input-group" id="datetimepicker1">
                                 <span class="input-group-addon">
                                    <span class="fa fa-user-plus"></span>
                                </span>
                                 <select class="form-control" id="txt_produ" disabled >
                                    <option>Producto1 </option>
                                    <option>Producto2 </option>
                                    <option>Producto3 </option>
                                    
                                </select>
                               
                            </div>                                        
                            <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Cantidad Contenedores</label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-mail-reply-all"></span>
                                        </span>
                                        <input type="number" class="form-control" id="txt_produc" disabled >

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Dias Restante</label>
                                    <div class="input-group" id="datetimepicker1" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-language"></span>
                                        </span>
                                        <input type="number" class="form-control" id="txt_produc" disabled placeholder="Ingresar Pais">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                          
                      
                            <div class="form-group">
                                <label>Fecha de Pedido</label>
                                <div class="input-group" id="datetimepicker1">

                                    <input type="date" class="form-control" id="txt_produc" disabled>
                                   
                                </div>                                        
                                <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                            </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Precio por 1 kg de mango</label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-money"></span>
                                        </span>
                                        <input type="text" disabled class="form-control" id="txt_produc" disabled  placeholder="Ingresar Ciudad">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <div class="form-group">
                                    <label >Precio total por el pedido</label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-money"></span>
                                        </span>
                                        <input type="number" disabled class="form-control" disabled id="txt_produc"  placeholder="Ingresar Ciudad">

                                    </div>                                        
                                    <small id="emailHelp"  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label >Destinatario</label>
                            <div class="input-group" id="datetimepicker1">
                                <span class="input-group-addon">
                                    <span class="fa fa-money"></span>
                                </span>
                                <input type="number"  class="form-control" id="txt_produc" disabled  placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small id="emailHelp"  class="form-text text-muted">*nombre_representante</small>
                        </div>
                         <div class="form-group">
                            <label >Direccion</label>
                            <div class="input-group" id="datetimepicker1">
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_produc"  disabled placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                        </div>
                         
                        
                        
                    </div>
                                                
                    <!-- otra columna -->
                    <div class="col-md-6">
                    
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Email</label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-institution"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_produc" disabled  placeholder="Ingresar Razon SOcial">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Pais</label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-phone"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_produc" disabled  placeholder="Ingresar Razon SOcial">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Region /Provincia </label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-user-plus"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_produc" disabled placeholder="Ingresar Pais">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Ciudad </label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-key"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_produc" disabled  placeholder="Ingresar Region">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label >Codigo Postal</label>
                            <div class="input-group" id="datetimepicker1">
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_produc" disabled placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Telefono</label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-cc-visa"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_produc" disabled placeholder="Ingresar Ciudad">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Adjuntar Archivos</label>
                                    <div class="input-group" id="datetimepicker1">
                                        
                                        <input type="file"  id="txt_produc" >

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*se adjunta archivo</small>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label >Observaciones Adicionales</label>
                            <div class="input-group" id="datetimepicker1">
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <textarea class="form-control" id="txt_produc" disabled rows="12" placeholder="Ingresar Ciudad"></textarea>
                                <!-- <input type="text" class="form-control" id="txt_produc"  placeholder="Ingresar Ciudad">-->

                            </div>                                        
                            <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                        </div>


                    </div>
                    <!-- footer -->
                   
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


