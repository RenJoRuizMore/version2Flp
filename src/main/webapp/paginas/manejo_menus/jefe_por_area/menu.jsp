<%-- 
    Document   : menu
    Created on : 13/01/2020, 11:17:48 PM
    Author     : Rene Jose
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<ul class="side_menu">
    <s:url id="pedidos_pendites" action="ir_pedidos_penditt"></s:url>
    <li><s:a href="%{pedidos_pendites}"><i class="fa fa-bookmark-o"></i>Pedidos Pendientes</s:a></li>
   
</ul>
