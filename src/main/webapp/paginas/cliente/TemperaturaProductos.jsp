<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flp</title>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<!--Main styles-->
<link rel="stylesheet" type="text/css" href="css/main.css" >
<!--Adaptive styles-->
<link rel="stylesheet" type="text/css" href="css/adaptive.css">
<!--Swipe menu-->
<link rel="stylesheet" type="text/css" href="css/pushy.css">
<!--fonts-->
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<!--animation css-->
<link rel="stylesheet" type="text/css" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

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
            <ul class="side_menu">
                <li><a href="index.html"><i class="fa fa-bookmark-o"></i>Promociones</a></li>
                <li><a href="01.html" class="animsition-link"><i class="fa fa-map-marker"></i>Ubicacion</a></li>
                <li><a href="05.html"><i class="fa fa-list"></i>Lugares</a></li>
                <li><a href="04.html"><i class="fa fa-th"></i>Productos</a></li>
                <li><a href="02.html"><i class="fa fa-building-o"></i>Place</a></li>
                <li><a href="03.html"><i class="fa fa-user"></i>Personas</a></li>
                <li><a href="06.html"><i class="fa fa-book"></i>Comentarios</a></li>
            </ul>
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
                     <!--content-->
                    <div class="col-md-12 basic" >
                        <div class="" >
                            <h2><a href="#">Estado de Producto</a><span></span></h2><br>
                            <div class="row" >
                               <!-- <div class="flot-chart">
                                    <div class="flot-chart-content" id="flot-line-chart"></div>
                                </div> -->
                               <div class="col-md-8">
                                   <div class="flot-chart">
                                    <div class="flot-chart-content" id="flot-line-chart"></div>
                                   </div>
                                     <table class="table table-hover text-center">
                                            <thead>
                                              <tr>
                                                <th class="text-center">#</th>
                                                <th class="text-center">Fecha</th>
                                                <th class="text-center">Valor</th>
                                               
                                              </tr>
                                            </thead>                                            
                                             <tbody id="contenido_factura">
                                                <tr>
                                                    <td>1</td>
                                                    <td>20/12/2019</td>
                                                    <td> 23º C</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>20/12/2019</td>
                                                    <td> 23º C</td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>20/12/2019</td>
                                                    <td> 23º C</td>
                                                </tr>
                                            </tbody>
                                          </table>
                               </div>
                            </div>
                            <hr>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <script type="text/javascript"></script> 
    
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

         <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <!-- Flot demo data -->
    <script src="js/demo/flot-demo.js"></script>   
</body>
</html>