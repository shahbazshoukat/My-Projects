<%-- 
    Document   : ad_set
    Created on : Jan 23, 2018, 2:27:21 AM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id=Integer.parseInt( request.getParameter("minID"));
    response.sendRedirect("single.jsp"); 

%>
