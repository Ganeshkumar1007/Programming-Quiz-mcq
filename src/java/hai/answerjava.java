/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hai;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ganesh
 */
public class answerjava extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String paramName , paramValue[];
        int count=0;
        String ans="";
        
//       String course = request.getParameter("value");
        HttpSession session=request.getSession();  
//        session.setAttribute("course",course);
        String subject = (String)session.getAttribute("java");
        //String cow = (String)session.getAttribute("subject");
//        System.out.println(course);
        String username = (String)session.getAttribute("username");
        Enumeration paramNames = request.getParameterNames();
        Connection con =null;
        try
        {
            
            
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             con=DriverManager.getConnection("jdbc:derby://localhost:1527/Quiz","Ganesh","Ganesh@123");
            PreparedStatement pst = con.prepareStatement("select answer from javaquestions");
            ResultSet rst = pst.executeQuery();
            
            while(rst.next() && paramNames.hasMoreElements())
            {
                if(rst.getString(1)==null)
                {   
                    continue;
                }
                else
                {
                    String result = Integer.toString(rst.getInt(1));

                    paramName = (String)paramNames.nextElement();
                    paramValue = request.getParameterValues(paramName);
                    for(int i=0;i<paramValue.length;i++)
                    {
                        ans=paramValue[i];
                    }

                    if(result.equals(ans))
                    {
                        count++;
                    }
                }
            }
            
            
//                    "<h1 >Result</h1><h3 >You have scored " + count + username+ subject+" out of 5</h3>"
//                    
//                    + "<input name='hii' value="+count+" readonly='readonly'><a href='gmail'><button class='btn btn-success'>Send report to mail</button></a>"
//                    + "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>"
//                    + "<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script><script>"
//                    + "</script>"
            
            String sum= Integer.toString(count);
//            HttpSession session1 = request.getSession();
            session.setAttribute("count", sum);
            quiz obj1 = new quiz();
           // obj1.report(course, sum);
             String course = obj1.inreport(username,subject,count);
            session.setAttribute("course", course);
            response.sendRedirect("Reportstatus.jsp");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
