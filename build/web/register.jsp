<%-- 
    Document   : register
    Created on : 26 May, 2022, 12:53:19 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hai.quiz;" %>
<%@page import="java.util.*;" %>
<%@page import="java.sql.*;" %>
<%@page import=" javax.servlet.http.HttpSession;" %>

<%@page import="java.security.*;" %>

<%
    String name= (String)request.getParameter("name");
    

    
     Connection conn = null;
     try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Quiz","Ganesh","Ganesh@123");
        PreparedStatement pst = conn.prepareStatement("create table ? (Id int, Test varchar(50), Score int ");
        pst.setString(1,name );
        pst.executeUpdate();
        conn.commit();
        conn.close();
         
     }
     catch(Exception e)
             {
                 System.out.print(e);
             }






%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
