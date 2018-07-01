<%-- 
    Document   : nameContains
    Created on : Jan 23, 2018, 12:11:33 AM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
     String search=request.getParameter("name-contains");
  if(search.equals(""))
    {
        session.setAttribute("name-contains", null);
    }
    else
    {
        session.setAttribute("name-contains",search);
    }    
    response.sendRedirect("all-classifieds.jsp");  
%>