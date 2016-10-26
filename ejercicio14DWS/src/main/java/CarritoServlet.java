/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tienda.Producto;

/**
 *
 * @author alumno
 */
public class CarritoServlet extends HttpServlet {
    ArrayList<Producto> productos = new ArrayList<Producto>();
    HashMap<Long, Integer> carrito = new HashMap(); 
    @Override
    public void init() throws ServletException{
        
        Producto prod1 = new Producto(1,"Leche",2);
        Producto prod2 = new Producto(2,"Cerveza",3);
        Producto prod3 = new Producto(3,"Pasteles",6);
        Producto prod4 = new Producto(4,"Helados",4);
        Producto prod5 = new Producto(5,"Cereales",5);
        Producto prod6 = new Producto(6,"Ensalada",2);
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
            long idEscogido = Long.parseLong(request.getParameter("selCombo"));
            Iterator it = carrito.keySet().iterator();
            while (it.hasNext()) {
                long key = (long)it.next();
                if(key!=idEscogido){
                    sw=true;
                    carrito.put(idEscogido, 1);
                }
            }
        }
        //nos cremamos un objeto de ambito Sesion
        
        request.getSession().setAttribute("productosTienda", productos);
        request.setAttribute("carrito", carrito);
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
