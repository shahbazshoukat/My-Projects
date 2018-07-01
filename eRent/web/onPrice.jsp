<%-- 
    Document   : onPrice
    Created on : Jan 23, 2018, 12:35:22 AM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String city=request.getParameter("price-range");
     out.print(city);
     String city2=request.getParameter("price-range2");
     out.print("fghj"+city2);
  if(city.equals(""))
    {
        session.setAttribute("price-range", null);
    }
    else
    {
        session.setAttribute("price-range",city);
    }    
    //response.sendRedirect("all-classifieds.jsp");  
%>

