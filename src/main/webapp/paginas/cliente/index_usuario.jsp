<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flp</title>

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
<body  class="inner_page innerpage">
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
							<a href="RegistroUsuarios.jsp" class="green_btn_header "><i class="fa fa-marker"></i>Registrate</a>
							<a href="#" class="green_btn_header" id="ad">Productos</a>
							<a href="#" class="green_btn_header" id="ad">Ubicacion</a>
							<a href="./index.jsp" class="green_btn_header" id="ad">Inicio</a></div>
						</div>
					</div>
				</div>
                
                 <div class="container body" style="background:white;height:100%;">
                     <div class="row">
                         <div class="col-md-12">
                             <!--place block-->
                             <div class="places_index_block container-fluid">
                                 <div class="fixed_w">
                                     <h2>Las mejores Frutas de Calidad</h2>
                                     <div class="row">
                                         <div class="col-md-3 place_index_item  wow bounceInLeft">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/tomate.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="#" class="frutas"><i class="fa fa-2x fa-cart-arrow-down"> </i> Tomate de Arbol.</a>
                                                     <span>Sabor Agridulce, varía según su maduración.Tamaño
                                                         8 cm – 10 cm Diametro 5 cm – 7cm Consumo del Producto Ideal para hacer jugos y postres. Se usa también para hacer salsas como chutney y curry.</span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="col-md-3 place_index_item  wow bounceInUp">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/platano.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="#" class="frutas"><i class="fa fa-2x fa-cart-arrow-down"> </i> BANANITO</a>
                                                     <span>Se puede disfrutar como fruta fresca, para preparación de todo tipo de postres y bebidas, como por ejemplo con tortillas de maíz (waffles o pancakes), cereal, yogurt, helado, batidos con leche u helados, etc</span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="col-md-3 place_index_item  wow bounceInRight">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/granadilla.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="#" class="frutas"><i class="fa fa-2x fa-cart-arrow-down"> </i> GRANADILLA</a>
                                                     <span>Sabor Su sabor es dulce poco ácido Tamaño: 6 cm – 9 cm ,Diametro :5 cm – 7 cm, Consumo del Producto: Ideal para consumo como fruta fresca. Presentaciones :Granadilla x 2kg</span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                            <div class="col-md-3 place_index_item  wow bounceInRight">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/aguacate.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="#" class="frutas"><i class="fa fa-2x fa-cart-arrow-down"> </i> AGUACATE</a>
                                                     <span>Palta Sabor Textura cremosa, sabor suave y ligero sabor a Avellana. Tamaño 6cm – 8cm Peso 120gr a 300gr Consumo del Producto Ideal como fruta fresca y una gran adición en ensaladas.
</span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="row">
                                         <div class="col-md-3 place_index_item  wow bounceInLeft">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/gulupa.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="#" class="frutas"><i class="fa fa-2x fa-cart-arrow-down"> </i> Gulupa.</a>
                                                     <span>Sabor Agridulce fuerte, se podría decir que es una mezcla entre granadilla y maracuyá morado.Diametro4 cm – 6 cm Peso 40 gr – 50 gr Consumo del Producto Ideal como fruta fresca.
                                                    </span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="col-md-3 place_index_item  wow bounceInUp">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/mango.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="#" class="frutas"><i class="fa fa-2x fa-cart-arrow-down"> </i> MANGO</a>
                                                     <span>Sabor Muy agradable, jugoso y dulce intenso. Muy exótico, como una porción de agua exquisita y azucarada, suave, refrescante, muy fino y delicado.Tamaño 2cm a 18cm Peso 250gr – 750gr </span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="col-md-3 place_index_item  wow bounceInRight">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/uchuva.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="02.html"><i class="fa fa-2x fa-cart-arrow-down"> </i> UCHUVA</a>
                                                     <span>Sabor Su sabor es dulce poco ácido Tamaño: 6 cm – 9 cm ,Diametro :5 cm – 7 cm, Consumo del Producto: Ideal para consumo como fruta fresca. Presentaciones :Granadilla x 2kg</span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                            <div class="col-md-3 place_index_item  wow bounceInRight">
                                             <div class="place_inn">
                                                 <img width="150" height="240" src="./img/lulu.png" alt="#">
                                                 <div class="pl_descr">
                                                     <a href="#" class="frutas"><i class="fa fa-2x fa-cart-arrow-down"> </i> LULU</a>
                                                     <span>Sabor Citrico con un porcentaje medio de acidez.Diametro 5cm – 7cm.Peso 80gr – 100gr.Consumo del Producto Ideal para jugo.Presentaciones Lulo x 2,5kg.Tiempo de vida 2 weeks.</span>
                                                     <ul class="rate">
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star"></i></li>
                                                         <li><i class="fa fa-star no"></i></li>
                                                     </ul>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     <a href="01.html" class="btn btn-success va">Productos</a>
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
<script type="text/javascript" src="./funciones_js/clientes/js_clientes.js"></script>

</body>
</html>

