/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import com.fpmislata.service.CalculadoraServiceLocal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.naming.InitialContext;
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

    /**Para importar el EJB
     * Right-click
     * "Insert Code > Call Enterprise Bean")Y elegimos el EJB que queramos
     */
    @EJB
    private CalculadoraServiceLocal calculadoraService;

    
    
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
        double radio=0.0,lado=0.0,altura=0.0,base=0.0,base1=0.0,base2=0.0;
        double area=0.0;
        String tipoOperacion = request.getParameter("area");
        
        
        
        try{
            InitialContext jndi = new InitialContext();
            calculadoraService = (CalculadoraServiceLocal) jndi.lookup("java:global/CalculadoraEA-ear/CalculadoraEA-ejb-1.0-SNAPSHOT/CalculadoraService!com.fpmislata.service.CalculadoraServiceLocal");
            
            switch (tipoOperacion) {
                case "circulo":{
                    radio=Double.parseDouble(request.getParameter("radio"));
                    area = calculadoraService.calculaAreaCirculo(radio);
                };break;
                case "cuadrado":{
                    lado=Double.parseDouble(request.getParameter("lado"));
                    area = calculadoraService.calcularAreaCuadrado(lado);
                };break;
                case "triangulo":{
                    base=Double.parseDouble(request.getParameter("base"));
                    altura=Double.parseDouble(request.getParameter("altura"));
                    area = calculadoraService.calcularAreaTriangulo(base,altura);
                };break;
                 case "trapecio":{
                    base1=Double.parseDouble(request.getParameter("base1"));
                    base2=Double.parseDouble(request.getParameter("base2"));
                    altura=Double.parseDouble(request.getParameter("altura"));
                    area = calculadoraService.calcularAreaTrapecio(base1, base2, altura);
                };break;
            }
            request.setAttribute("area", area);
            request.setAttribute("formula",tipoOperacion);
            RequestDispatcher rd = request.getRequestDispatcher("respuesta.jsp");
            rd.forward(request,response);
        }catch(Exception e){
            e.printStackTrace();
            
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
