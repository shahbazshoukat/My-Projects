<%-- 
    Document   : process
    Created on : Jan 13, 2018, 10:08:10 PM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="Java" import="java.sql.*" %>  
<%@page import="bean.insertToDB"%>  
<jsp:useBean id="obj" class="bean.user" scope="request"/>  
<jsp:setProperty property="*" name="obj" />  

<%
    
int status=insertToDB.register(obj);  
if(status>0){
    out.print("You are successfully registered");
        out.println(status);
        response.sendRedirect("login.html");
}
else{
    out.print("Not registered");
    out.println(status);
}

  
%>  
