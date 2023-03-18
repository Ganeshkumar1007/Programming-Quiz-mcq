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
                <li><a href="index.html" class="mx-auto" ><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#" class="mx-auto"><i class="fa fa-info"></i>  About</a></li>
                <li><a href="Contact.html" class="mx-auto"><i class="fa fa-phone"></i>  Contact</a></li>
                



            </ul>
        </div> 
        </div>
       
    </nav>
    <div class="container-fluid" style="margin: 50px;">
        <div class="row"id = "head">
            
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <h1 style="color: green;"><i class="fa fa-sign-in" ></i> Register Form</h1><hr>
                    <div class="form-group">
                        <label for="email" class="control-label">Email</label>
                        <input type="email" class="form-control" id ="email" name="email" placeholder="Enter Email..."><br>
                        <button class="btn btn-primary" id = "chk1">Check Email</button>
                        <p id="valid" style="color:green; display: none">Valid Email</p>
                        <p id = "invalid" style="color:red; display: none">Email Already exists</p>
                    </div>
                    <div class="form-group">
                        <label for="username" class="control-label">Username</label>
                        <input type="text" class="form-control" id ="username"name="username" placeholder="Enter Username..."><br>
                        <button class="btn btn-primary" id = "chk2">Check Username</button>
                        <p id="valid1" style="color:green; display: none">Valid Email</p>
                        <p id = "invalid1" style="color:red; display: none">Email Already exists</p>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label">Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Enter password...">
                        <p id="pass"></p>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label">Re-enter password</label>
                        <input type="text" class="form-control" id ="repassword"name="repassword" placeholder="Re-Enter password...">
                        <p id="repass"></p>
                    </div>
                    <div class="form-group">
                        <label for="username" class="control-label">First name</label>
                        <input type="text" class="form-control" id ="firstname"name="firstname" placeholder="Enter firstname...">
                    
                    
                        <label for="username" class="control-label">Last Name</label>
                        <input type="text" class="form-control" id ="lastname"name="lastname" placeholder="Enter lastname...">
                    </div>
                    <div class="form-group col-3">
                        <label for="mobile" class="control-label">Mobile Number</label>
                        <input type="tel" class="form-control" id ="mobile"name="mobile" placeholder="Enter Mobile Number" >
                    </div>
                    
                    <div class="form-group col-3">
                        <label for="age" class="control-label">Age</label>
                        <input type="text" class="form-control" id ="age"name="age" placeholder="Enter Age...">
                    </div>
                    <div class="form-group col-3">
                        <label for="username" class="control-label">Date-of-birth</label>
                        <input type="date" class="form-control" id ="dob"name="dob" >
                    </div>
                    

                    
                     
                     <button class="btn btn-success" id="submit" disabled>Submit</button>
                   
                </div>
            </div>
            <div style=" display: none; border: 5px dashed green;margin: 5px; padding: 5px; background-color: greenyellow; color: white;" id="show"> 
                <h3>Registered Successfully....</h3>
                  <h3>Now you can login using username and password.....</h3>
                  <a href="login.jsp"><button class="btn btn-success">Login</button></a>
            </div>
            
        
        
       </div>
    
    
</body>
<script>
        $(document).ready(function(){
            
        $("#submit").on("click",function(){
            var username=$("#username").val();
            var password =$("#password").val();
            var repassword= $("#repassword").val();
            var email = $("#email").val();
            var firstname =$("#firstname").val();
            var lastname=$("#lastname").val();
            var age = $("#age").val();
            var dob = $("#dob").val();
            var mobile = $("#mobile").val();
            $.post({url:"login",data:{username:username,password:password,repassword:repassword,email:email,firstname:firstname,lastname:lastname, age:age,dob:dob,mobile:mobile}, success: function(result){
              if(result=="yes")
              {
                  $("#head").hide();
                  $("#show").show();
                  
                  
              }
              else
              {
                  $("#bye").text("Re-entered password does not match!!!");
                  $("#bye").css("color","red");
              }
            }});
        
        
        $.post({url:"loginresponse",data:{username:username,password:password,repassword:repassword,email:email,firstname:firstname,lastname:lastname, age:age,dob:dob,mobile:mobile}, success: function(result){
              if(result=="yes")
              {
                  $("#head").hide();
                  $("#show").show();
                  
                  
              }
              else
              {
                  $("#bye").text("Re-entered password does not match!!!");
                  $("#bye").css("color","red");
              }
            }});
  });
  
        $("#chk1").on("click",function(){
            var email = $("#email").val();
            var check = $("#chk1").val();
           $.post({url:"emailcheck",data:{email:email},success:function(result){
                   if(result=="yes")
                   {
                        $("#valid").show();
                        $("#invalid").hide();
                    }
                    
                    else
                   {
                        $("#invalid").show();
                            $("#valid").hide();

                    }
        }}) 
              if(email==null)
                    {
                        $("#invalid").show();
                            $("#valid").hide();
                    }
        });
        
        $("#chk2").on("click",function(){
            var username = $("#username").val();
            var check = $("#chk1").val();
           $.post({url:"usernamecheck",data:{username:username},success:function(result){
                   if(result=="yes")
                   {
                        $("#valid1").show();
                        $("#invalid1").hide();
                    }
                    
                    else
                   {
                        $("#invalid1").show();
                            $("#valid1").hide();

                    }
        }}) 
              
        });
        
        
        
        
        $("#password").on("keyup",function(){
        var regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
        var n=$(this).val();
        if(n.match(regularExpression)) 
        {
            $("#pass").text("Valid password");
            $("#pass").css("color","green");
        }
        else
        {
            $("#pass").text("Invalid password");
            $("#pass").css("color","red");
        }
    })
     $("#repassword").on("keyup",function(){
       var k=$("#password").val();
        var n=$(this).val();
        console.log(k.indexOf(n));
        if(n.length>0)
        {

            if(k.indexOf(n)!=-1) 
            {
                $("#repass").text("Matched");
                $("#repass").css("color","green");
            }
            else
            {
                $("#repass").text("not Matched");
                $("#repass").css("color","red");
            }
        }
        if(k==n)
        {
            $("#submit").attr("disabled",false);
        }
        else
        {
            $("#submit").attr("disabled",true);
        }
    })
    });
//    email:("#email").val(),firstname:$("#firstname").val(),lastname:$("#lastname").val(),age:$("#age").val(),dob:$("#dob").val(),
</script>
</html>
