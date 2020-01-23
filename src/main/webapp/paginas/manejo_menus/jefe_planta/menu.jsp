<%-- 
    Document   : menu
    Created on : 13/01/2020, 11:17:41 PM
    Author     : Rene Jose
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<ul class="side_menu">
    <s:url id="actualizarDatosClientes" action="ir_actualizar_clientes"></s:url>
    <li><s:a href="%{actualizarDatosClientes}"><i class="fa fa-bookmark-o"></i>Clientes</s:a></li>
    <s:url id="lista_jefes_area" action="ir_lista_jefe_areas"></s:url>
    <li><s:a href="%{lista_jefes_area}" class="animsition-link"><i class="fa fa-map-marker"></i>Jefes De Area</s:a></li>
    <s:url id="actualizar_datos_empleados" action="ir_actualizar_datos_empleados"></s:url>
    <li><s:a href="%{actualizar_datos_empleados}"><i class="fa fa-list"></i>Empleados</s:a></li>
    <s:url id="consulta_pedidos_pendientes" action="ir_consul_pedido"></s:url>
    <li><s:a href="%{consulta_pedidos_pendientes}"><i class="fa fa-th"></i>Pedidos Pendientes</s:a></li>
    <s:url id="configuracion" action="ir_configuracion"></s:url>
    <li><s:a href="%{configuracion}"><i class="fa fa-building-o"></i>Configuracion</s:a></li>
    <s:url id="resultadosencuentas" action="ir_resultados_encuestas"></s:url>
    <li><s:a href="%{resultadosencuentas}"><i class="fa fa-user"></i>Resultados Encuentas</s:a></li>
    <s:url id="actualizar_datos" action="ir_actualizar_datos"></s:url>
    <li><s:a href="%{actualizar_datos}"><i class="fa fa-book"></i>Actualizar Datos</s:a></li>
</ul>
