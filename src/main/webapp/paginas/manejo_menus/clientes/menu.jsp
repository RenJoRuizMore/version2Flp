<%-- 
    Document   : menu_clientes
    Created on : 13/01/2020, 11:17:13 PM
    Author     : Rene Jose
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<ul class="side_menu">
    <s:url id="registrarpedido" action="ir_registrar_pedido"></s:url>
    <li><s:a href="%{registrarpedido}"><i class="fa fa-bookmark-o"></i>Registrar Pedido</s:a></li>
    <s:url id="pedidopendiente" action="ir_pedido_pendiente"></s:url>
    <li><s:a href="%{pedidopendiente}"><i class="fa fa-map-marker"></i>Pedido Pendiente</s:a></li>
     <s:url id="productos_recepcionados" action="ir_producto_recpcionado"></s:url>
    <li><s:a href="%{productos_recepcionados}"><i class="fa fa-list"></i>Producto Recepcionados</s:a></li>
</ul>