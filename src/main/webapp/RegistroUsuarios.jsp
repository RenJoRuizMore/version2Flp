<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flp</title>

<%@include file="./paginas/source_css/enlaces_css.jsp" %>
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
<body  class="inner_page innerpage">
    <div class="bg_parallax" id="inb">
        <!--navigation swipe-->
        <div class="menu-btn">&#9776;</div>
        <nav class="pushy pushy-left">
            <div class="profile">
                <div class="avatar"><img src="img/avatarlogo.jpg" alt="#"></div>
                <h3><a href="03.html">Bienvenido Flp</a></h3>
                <a href="#" class="log_btn">Acceso</a>
            </div>
         
        </nav>

        <!--add-->
        <div class="add_place none" id="pl">
            <div class="place_form">
                <i class="fa fa-times close_window" id="close"></i>
                <h3>Add new place<span></span></h3>
                <form>
                    <label>Place name:<input type="text"></label>
                    <label>latitude:<input type="text"></label>
                    <label>longitude:<input type="text"></label>
                    <label>Categori:
                        <select>
                            <option value="Cafe">Cafe</option>
                            <option value="Bar">Bar</option>
                            <option value="Cinema">Cinema</option>
                            <option value="Shop">Shop</option>
                            <option value="Club">Club</option>
                            <option value="Bank">Bank</option>
                        </select>
                    </label>
                    <a href="#" class="green_btn_header" id="add">Add</a>
                </form>
            </div>
        </div>

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
                        <div class="col-md-12"><a href="index.html" class="logo"><img src="img/logo1.png" alt="Flp"/></a>
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
                    <h1>Registro de Usuario </h1>
                    <hr>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label >Representante</label>
                            <div class="input-group" id="datetimepicer1">
                                 <span class="input-group-addon">
                                    <span class="fa fa-user"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_nombre_representante"  placeholder="Ingresar Nombre Representante">
                               
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                          <div class="form-group">
                            <label >Razon Social</label>
                            <div class="input-group" id="datetimepicker1">
                                 <span class="input-group-addon">
                                    <span class="fa fa-user-plus"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_razon_social"  placeholder="Ingresar Razon SOcial">
                               
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                            <div class="form-group">
                            <label >Email</label>
                            <div class="input-group" >
                                 <span class="input-group-addon">
                                    <span class="fa fa-mail-reply-all"></span>
                                </span>
                                <input type="email" class="form-control" id="txt_email"  placeholder="Ingresar Razon SOcial">
                               
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                          <div class="form-group">
                            <label >Pais</label>
                            <div class="input-group" id="datetimepicke">
                                 <span class="input-group-addon">
                                    <span class="fa fa-language"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_pais"  placeholder="Ingresar Pais">
                               
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                         <div class="form-group">
                            <label >Region</label>
                            <div class="input-group" id="datetimepick">
                                 <span class="input-group-addon">
                                    <span class="fa fa-institution"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_region"  placeholder="Ingresar Region">
                               
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                          <div class="form-group">
                            <label >Ciudad</label>
                            <div class="input-group" id="datetimepick1">
                                 <span class="input-group-addon">
                                    <span class="fa fa-institution"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_ciudad"  placeholder="Ingresar Ciudad">
                               
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                        
                        
                    </div>
                                                
                    <!-- otra columna -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label >Direccion</label>
                            <div class="input-group" id="datetimepicr1">
                                 <span class="input-group-addon">
                                    <span class="fa fa-bookmark"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_direccion"  placeholder="Ingresar Nombre Representante">
                               
                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Codigo Postal</label>
                                    <div class="input-group" id="datetimepic1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-institution"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_codigo_postal"  placeholder="Ingresar Razon SOcial">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Telefono</label>
                                    <div class="input-group" id="datetimeper1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-phone"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_telefono"  placeholder="Ingresar Razon SOcial">

                                    </div>                                        
                                    <small id="emailHelp" class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Usuario</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon">
                                            <span class="fa fa-user-plus"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_usuario"  placeholder="Ingresar Pais">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Contraseña</label>
                                    <div class="input-group" id="datetim1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-key"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_contra"  placeholder="Ingresar Region">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label >Nº de Tarjeta</label>
                            <div class="input-group" id="datetimepir1">
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_tarjeta"  placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small class="form-text text-muted">*nombre_representante</small>
                        </div>
                        <div class="form-group">
                            <label >Nº de Verificacion de Tarjeta de Credito</label>
                            <div class="input-group" id="datetimepi">
                                <span class="input-group-addon">
                                    <span class="fa fa-cc-visa"></span>
                                </span>
                                <input type="text" class="form-control" id="txt_verificacion"  placeholder="Ingresar Ciudad">

                            </div>                                        
                            <small  class="form-text text-muted">*nombre_representante</small>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Mes de Vencimiento</label>
                                    <div class="input-group" id="datetimeer1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-cc-visa"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_mes_vencimiento"  placeholder="Ingresar Ciudad">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label >Año de Vencimiento</label>
                                    <div class="input-group" id="datetimepir1">
                                        <span class="input-group-addon">
                                            <span class="fa fa-cc-visa"></span>
                                        </span>
                                        <input type="text" class="form-control" id="txt_año"  placeholder="Ingresar Ciudad">

                                    </div>                                        
                                    <small  class="form-text text-muted">*nombre_representante</small>
                                </div>
                            </div>
                        </div>
                        
                    
                    </div>
                    <!-- footer -->
                    <div class="row" style="text-align: center">
                            <div class="col-md-6">
                                
                                 <a href="#" class="btn btn-success" id="btn_resgistar"><i class="fa fa-check-square-o"></i> Registrar Usuario</a>
                                 
                            </div>
                            <div class="col-md-6">
                                
                                <a href="#" class="btn btn-success" id="cancelar"><i class="fa fa-check-square-o"></i> Cancelar Usuario </a>
                                 
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
<%@include file="./paginas/source_js/enlaces_js.jsp" %>
<!-- agregar los enlaces de los js-->
<script type="text/javascript" src="./funciones_js/index.js"></script>


</body>
</html>

