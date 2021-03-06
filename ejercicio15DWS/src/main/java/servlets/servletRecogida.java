/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vicente
 */
public class servletRecogida extends HttpServlet {

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
        String checkBoxValue = request.getParameter("rememberBox");
        Cookie cookieUser,cookiePswd;
        String usuario = (String) request.getParameter("usuario");
        String password = (String) request.getParameter("password");
        
        
        try{
            if(checkBoxValue!=null){
                cookieUser = new Cookie("usuario", usuario);
                cookieUser.setMaxAge(365*24*60*60);
                response.addCookie(cookieUser);
                
                cookiePswd = new Cookie("password", password);
                cookiePswd.setMaxAge(365*24*60*60);
                response.addCookie(cookiePswd);
            }else{
                Cookie cookies[]=request.getCookies();
                if (cookies != null) {
                    for (Cookie cook : cookies) {
                        if(cook.getName().equalsIgnoreCase("usuario")){
                            cook.setMaxAge(0);
                            response.addCookie(cook);
                        }
                        if(cook.getName().equalsIgnoreCase("password")){
                            cook.setMaxAge(0);
                            response.addCookie(cook);
                        }
                    }    
                } 
            }
            
        }catch(Exception e){
            System.out.println("chbox vacio");
            
        }
        request.setAttribute("usuario", usuario);
        request.setAttribute("password", password);
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/bienvenida.jsp");
        //RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/servletMuestra");
        rd.forward(request, response);
                
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
