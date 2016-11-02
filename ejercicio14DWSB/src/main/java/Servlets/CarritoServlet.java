/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Tienda.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno
 */
public class CarritoServlet extends HttpServlet {
    Hashtable<Integer,Producto> hashProdutos = new Hashtable();

    @Override
    public void init() throws ServletException{
        
        Producto prod1 = new Producto(1,"Leche",1.10,0);
        Producto prod2 = new Producto(2,"Cerveza",2.75,0);
        Producto prod3 = new Producto(3,"Pasteles",4.62,0);
        Producto prod4 = new Producto(4,"Helados",3.50,0);
        Producto prod5 = new Producto(5,"Cereales",4.75,0);
        Producto prod6 = new Producto(6,"Ensalada",1.80,0);
        hashProdutos.put(1, prod1);
        hashProdutos.put(2, prod2);
        hashProdutos.put(3, prod3);
        hashProdutos.put(4, prod4);
        hashProdutos.put(5, prod5);
        hashProdutos.put(6, prod6);
        
                               
        super.init();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("selCombo")!=null){
            boolean sw=false;
            int idEscogido = Integer.parseInt(request.getParameter("selCombo"));
            Enumeration enumer = hashProdutos.keys();
            while(enumer.hasMoreElements()){
                Integer clave = (Integer) enumer.nextElement();
                Producto prod = (Producto) hashProdutos.get(clave);
                if(idEscogido==prod.getId()){
                    prod.setCantidad(prod.getCantidad()+1);
                    hashProdutos.put(clave, prod);
                }
            }
        }
        //nos cremamos un objeto de ambito Sesion
        request.getSession().setAttribute("hashProductosTienda", hashProdutos);
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/tienda.jsp");
        System.out.println("Hola");
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
