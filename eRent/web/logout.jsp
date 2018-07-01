<%-- 
    Document   : logout
    Created on : Jan 21, 2018, 10:58:25 AM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.invalidate();
response.sendRedirect("index.jsp");
%>