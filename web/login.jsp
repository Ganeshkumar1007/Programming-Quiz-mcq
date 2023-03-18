<%-- 
    Document   : login
    Created on : 25 Feb, 2022, 11:33:53 AM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <li><a href="#" class="mx-auto" ><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#" class="mx-auto"><i class="fa fa-info"></i>  About</a></li>
                <li><a href="Contact.html" class="mx-auto"><i class="fa fa-phone"></i>  Contact</a></li>
                



            </ul>
        </div> 
        </div>
       
    </nav>
    <div class="container-fluid" style="margin: 50px;">
        <div class="row"id = "head">
            
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <h1 style="color: green;"><i class="fa fa-sign-in" ></i> Login Form</h1><hr>
                    <div class="form-group">
                        <label for="username" class="control-label">Username</label>
                        <input type="text" class="form-control" id ="username"name="text" placeholder="Enter Username...">
                    </div>
                    <div class="form-group">
                        <label for="email" class="control-label">Email</label>
                        <input type="text" class="form-control" id ="email" name="text" placeholder="Enter Email...">
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label">Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Enter password...">
                    </div>
                    <div class="checkbox">
                        <label for="remember"><input type="checkbox" name="check" >Remember Me</label>


                    </div>
                     <h4 id="bye"></h4>
                    <button class="btn btn-success" id="submit">Submit</button>
                   
                </div>
                
            </div>
            
        </div>
    </div>
    
</body>
<script>
        $(document).ready(function(){
        $("#submit").click(function(){
            
            $.ajax({url: "loginresponse",data:{username:$("#username").val(),password:$("#password").val(),email: $("#email").val()}, success: function(result){
              if(result=="yes")
              {
                  $("#username").val(" ");
                  $("#email").val(" ");
                  $("#password").val(" ");
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
