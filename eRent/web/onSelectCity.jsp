<%-- 
    Document   : onSelectCity
    Created on : Jan 23, 2018, 12:22:45 AM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     String city=request.getParameter("city");
  if(city.equals("All"))
    {
        session.setAttribute("city", null);
    }
    else
    {
        session.setAttribute("city",city);
    }    
    response.sendRedirect("all-classifieds.jsp");  
%>
