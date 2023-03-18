/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hai;
//import WebPages.register;
import java.io.IOException;
import java.io.PrintWriter;
import static java.rmi.activation.Activatable.register;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static sun.java2d.loops.CustomComponent.register;
import static sun.java2d.loops.GeneralRenderer.register;
import static sun.java2d.loops.GraphicsPrimitiveMgr.register;

/**
 *
 * @author Ganesh
 */
public class login extends HttpServlet {

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
       String email = request.getParameter("email");
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       String first = request.getParameter("firstname");
       String last = request.getParameter("lastname");
       int age = Integer.parseInt(request.getParameter("age"));
       String dob = request.getParameter("dob");
       String res = request.getParameter("repassword");
       String name = first + last;
       int mobile =Integer.parseInt( request.getParameter("mobile"));
       System.out.println(username);
       if(password.equals(res))
       {
           quiz obj = new quiz();
           
           obj.login(username,password,name,age,dob,email,mobile);
           String n = obj.username(email, password);
           System.out.println(n);
           HttpSession session = request.getSession();
           session.setAttribute("username",username);
           
           
           response.getWriter().print("yes");
           
           
            
           
       }
       else
       {
                  response.getWriter().print("no");

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
