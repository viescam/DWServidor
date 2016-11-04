/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import ejb.Calculadora2EJBLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author alumno
 */
public class AreaServlet extends HttpServlet {
    
    //declaramos un EJB
    @EJB
    private Calculadora2EJBLocal calculadora2EJB;

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
        try {
            String tipoOperacion = request.getParameter("area");
            //invocamos al EJB, por JNDI
            InitialContext jndi = new InitialContext();
        
            calculadora2EJB = (Calculadora2EJBLocal) jndi.lookup("java:global/classes/Calculadora2EJBLocal");
            double area = 0;
            switch(tipoOperacion){
                case "circulo":{
                    double radio = Double.parseDouble(request.getParameter("radio"));
                    area = calculadora2EJB.calculaAreaCirculo(radio);
                }break;
                case "cuadrado":{
                    double lado = Double.parseDouble(request.getParameter("lado"));
                    area = calculadora2EJB.calculaAreaCuadrado(lado);
                }break;
                case "triangulo":{
                    double base = Double.parseDouble(request.getParameter("base"));
                    double altura = Double.parseDouble(request.getParameter("altura"));
                    area = calculadora2EJB.calculaAreaTriangulo(base, altura);
                }break;
                case "trapecio": {
                    double base1 = Double.parseDouble(request.getParameter("base1"));
                    double base2 = Double.parseDouble(request.getParameter("base2"));
                    double altura = Double.parseDouble(request.getParameter("altura"));
                    area = calculadora2EJB.calculaAreaTrapecio(base1, base2, altura);
                }break;
            }
            request.setAttribute("area", area);
            request.setAttribute("formula",tipoOperacion);
            RequestDispatcher rd = request.getRequestDispatcher("respuesta.jsp");
            rd.forward(request,response);
        
        } catch (Exception ex) {
            ex.printStackTrace();
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