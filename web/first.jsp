<%-- 
    Document   : login
    Created on : 25 Feb, 2022, 11:33:53 AM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hai.quiz;" %>
<%@page import="java.util.*;" %>
<%@page import="java.sql.*;" %>

<%@page import="java.security.*;" %>
<%@page import=" javax.servlet.http.HttpSession;" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <title>Quiz</title>
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
    <div class="container-fluid" style="margin: 50px;">
        <div class="row"id = "head">
            
                 <section id = cards>
                <h1 id ="exam" class="text-center my-5">OUR EXAMS</h1>
                <h3>Programming</h3>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" style="padding-top: 20px;">
                        <div class="card" >
                            <form action="c">
                            <img src="c.png" class="card-img-top" alt="...">
                            <div class="card-body">
                            <h5 class="card-title" id="title1">C programming</h5>
                            <input type="hidden" name="c" value="C programming">
                            <button  class="btn btn-primary" id="title_1">Start Test</button>
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" style="padding-top: 20px;">
                        <div class="card" >
                            <form action="cplusplus">
                            <img src="2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                            <h5 class="card-title" id="title2">C++ programming</h5>
                            <input  type="hidden" name="cpp" value="C++ Programming">
                            <button  class="btn btn-primary" id="title_2">Start Test</button>
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" style="padding-top: 20px;">
                        <div class="card" >
                            <form action="javaservlet">
                            <img src="java1.png" class="card-img-top" alt="...">
                            <div class="card-body">
                            <h5 class="card-title" id="title3">Java programming</h5>
                            <input  type="hidden" name="java" value="Java Programming">
                            <button class="btn btn-primary" id="title_3">Start Test</button>
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" style="padding-top: 20px;">
                        <div class="card" >
                            <form action="pythonservlet">
                            <img src="python.png" class="card-img-top" alt="...">
                            <div class="card-body">
                            <h5 class="card-title" id="title4">Python programming</h5>
                             <input  type="hidden" name="python" value="Python Programming">
                            <button  class="btn btn-primary" id="title_4">Start Test</button>
                            </div>
                            </form>
                        </div>
                    </div>
            </section>
                
            
            
        </div>
    </div>
    
</body>
<script>
        $(document).ready(function(){
        $("#submit").click(function(){
            $.ajax({url: "loginresponse",data:{username:$("#username").val(),password:$("#password").val()}, success: function(result){
              if(result=="yes")
              {
                  window.location.href = "Dashboard.jsp";
              }
              else
              {
                  $("#bye").text("Invalid Username or password");
                  $("#bye").css("color","red");
              }
            }});
  });
  
 
  });
        
   
</script>
</html>
