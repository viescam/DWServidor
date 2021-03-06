/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import videoclub.AlquilerBean;

/**
 *
 * @author alumnoDAWFPMislata
 */
@WebServlet(urlPatterns = {"/CapturaDatosVideoClub"})
public class CapturaDatosVideoClub extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlquilerBean datosPelicula = new AlquilerBean();
        datosPelicula.setNombre(request.getParameter("Nom_Pelicula"));
        datosPelicula.setDiasDeAlquiler(request.getParameter("Num_Dias_Alquiler"));
        datosPelicula.setEdadMaxCliente(request.getParameter("Edad_Cliente"));
        datosPelicula.setFormaPago(request.getParameter("Forma_Pago"));
        datosPelicula.setEspecificaciones(request.getParameter("especificaciones"));
        request.setAttribute("pelicula", datosPelicula);
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/formulario2.jsp");
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
