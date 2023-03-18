<%-- 
    Document   : Dashboard
    Created on : 25 Feb, 2022, 12:24:35 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = (String)session.getAttribute("username");
     String name = (String)session.getAttribute("name");
    String email = (String)session.getAttribute("email");

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=s, initial-scale=1.0">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <title>Dashboard</title>
</head>
<style>
   #i1:hover,#i2:hover,#i3:hover,#i4:hover,#i5:hover{
        background-color: black;
        color:orange;
   }
</style>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" id ="hai">
        <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu" id="toggle">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand" id = "heading">Quiz</a>
            </div>
            <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav navbar-right ">
                <li><a href="index.html" class="mx-auto" ><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#" class="mx-auto"><i class="fa fa-info"></i>  About</a></li>
                <li><a href="Contact.html" class="mx-auto"><i class="fa fa-phone"></i>  Contact</a></li>
                



            </ul>
        </div> 
        </div>
       
    </nav>
    <div class="container" >
        <div class="row">
            <h1 style="margin-top:70px; color: orange">Welcome <%=username%></h1>
            <div class="col-md-3 " style="margin-top: 20px;">
               
                <ul class="nav  nav-stacked" >
                    <h1><i class="fa fa-dashboard"></i>Dashboard</h1>
                    <hr>
                    <li><a href="first.jsp" id="i1" ><i class="fa fa-check"></i> MCQ Quiz</a></li>
                    <li><a href="#" id="i2"><i class="fa fa-desktop"></i> Coding</a></li>
                    
                    <hr>
                          <li><a href="Dashboard.jsp" id="i3" class="active" style="background-color:black; color: orange;"><i class="fa fa-users"></i> Profile</a></li>

                    <li><a href="#" id="i4"><i class="fa fa-cogs"></i> Settings</a></li>
                    <li><a href="#" id="i5"><i class="fa fa-key"></i> Change password</a></li>
                     <li><a href="#" id="i5"><i class="fa fa-sign-out"></i>Logout</a></li>

                </ul>
                
            </div>
            <div class="col-md-6">
                <h1></h1>
                <h1 style="padding-top:20px ;"><i class="fa fa-users"></i>Profile</h1><hr>
               
                <h3><b >Username : </b><%=username%></h3>
                <h3><b>Email : </b><%=email%></h3><hr>
                
               <div>
                    <form action="generatereport.jsp">
                         <button class="btn btn-primary">Generate my Test reports</button>
                    </form>
                </div>
            </div>
                
        </div>
    </div>
</body>
<script>
     $(document).ready(function(){
        $("#i3").on("click",function(){
           $("#i3").addClass("active");
           $("#i2,#i1,#i4,#i5").removeClass("active");
           

            }});

        
    });
    </script>
     
</html>
