<%-- 
    Document   : process
    Created on : Jan 13, 2018, 10:08:10 PM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="Java" import="java.sql.*" %>  
<%@page import="bean.getFromDB" %>
<jsp:useBean id="obj" class="bean.login"/>  
<jsp:setProperty property="*" name="obj"/> 
<%  
    int status=getFromDB.validate(obj);  
    if(status!=0){  
        out.println("You r successfully logged in");  
        session.setAttribute("user_id",status);
        response.sendRedirect("all-classifieds.jsp");
        
    }  
    else  
    {  
    out.print("Sorry, email or password error");  
    }
%>  
<jsp:include page="login.html"></jsp:include>  
