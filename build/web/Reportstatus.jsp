<%-- 
    Document   : Reportstatus
    Created on : 28 May, 2022, 12:10:17 AM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hai.quiz;" %>
<%@page import="java.util.*;" %>
<%@page import="java.sql.*;" %>

<%@page import="java.security.*;" %>
<%@page import=" javax.servlet.http.HttpSession;" %>
<%
    String count = (String)session.getAttribute("count");
    String subject = (String)session.getAttribute("course");
    quiz obj = new quiz();
    float result = obj.percentage(count);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' ></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

        <title>Result</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" id ="hai">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu" id="toggle">
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                </button>
                <a href="Contact.html" class="navbar-brand" id = "heading">Quiz</a>
            </div>
            <div class="collapse navbar-collapse " id ="menu">
            <ul class="nav navbar-nav navbar-right ">
                <li><a href="index.html" class="mx-auto"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#"class="mx-auto"></i>  About</a></li>
                <li><a href="#" class="mx-auto"><i class="fa fa-phone"></i>  Contact</a></li>
                



            </ul>
        </div> 
        </div>
       
    </nav>
        <div class="container-fluid" style="margin-top: 70px">
            <div class="row ">
                <div class="col-md-12">
                    <h1 style="color: green; text-align: center"><u>Results</u></h1>
                    <h3 style="padding-top: 30px;">Course : <%=subject%></h3>
                    <h3 >Marks : <%=count%> out of 5</h3>
                    <h3 >Percentage : <%=result%>%</h3>
                    
                    <button class="btn btn-primary" style="margin-top:5px">Generate to Mail</button>
                </div>
            </div>
        </div>
    </body>
</html>
