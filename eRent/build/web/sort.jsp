<%-- 
    Document   : sort
    Created on : Jan 23, 2018, 1:44:47 AM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String var=request.getParameter("sort");
     if(var.equals("recent"))
     {
         session.setAttribute("sortlow", null);
        session.setAttribute("sorthigh", null);
     }
  if(var.equals("low"))
    {
        session.setAttribute("sortlow",var);
    }
  else if(var.equals("high"))
    {
        session.setAttribute("sorthigh",var);
    }
    else
  {
      session.setAttribute("sortlow", null);
        session.setAttribute("sorthigh", null);
  }
    response.sendRedirect("all-classifieds.jsp");  
%>