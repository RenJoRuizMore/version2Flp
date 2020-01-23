<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flp</title>


<%@include file="./paginas/source_css/enlaces_css.jsp" %>

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
                                                        <s:url id="elemento" action="ir_registro_usuario"></s:url>
                                                        <s:a href="%{elemento}" cssClass="green_btn_header"><i class="fa fa-marker"></i>Registrate</s:a>
							<a href="#" class="green_btn_header" id="ad">Productos</a>
							<a href="#" class="green_btn_header" id="ad">Ubicacion</a>
							<a href="index.jsp" class="green_btn_header" id="ad">Inicio</a></div>
						</div>
					</div>
				</div>
                 <!-- saltos de linea -->
            <div>
                <br><br>
            </div>
				<div class="container body" style="background:white;height:100%;">
                   <div class="row">
                   	<div class="col-md-12">
                   			   <div class="carousel slide" id="carousel1">
	                                <div class="carousel-inner">
	                                    <div class="item active">
	                                        <img width="1400" height="1300" alt="image" class="img-responsive" src="img/flp_corportativo.png">
	                                    </div>
	                                    <div class="item">
	                                        <img width="1400" height="1300" alt="image"  class="img-responsive" src="img/Corporativo.png">
	                                    </div>
	                                    <div class="item ">
	                                        <img width="1400" height="1300" alt="image" class="img-responsive" src="img/manzanas.png">
	                                    </div>

	                                </div>
	                                <a data-slide="prev" href="#carousel1" class="left carousel-control">
	                                    <span class="icon-prev"></span>
	                                </a>
	                                <a data-slide="next" href="#carousel1" class="right carousel-control">
	                                    <span class="icon-next"></span>
	                                </a>
                            </div>

                   	</div>
                   	<div class="col-md-12">
                   		  <!--place block-->
				        <div class="places_index_block container-fluid">
				          <div class="fixed_w">
				            <h2>Las mejores Frutas de Calidad</h2>
				            <div class="row">
				              <div class="col-md-4 place_index_item  wow bounceInLeft">
				                <div class="place_inn">
				                  <img width="200" height="240" src="img/tomate.png" alt="#">
				                  <div class="pl_descr">
				                    <a href="02.html">Tomate de Arbol.</a>
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
				              <div class="col-md-4 place_index_item  wow bounceInUp">
				                <div class="place_inn">
				                  <img width="200" height="240" src="img/platano.png" alt="#">
				                  <div class="pl_descr">
				                    <a href="02.html">BANANITO</a>
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
				              <div class="col-md-4 place_index_item  wow bounceInRight">
				                <div class="place_inn">
				                  <img width="200" height="240" src="img/granadilla.png" alt="#">
				                  <div class="pl_descr">
				                    <a href="02.html">GRANADILLA</a>
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
				            </div>
				            <a href="01.html" class="btn btn-success va">Ver Todas los Productos</a>
				          </div>
				        </div>
                   	</div>


                   	<div class="col-md-12">
                   		
				        <!--Map block-->
				        <!--Users blocks    -->
				        
				        <div class="user_block container-fluid perfil">
				          <div class="fixed_w">
				            <h2>¿Quienes somos en Flp Perú ?</h2>
				            <div class="row">
				            <!-- -->
				              <div class="pl_descr">
				                    <a href="02.html">FLP del Peru S.A.C</a>
						                    <span>La empresa FLP del Perú S.A.C es una empresa que se dedica a la exportación de
		mango fresco refrigerado, cumpliendo estándares de calidad alimentaria nacional, FLP del
		Perú S.A.C está consciente de la importancia de determinar y controlar los riesgos que
		involucran el proceso de producción de Mango Fresco refrigerado, destinado a la exportación,
		y es por esto que en cada una de las etapas de producción se preocupa por mantener la
		seguridad de los alimentos; la empresa se encuentra ubicada en la carretera Sullana a
		Tambogrande Km. 1040 Caserío San Vicente de Huangala, provincia de Sullana,
		departamento de Piura – Perú.</span>
				                   <img class="centro" src="img/avatarlogo.jpg">
				                  </div>
				            <!-- -->

				             
				             
				             
				            </div>
				          </div>
				        </div>
				     <!-- fin de colss-->
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
<!--Parallax bg-->


</body>
</html>
