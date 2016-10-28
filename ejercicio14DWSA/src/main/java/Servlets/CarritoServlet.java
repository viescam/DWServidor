/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Tienda.Producto;

/**
 *
 * @author alumno
 */
public class CarritoServlet extends HttpServlet {
    ArrayList<Producto> productos = new ArrayList<Producto>();
    
    
    @Override
    public void init() throws ServletException{
        
        Producto prod1 = new Producto(1,"Leche",1.10,0);
        Producto prod2 = new Producto(2,"Cerveza",2.75,0);
        Producto prod3 = new Producto(3,"Pasteles",4.62,0);
        Producto prod4 = new Producto(4,"Helados",3.50,0);
        Producto prod5 = new Producto(5,"Cereales",4.75,0);
        Producto prod6 = new Producto(6,"Ensalada",1.80,0);
        productos.add(prod1);  
        productos.add(prod2);
        productos.add(prod3);
        productos.add(prod4);
        productos.add(prod5);
        productos.add(prod6);
                       
        super.init();
    }
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(request.getParameter("selCombo")!=null){
            boolean sw=false;
            int idEscogido = Integer.parseInt(request.getParameter("selCombo"));
            for(int i=0;i<productos.size();i++){
                if(idEscogido==productos.get(i).getId()){
                    productos.get(i).setCantidad(productos.get(i).getCantidad()+1);
                }
            }
            
            
        }
        //nos cremamos un objeto de ambito Sesion
        request.getSession().setAttribute("productosTienda", productos);
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/tienda.jsp");
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
