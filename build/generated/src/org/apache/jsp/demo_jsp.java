package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import hai.quiz;;
import java.util.*;;
import java.sql.*;;
import java.security.*;;
import javax.servlet.http.HttpSession;;

public final class demo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

//    String course= request.getParameter("hai");
//    String count = (String)request.getParameter("count");
//    session.setAttribute("course", course);


      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("     <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <script src='https://kit.fontawesome.com/a076d05399.js' ></script>\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" >\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Poppins&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <title>C Quiz</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <nav class=\"navbar navbar-inverse navbar-fixed-top\" id =\"hai\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#menu\" id=\"toggle\">\n");
      out.write("                     <span class=\"icon-bar\"></span>\n");
      out.write("                     <span class=\"icon-bar\"></span>\n");
      out.write("                     <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a href=\"#\" class=\"navbar-brand\" id = \"heading\">Quiz</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"collapse navbar-collapse \" id =\"menu\">\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right \">\n");
      out.write("                <li><a href=\"index.html\" class=\"mx-auto\"><i class=\"fa fa-home\"></i> Home</a></li>\n");
      out.write("                <li><a href=\"#\"class=\"mx-auto\"></i>  About</a></li>\n");
      out.write("                <li><a href=\"Contact.html\" class=\"mx-auto\"><i class=\"fa fa-phone\"></i>  Contact</a></li>\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </div> \n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </nav>\n");
      out.write("    <div class=\"container-fluid\" style=\"margin: 50px;\" id =\"remove\">\n");
      out.write("        <div class=\"row\" id = \"head\">\n");
      out.write("            <div class=\"col-md-12\" >\n");
      out.write("                \n");
      out.write("                <form action=\"answerc\">\n");
      out.write("                <div class=\"col-3\" id=\"bye\" style=\"color:black;margin-top: 5%\">\n");
      out.write("<!--                <script>\n");
      out.write("                    $(document).ready(function(){\n");
      out.write("                        $(\"#sub\").on(\"click\",function(){\n");
      out.write("                            var a = $('#opt option:selected').val();\n");
      out.write("                            console.log(a);\n");
      out.write("                        });\n");
      out.write("                            \n");
      out.write("\n");
      out.write("    });\n");
      out.write("                </script>-->\n");
      out.write("               ");

                   
                         
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
                                              
                                              
      out.write("\n");
      out.write("                                              <div class=\"col-md-12 col-lg-12 col-sm-12 col-xs-12 \" id=\"pos\" style=\"color:black\">\n");
      out.write("\n");
      out.write("                                                    <h3 style=\"font-weight: 800;; color: green\"><u>Question:");
      out.print(j);
      out.write("</u></h3>\n");
      out.write("                                                   <p style=\"color: orange\">Difficulty Level: Easy</p>\n");
      out.write("                                               ");
while(rst.next())
                                               {
                                                   
                                                  
                                                if(rst.getString(1)==null)
                                                {
                                                    continue;
                                                }
                                                else{
                                                
      out.write("\n");
      out.write("                                                   \n");
      out.write("                                               \n");
      out.write("                                                  \n");
      out.write("                                                   <h2>");
      out.print(rst.getString(1));
      out.write("</h2>\n");
      out.write("                                                   \n");
      out.write("                                                   \n");
      out.write("                                                  ");

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
                                                    
      out.write("\n");
      out.write("                                                    <input type=\"radio\" name=\"");
      out.print(k);
      out.write("\" value=\"1\">");
      out.print(ast.getString(1));
      out.write("<br>\n");
      out.write("                                                    \n");
      out.write("                                                   ");

                                                     obj.update(c, option[e]);
                                                   }
                                                   else
                                                   {
                                                       
      out.write("\n");
      out.write("                                                    <input type=\"radio\" name=\"");
      out.print(k);
      out.write("\" value=\"");
      out.print(n);
      out.write('"');
      out.write('>');
      out.print(ast.getString(1));
      out.write("<br>\n");
      out.write("                                                   ");

                                                   }
                                               } 
                                               
                                                 
                                                }
      out.write("\n");
      out.write("                                                  <hr>\n");
      out.write("                                                ");
}
                                               
                                               
                                               
                                               k++;
                                               }
                                                
      out.write("\n");
      out.write("\n");
      out.write("                                                   \n");
      out.write("                                                \n");
      out.write("\n");
      out.write("                                               \n");
      out.write("                                                 </div>\n");
      out.write("                                                \n");
      out.write("                                                 ");

                                               
                                        
                                  
                                   
                               }
                          }
                                        
                               catch(Exception e)
                               {
                                   System.out.println(e);   
                               }

                        
                     
                     
      out.write("\n");
      out.write("                     <a href=\"answerc.java\" style=\"padding-left: 50px\"><button class=\"btn btn-success\" id=\"submit\" >Submit</button></a>\n");
      out.write("            \n");
      out.write("                     </div>\n");
      out.write("                     </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("                     <h1 id=\"append\"></h1>\n");
      out.write(" \n");
      out.write("    \n");
      out.write("   \n");
      out.write("</body>\n");
      out.write(" <script>\n");
      out.write("//        $(document).ready(function(){\n");
      out.write("//    $(\"#sub\").on(\"click\",function(){\n");
      out.write("//      var n = $(\"#opt\").val();\n");
      out.write("//     console.log(n);\n");
      out.write("//     if( n=== \"choose\")\n");
      out.write("//     {\n");
      out.write("//         $(\"#bye\").css(\"visibility\",\"hidden\");\n");
      out.write("//         $(\"#h\").css(\"visibility\",\"visible\");\n");
      out.write("//        }\n");
      out.write("//       else\n");
      out.write("//       {\n");
      out.write("//             $(\"#bye\").css(\"visibility\",\"visible\");\n");
      out.write("//         $(\"#h\").css(\"visibility\",\"hidden\");\n");
      out.write("//         $(\"#d\").css(\"visibility\",\"hidden\");\n");
      out.write("//        }\n");
      out.write("//        \n");
      out.write("//  });\n");
      out.write("//  \n");
      out.write("////  $(\"#c\").on(\"click\",function(){\n");
      out.write("////      var n = $(\"#c\").val();\n");
      out.write("////     console.log(n);\n");
      out.write("////     $.ajax({url:\"\"});\n");
      out.write("//     \n");
      out.write("//        \n");
      out.write("//  });\n");
      out.write("//  \n");
      out.write("//  \n");
      out.write("//   $(\"#submit\").on(\"click\",function(e){\n");
      out.write("////       e.preventDefault();\n");
      out.write("////       e.run();\n");
      out.write("//\n");
      out.write("//      \n");
      out.write("//       var h = $(\"#opt\").val();\n");
      out.write("//       $.post({url:\"answerc\",data:{value:h},success:function(result){\n");
      out.write("//               \n");
      out.write("//              \n");
      out.write("//       }})\n");
      out.write("//       \n");
      out.write("//     \n");
      out.write("//  });\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
