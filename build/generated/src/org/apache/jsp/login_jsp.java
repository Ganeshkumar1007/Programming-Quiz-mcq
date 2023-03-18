package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Poppins&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <title>Quiz</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <nav class=\"navbar navbar-inverse navbar-fixed-top\" id =\"hai\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#menu\" id=\"toggle\">\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a href=\"#\" class=\"navbar-brand\" id = \"heading\">Quiz</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"menu\">\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right \">\n");
      out.write("                <li><a href=\"#\" class=\"mx-auto\" ><i class=\"fa fa-home\"></i> Home</a></li>\n");
      out.write("                <li><a href=\"#\" class=\"mx-auto\"><i class=\"fa fa-info\"></i>  About</a></li>\n");
      out.write("                <li><a href=\"#\" class=\"mx-auto\"><i class=\"fa fa-phone\"></i>  Contact</a></li>\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </div> \n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </nav>\n");
      out.write("    <div class=\"container-fluid\" style=\"margin: 50px;\">\n");
      out.write("        <div class=\"row\"id = \"head\">\n");
      out.write("            \n");
      out.write("                <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                    <h1 style=\"color: green;\"><i class=\"fa fa-sign-in\" ></i> Login Form</h1><hr>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"username\" class=\"control-label\">Username</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id =\"username\"name=\"text\" placeholder=\"Enter Username...\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"password\" class=\"control-label\">Password</label>\n");
      out.write("                        <input type=\"password\" class=\"form-control\" name=\"password\" id=\"password\" placeholder=\"Enter password...\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"checkbox\">\n");
      out.write("                        <label for=\"remember\"><input type=\"checkbox\" name=\"check\" >Remember Me</label>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                     <h4 id=\"bye\"></h4>\n");
      out.write("                    <button class=\"btn btn-success\" id=\"submit\">Submit</button>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("<script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("        $(\"#submit\").click(function(){\n");
      out.write("            var email = $(\"#email\").val();\n");
      out.write("            $.ajax({url: \"loginresponse\",data:{username:$(\"#username\").val(),password:$(\"#password\").val(),email:email}, success: function(result){\n");
      out.write("              if(result==\"yes\")\n");
      out.write("              {\n");
      out.write("                  window.location.href = \"Dashboard.jsp\";\n");
      out.write("              }\n");
      out.write("              else\n");
      out.write("              {\n");
      out.write("                  $(\"#bye\").text(\"Invalid Username or password\");\n");
      out.write("                  $(\"#bye\").css(\"color\",\"red\");\n");
      out.write("              }\n");
      out.write("            }});\n");
      out.write("  });\n");
      out.write("        \n");
      out.write("    });\n");
      out.write("</script>\n");
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
