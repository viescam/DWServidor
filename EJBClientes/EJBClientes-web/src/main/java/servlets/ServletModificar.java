/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import clasesJava.Cliente;
import com.fpmislata.service.MantenimientoServiceLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno
 */
public class ServletModificar extends HttpServlet {

    @EJB
    private MantenimientoServiceLocal mantenimientoService;

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
        
        ArrayList<Cliente> listaClientes = (ArrayList<Cliente>) request.getSession().getAttribute("listaClientes");
        String accion = request.getParameter("accion");
        if("cambiarDatos".equals(accion)){
            String[] clientesMarcados = request.getParameterValues("clienteChecked");
            ArrayList<Cliente> clientesAModificar = new ArrayList<Cliente>();
            for(int i=0;i<clientesMarcados.length;i++){
                int idClienteMarcado = Integer.parseInt(clientesMarcados[i]);
                for(int j=0;j<listaClientes.size();j++){
                    if(listaClientes.get(i).getId()==idClienteMarcado){
                        clientesAModificar.add(listaClientes.get(i));
                    }
                }
            }
            request.setAttribute("clientesModificar",clientesAModificar);
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/modificar.jsp");
            rd.forward(request, response);
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
