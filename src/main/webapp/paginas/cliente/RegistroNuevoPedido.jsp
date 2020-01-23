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
                    <h1>Registrar Pedido</h1>
                    <hr>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label >Producto Seleccionado</label>
                            <div class="input-group" >
                                 <span class="input-group-addon">
                                    <span class="fa fa-user"></span>
                                </span>
                                <select class="form-control " id="select_produ">
                                </select>
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                          <div class="form-group">
                            <label >Tipo de Envio</label>
                            <div class="input-group" >
                                 <span class="input-group-addon">
                                    <span class="fa fa-user-plus"></span>
                                </span>
                                 <select class="form-control" id="tipo_envio">
                                     <option class="option" value="-1">Escoger Tipo </option>
                                     <option class="option" value="1"> Maritimo</option>
                                     <option class="option" value="2"> Areo </option>
                                </select>
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Cantidad Contenedores</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-mail-reply-all"></span>
                                        </span>
                                        <input type="number" class="form-control" id="txt_cant_contenedores" >

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Maximo de Dias en llegar</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-language"></span>
                                        </span>
                                        <input type="number" class="form-control" id="txt_max_dias"  placeholder="Ingresar Pais">

                                    </div>                                        
                                    <small class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                          
                      
                            <div class="form-group">
                                <label>* Responder</label>
                                <div class="input-group" >

                                    <input type="checkbox"  id="check_responder" name="emplea_malla" value="1">
                                    <label> ¿Emplea una malla en el producto? Precio : 0.1 </label>
                                </div>                                        
                                <small  class="form-text text-muted">*nombre_representante</small>
                            </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Precio por 1 kg de mango</label>
                                    <div class="input-group" id="datetimepicker1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-money"></span>
                                        </span>
                                        <input type="text" disabled class="form-control" id="txt_precio_prod"  placeholder="Precio de Producto">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <div class="form-group">
                                    <label >Precio total por el pedido</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-money"></span>
                                        </span>
                                        <input type="number" disabled class="form-control" id="txt_precio_total"  placeholder="Ingresar Ciudad">

                                    </div>                                        
                                    <small class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label >Destinatario</label>
                            <div class="input-group" >
                                <span class="input-group-addon">
                                    <span class="fa fa-money"></span>
                                </span>
                                <input type="number"  class="form-control" id="txt_destinatario"  placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small class="form-text text-muted">*nombre_representante</small>
                        </div>
                         <div class="form-group">
                            <label >Direccion</label>
                            <div class="input-group" >
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_direccion"  placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                         
                        
                        
                    </div>
                                                
                    <!-- otra columna -->
                    <div class="col-md-6">
                    
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Email</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-institution"></span>
                                        </span>
                                        <input type="email" class="form-control" id="txt_email"  placeholder="Ingresar Razon SOcial">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Pais</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-phone"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_pais"  placeholder="Ingresar Razon SOcial">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Region /Provincia </label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-user-plus"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_region"  placeholder="Ingresar Pais">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Ciudad </label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-key"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_ciudad"  placeholder="Ingresar Region">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label >Codigo Postal</label>
                            <div class="input-group" >
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_codigo_postal"  placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Telefono</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-cc-visa"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_telefono"  placeholder="Ingresar Ciudad">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Adjuntar Archivos</label>
                                    <div class="input-group" id="datetimepicker1">
                                        
                                        <input type="file"  id="txt_archivo" >

                                    </div>                                        
                                    <small class="form-text text-muted">*se adjunta archivo</small>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label >Observaciones Adicionales</label>
                            <div class="input-group" >
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <textarea class="form-control" id="txt_observaciones" rows="12" placeholder="Ingresar Ciudad"></textarea>
                                <!-- <input type="text" class="form-control" id="txt_produc"  placeholder="Ingresar Ciudad">-->

                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                    </div>
                    <!-- footer -->
                    <div class="row" style="text-align: center">
                        <div class="col-md-6">

                            <a href="#" class="btn btn-success" id="btn_registrar_Pedido"><i class="fa fa-check-square-o"></i> Registrar Pedido</a>

                        </div>
                        <div class="col-md-6">

                            <a href="#" class="btn btn-success"><i class="fa fa-check-square-o"></i> Cancelar Pedido </a>

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
<script type="text/javascript" src="./funciones_js/clientes/js_registrar_pedidos.js"> </script>
</html>

