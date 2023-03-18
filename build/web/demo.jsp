<%-- 
    Document   : c
    Created on : 23 Feb, 2022, 1:10:40 AM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hai.quiz;" %>
<%@page import="java.util.*;" %>
<%@page import="java.sql.*;" %>

<%@page import="java.security.*;" %>
<%@page import=" javax.servlet.http.HttpSession;" %>



<%
//    String course= request.getParameter("hai");
//    String count = (String)request.getParameter("count");
//    session.setAttribute("course", course);

%>
<%--<%!ArrayList<ArrayList> hai = new ArrayList();%>
<%
//    quiz obj=new quiz();
//    int[] result = obj.unique(1,11);
//    int [] b = new int[10];
//        for(int i=0;i<10;i++)
//        {
//            b[i]=result[i];
//        }
//    
//    hai = obj.data(b);
    %>--%>
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



    <title>C Quiz</title>
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
            <div class="collapse navbar-collapse " id ="menu">
            <ul class="nav navbar-nav navbar-right ">
                <li><a href="index.html" class="mx-auto"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#"class="mx-auto"></i>  About</a></li>
                <li><a href="Contact.html" class="mx-auto"><i class="fa fa-phone"></i>  Contact</a></li>
                



            </ul>
        </div> 
        </div>
       
    </nav>
    <div class="container-fluid" style="margin: 50px;" id ="remove">
        <div class="row" id = "head">
            <div class="col-md-12" >
                
                <form action="answerc">
                <div class="col-3" id="bye" style="color:black;margin-top: 5%">
<!--                <script>
                    $(document).ready(function(){
                        $("#sub").on("click",function(){
                            var a = $('#opt option:selected').val();
                            console.log(a);
                        });
                            

    });
                </script>-->
               <%
                   
                         
                          Connection con =null;
                          try{
                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                  con=DriverManager.getConnection("jdbc:derby://localhost:1527/Quiz","Ganesh","Ganesh@123");
                                  quiz obj = new quiz();
                                  int total=5;
                                  int limit=5;
                                 int k=1;
                                  int[] result = obj.unique(total,limit);
                                  
                                    int i,j;
                                        for( i=0, j=1;i<limit;i++,j++)
                                        {
                                            int[] option = obj.unique(4, 4);
                                            int c=result[i];
                                            PreparedStatement pst = con.prepareStatement("select question from questionbank where id=? ");
                                             pst.setInt(1, c);
                                                ResultSet rst = pst.executeQuery();
                                              
                                              %>
                                              <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 " id="pos" style="color:black">

                                                    <h3 style="font-weight: 800;; color: green"><u>Question:<%=j%></u></h3>
                                                   <p style="color: orange">Difficulty Level: Easy</p>
                                               <%while(rst.next())
                                               {
                                                   
                                                  
                                                if(rst.getString(1)==null)
                                                {
                                                    continue;
                                                }
                                                else{
                                                %>
                                                   
                                               
                                                  
                                                   <h2><%=rst.getString(1)%></h2>
                                                   
                                                   
                                                  <%
                                                  int l=1;
                                                  for(int e=0;e<4 && k<=limit && l<=4;e++,l++)
                                               {
                                                   PreparedStatement dst = con.prepareStatement("select options from questionbank where id=? and opid =? ");
                                                  dst.setInt(1, c);
                                                  dst.setInt(2, option[e]);
                                                     ResultSet ast = dst.executeQuery();  
                                                     
                                                int data = obj.fetch(c, option[e]);
                                                
                                               while(ast.next()){
                                                   int n = l+1;
                                                   
                                                   if(data==1)
                                                   {
                                                    %>
                                                    <input type="radio" name="<%=k%>" value="1"><%=ast.getString(1)%><br>
                                                    
                                                   <%
                                                     obj.update(c, option[e]);
                                                   }
                                                   else
                                                   {
                                                       %>
                                                    <input type="radio" name="<%=k%>" value="<%=n%>"><%=ast.getString(1)%><br>
                                                   <%
                                                   }
                                               } 
                                               
                                                 
                                                }%>
                                                  <hr>
                                                <%}
                                               
                                               
                                               
                                               k++;
                                               }
                                                %>

                                                   
                                                

                                               
                                                 </div>
                                                
                                                 <%
                                               
                                        
                                  
                                   
                               }
                          }
                                        
                               catch(Exception e)
                               {
                                   System.out.println(e);   
                               }

                        
                     
                     %>
                     <a href="answerc.java" style="padding-left: 50px"><button class="btn btn-success" id="submit" >Submit</button></a>
            
                     </div>
                     </form>
                </div>
            </div>
                
                
            </div>
                     <h1 id="append"></h1>
 
    
   
</body>
 <script>
//        $(document).ready(function(){
//    $("#sub").on("click",function(){
//      var n = $("#opt").val();
//     console.log(n);
//     if( n=== "choose")
//     {
//         $("#bye").css("visibility","hidden");
//         $("#h").css("visibility","visible");
//        }
//       else
//       {
//             $("#bye").css("visibility","visible");
//         $("#h").css("visibility","hidden");
//         $("#d").css("visibility","hidden");
//        }
//        
//  });
//  
////  $("#c").on("click",function(){
////      var n = $("#c").val();
////     console.log(n);
////     $.ajax({url:""});
//     
//        
//  });
//  
//  
//   $("#submit").on("click",function(e){
////       e.preventDefault();
////       e.run();
//
//      
//       var h = $("#opt").val();
//       $.post({url:"answerc",data:{value:h},success:function(result){
//               
//              
//       }})
//       
//     
//  });

    </script>
</html>
<%--<%
                          Connection con =null;
                          try{
                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                  con=DriverManager.getConnection("jdbc:derby://localhost:1527/Quiz","Ganesh","Ganesh@123");
                                  
                                  
                                    PreparedStatement pst = con.prepareStatement("select question from question ");
                                    
                                     ResultSet rst = pst.executeQuery();
                                     int i=1;
                                    while(rst.next())
                                    {%>
                                       <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 " id="pos">

                                        <h3>Question:<%=i%></h3>
                                        <p>Difficulty Level: Easy</p>
                                        <h2><%=rst.getString(1)%>
                                               
                                        </h2>
                                     </div>
                                       
                                    <% i++;
                                    }
                               }
                               catch(Exception e)
                               {
                                   System.out.println(e);   
                               }

                        
                     

                     %>--%>