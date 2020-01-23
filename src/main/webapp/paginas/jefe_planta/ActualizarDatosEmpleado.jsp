<%-- 
    Document   : ActualizarDatosEmpleado
    Created on : 14/01/2020, 10:37:29 AM
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
                <div class="avatar"><img src="./img/avatarlogo.jpg" alt="#"></div>
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
                <div class="row centro">
                    
                     <!--content-->
                     <div class="col-md-6 basic col-md-offset-3" style="border: #DDD solid 1px">
                        <div class="place_inn">
                            <h3>Actualizar datos de la cuenta </h3>
                            <hr>
                            
                            <div class="form-group">
                                <label>Nombres</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="text"  class="form-control" id="txt_produc"  placeholder="Ingresar Nombre ">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*nombre de empleado</small>
                            </div>
                            <div class="form-group">
                                <label>Apellidos</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="text"  class="form-control" id="txt_produc"  placeholder="Ingresar Apellidos">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*apellidos de empleado</small>
                            </div>
                              <div class="form-group">
                                <label>Email</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="email"  class="form-control" id="txt_produc"  placeholder="Ingresar Apellidos">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*apellidos de empleado</small>
                            </div>
                            <div class="form-group">
                                <label>Calve</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="password"  class="form-control" id="txt_produc"  placeholder="Ingresar Calve">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*apellidos de empleado</small>
                            </div>
                              <div class="form-group">
                                <label>Repetir Clave</label>
                                <div class="input-group" id="datetimepicker1">
                                    <span class="input-group-addon">
                                        <span class="fa fa-money"></span>
                                    </span>
                                    <input type="password"  class="form-control" id="txt_produc"  placeholder="Ingresar Calve">

                                </div>                                        
                                <small id="emailHelp"  class="form-text text-muted">*apellidos de empleado</small>
                            </div>
                           
                            
                            <hr>
                             <div class="form-group" id="div_fechaf">
                               
                                 <button class="btn btn-primary"> GUARDAR</button>
                                           
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

</body>
</html>

