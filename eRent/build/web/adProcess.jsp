<%-- 
    Document   : process
    Created on : Jan 13, 2018, 10:08:10 PM
    Author     : Shahbaz Shoukat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="Java" import="java.sql.*" %>  
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="bean.insertToDB"%>
<%@page import="bean.ad"%>
<%@page import="bean.getFromDB" %>
<%@page import="java.io.*"%>
<%@page import = "java.text.SimpleDateFormat"%>
<%@page import = "java.util.Date"%>
 
<%
    String savePath="C:/Users/Shahbaz Shoukat/Documents/NetBeansProjects/eRent/web/uploads";
    
    MultipartRequest m=new MultipartRequest(request, savePath, 100*1024*1024, new DefaultFileRenamePolicy());
    java.util.Enumeration e=m.getFileNames();
%>    
<%! 
    int id=getFromDB.getMaxUserID();
    String user_ID=Integer.toString(id);
    

%>


<%
    ad obj=new ad();
    obj.setLocation(m.getParameter("location"));
    obj.setCategory(m.getParameter("category"));
    obj.setTitle(m.getParameter("title"));
    obj.setRent(m.getParameter("rent"));
    obj.setPayment(m.getParameter("payment"));
    obj.setDescription(m.getParameter("description"));
    obj.setImg1_url(m.getFilesystemName((String)e.nextElement()));
    obj.setImg2_url(m.getFilesystemName((String)e.nextElement()));
    obj.setImg3_url(m.getFilesystemName((String)e.nextElement()));
    obj.setView(1);
    String username="My Account";
    if(session.getAttribute("user_id")==null)
    {
        obj.setUser_id(-1);
    }
    else
    {
        int user_id=(Integer)session.getAttribute("user_id");
        obj.setUser_id(user_id);
    }
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
    Date date = new Date();  
    obj.setDatetime(formatter.format(date));

    
int status=insertToDB.registerAd(obj);  
if(status>0){
    out.print("You are successfully registered");
        out.println(status);
        response.sendRedirect("myaccount.jsp");
}
else{
    out.print("Not registered");
    out.println(status);
}

%>  
