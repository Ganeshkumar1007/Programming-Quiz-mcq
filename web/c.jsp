<%-- 
    Document   : c
    Created on : 23 Feb, 2022, 1:10:40 AM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hai.quiz;" %>
<%@page import="java.util.*;" %>
<%@page import="java.security.*;" %>

<%!ArrayList<ArrayList> hai = new ArrayList();%>
<%
    quiz obj=new quiz();
    int[] result = obj.unique(1,11);
    int [] b = new int[10];
        for(int i=0;i<10;i++)
        {
            b[i]=result[i];
        }
    
    hai = obj.data(b);
    %>
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
    <script src='https://kit.fontawesome.com/a076d05399.js' ></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">


<script>
        $(document).ready(function(){
        $("#toggle").on("click",function(){
            $("#head").css('margin-top','200px');
        });
        
    });
</script>
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
                <li><a href="#" class="mx-auto"><i class="fa fa-phone"></i>  Contact</a></li>
                <li class="btn btn-success navbar-btn"  id="sign" style="margin-left: 20px;">SignIn</li>



            </ul>
        </div> 
        </div>
       
    </nav>
    <div class="container-fluid" style="margin: 50px;">
        <div class="row" id = "head">
            <div class="col-md-12" >
                <h1>Quiz, Are you Ready???</h1>
                <p>Lets,Crack it!!!</p>
                 <div class="col-3">
                     <%
                          
                         
                      for(int i=1;i<=20;i++)
                      {
                          %>
                          <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 " id="pos">
                              
                              <h3>Question:<%=i%></h3>
                              <p>Difficulty Level: Easy</p>
                              <h2><%for(ArrayList<String> x : hai)
                                    {
                                    
                                      for(String y : x)
                                     {
                                    
                                         System.out.println(y);
                                     
                                     }
                                     
                                     }%>
                              </h2>
                           </div>
                         
                      <%}
                     %>
    
                </div>
            </div>
                
                
            </div>
            
        </div>
    </div>
    
</body>

</html>
