<%-- 
    Document   : ListaJefeCadaArea
    Created on : 14/01/2020, 10:38:52 AM
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
                <div class="row">
                 
                     <!--content-->
                    <div class="col-md-12 basic" >
                        <div class="" >
                                <!--Blog post style one-->
                            <div class="" >
                                  
                                <div class="">
                                      
                                    <h2><a href="#"> Lista de Jefes de Area </a><span></span></h2><br>
                                      
                                    <hr>
                                    <div class="p_text">
                                         <table class="table table-hover text-center">
                                            <thead>
                                              <tr>
                                                <th class="text-center">#</th>
                                                <th class="text-center">Nombres</th>
                                                <th class="text-center">Apellidos</th>
                                                <th class="text-center">Email</th>
                                                <th class="text-center">Usuario</th>                                                
                                                <th class="text-center">Cuenta Activa</th>     
                                                <th class="text-center">Area Producion</th>
                                                <th class="text-center">Opciones</th>     
                                              </tr>
                                            </thead>                                            
                                             <tbody id="contenido_lista_jefe_area">
                                                
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

<!--  modal para editar los jefes de area -->

 <!-- dmodalUsuario Nueva Usuario -->
    <div class="modal fade" id="nuevoProducto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel"><i class='glyphicon glyphicon-edit'></i> 
                           <b><span id="span_nuevo">Nuevo</span><span id="span_actualizar">Actualizar</span> Jefe Area</b>
                        </h4>
                  </div>
                  <div class="modal-body">
                      <form class="form-horizontal" method="post" id="editar_usuario" name="editar_usuario">

                          <div class="form-group">
                              <label for="mod_estado" class="col-sm-3 control-label">NOMBRES</label>
                              <div class="col-sm-8">
                                 <input type="text" class="form-control" id="m_txt_nombres" name="txt_nombrepersona" placeholder="Nombre " required>
                              </div>
                          </div>    
                          <div id="resultados_ajax2"></div>
                          <div class="form-group">
                              <label for="mod_codigo" class="col-sm-3 control-label">APELLIDOS</label>
                              <div class="col-sm-8">
                                  <input type="text" class="form-control" id="m_txt_apellidos" name="txt_nombrepersona" placeholder="Nombre " required>
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="descripcion" class="col-sm-3 control-label">Email</label>
                              <div class="col-sm-8">
                                  <input type="text" class="form-control" id="m_txt_email" name="txt_email" placeholder="Correo Electronico" required>
                              </div>
                          </div>
                           <div class="form-group">
                              <label for="descripcion" class="col-sm-3 control-label">Direccion</label>
                              <div class="col-sm-8">
                                  <input type="text" class="form-control" id="m_txt_direccion" name="txt_email" placeholder="Correo Electronico" required>
                              </div>
                          </div>
                            <div class="form-group">
                              <label for="descripcion" class="col-sm-3 control-label">Telfono</label>
                              <div class="col-sm-8">
                                  <input type="text" class="form-control" id="m_txt_telefono" name="txt_email" placeholder="Correo Electronico" required>
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="descripcion" class="col-sm-3 control-label">Usuario</label>
                              <div class="col-sm-8">
                                  <input type="text" class="form-control" id="m_txt_usuario" name="txt_usuario" placeholder="usuario" required maxlength="20">
                              </div>
                          </div>
                          
                           <div class="form-group">
                              <label for="descripcion" class="col-sm-3 control-label">Contraseña</label>
                              <div class="col-sm-8">
                                  <input type="text" class="form-control" id="m_txt_contra" name="txt_usuario" placeholder="usuario" required maxlength="20">
                              </div>
                          </div>
                          
                          <div class="form-group">
                              <label for="descripcion" class="col-sm-3 control-label">ESTADO CUENTA</label>
                              <div class="col-sm-8">
                                  <select class="form-control" id="cbx_estado_cuenta" name="cbx_rol_name" required>
                                    <option value=""> ======== Seleccione Rol ======== </option>
                                    <option value="0"> Activar </option>
                                    <option value="1"> Desactivar </option>
                              </select>
                              </div>
                          </div>
                          <div class="form-group" id="div_estado">
                              <label for="mod_estado" class="col-sm-3 control-label">AREA PRODUCCION</label>
                               <div class="col-sm-8">
                                 
                              
                                   <select class="form-control" id="m_txt_area_produccion" name="cbx_rol_name" required>
                                    
                                   </select>
                               
                               
                               </div>
                          </div>    
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-primary" id="guardarjefe">Guardar Cambios</button>
                            </div>
                        </form>
                </div>
          </div>
        </div>




<!--
#################################
- SCRIPT FILES -
#################################
-->
<%@include file="../source_js/enlaces_js.jsp" %>
<script type="text/javascript" src="./funciones_js/jefe_planta/js_listado_jefe_cada_area.js"></script>

</body>
</html>






