

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="hai.quiz;"%>
<%@page import="java.util.*;"%>
<%!ArrayList<ArrayList> x = new ArrayList();%>
<%
    
    quiz obj = new quiz();
    String username = (String)session.getAttribute("username");
    x = obj.generatereport(username);
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



    <title>Generate Report</title>

    </head>
    <body>
        <div class ="container-fluid">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12">
                     <h1 style="text-align: center">Test Reports </h1>
                        <table class="table table-stripped" style="margin-top:30px">
                            <thead style="background-color: black; color: white; ">
                                <tr>
                                    <th style="text-align: center">Test No.</th>
                                    <th style="text-align: center">Course</th>
                                    <th style="text-align: center">Score</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for(ArrayList<String> y : x)
                                    {%>
                                    <tr>
                                        <%
                                        for(String a : y)
                                        { %>
                                            <td style="text-align: center"><%=a%></td>
                                         <%}%>
                                    </tr>
                                   <%}
                                %>
                            </tbody>
                        </table>
                </div>
            </div>
                            <button class="btn btn-primary" style="alignment-adjust: central; margin-left: 700px; margin-top: 40px" id="print" >Print</button>
        </div>
    </body>
</html>
<script>
     $(document).ready(function(){
    $("#print").on("click",function(){
        window.print();
        
  });

        
  });
  


</script>
