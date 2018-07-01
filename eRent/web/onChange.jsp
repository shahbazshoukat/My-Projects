<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : onLocationChange
    Created on : Jan 22, 2018, 10:02:19 PM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    
    String loc=request.getParameter("location");
    String cat=request.getParameter("category");
    String search=request.getParameter("search");
    if(loc.equals("All"))
    {
        session.setAttribute("location", null);
    }
    else
    {
        session.setAttribute("location", loc);
    }
    if(cat.equals("All"))
    {
        session.setAttribute("category", null);
    }
    else
    {
        session.setAttribute("category", cat);
    }
    if(search.equals(""))
    {
        session.setAttribute("search", null);
    }
    else
    {
        session.setAttribute("search",search);
    }    
    response.sendRedirect("all-classifieds.jsp");
%>
