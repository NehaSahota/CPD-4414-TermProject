/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import beans.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author c0646567
 */
public class RegistrationServlet extends HttpServlet {

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
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       try
       {
           Student student = new Student();
           
           student.setFirstName(request.getParameter("firstName"));
           student.setLastName(request.getParameter("lastName"));
           student.setEmail(request.getParameter("email"));
           student.setAddress(request.getParameter("address"));
           student.setPassword(request.getParameter("password"));
           
           student.RegisterUser();
           
           out.println("<br>");
           out.println("<br>");
           out.println("<center> GREAT !!! </center>");
           RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
           rd.forward(request,response);
       }finally {out.close();}

        }
    
   
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

    
    
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
       response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       try
       {
           Student student = new Student();
           
           student.setFirstName(request.getParameter("firstName"));
           student.setLastName(request.getParameter("lastName"));
           student.setEmail(request.getParameter("email"));
           student.setAddress(request.getParameter("address"));
           student.setPassword(request.getParameter("password"));
           
           student.UpdateUser();
           
           out.println("<br>");
           out.println("<br>");
           out.println("<center> GREAT !!! </center>");
           RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
           rd.forward(request,response);
       } catch (SQLException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }finally {out.close();}

        
        
        
        
        
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
