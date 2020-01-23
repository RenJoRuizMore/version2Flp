<%-- 
    Document   : menu
    Created on : 13/01/2020, 11:17:55 PM
    Author     : Rene Jose
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<ul class="side_menu">
    <s:url id="pedidos_pendi" action="ir_pedidos_pendi"></s:url>
    <li><s:a href="%{pedidos_pendi}"><i class="fa fa-bookmark-o"></i>Pedido Pendientes</s:a></li>
    <s:url id="consul_pedido" action="ir_pedido_consul"></s:url>
    <li><s:a href="%{consul_pedido}"><i class="fa fa-map-marker"></i>Consultar pedidos</s:a></li>
    <s:url id="lista_clientess" action="ir_lista_clientes"></s:url>
    <li><s:a href="%{lista_clientess}"><i class="fa fa-list"></i>Lista Clientes</s:a></li>
    <s:url id="listaa_jefe_are" action="ir_actualizar_jefearea"></s:url>
    <li><s:a href="%{listaa_jefe_are}"><i class="fa fa-th"></i>Lista Jefe de Area</s:a></li>
    <s:url id="datos_empleadoss" action="ir_datoss_empelados"></s:url>
    <li><s:a href="%{datos_empleadoss}"><i class="fa fa-building-o"></i>Datos Empleado</s:a></li>
    <s:url id="configuracion" action="ir_configuracion_cl"></s:url>
    <li><s:a href="%{configuracion}"><i class="fa fa-user"></i>Configuracion</s:a></li>
</ul>
