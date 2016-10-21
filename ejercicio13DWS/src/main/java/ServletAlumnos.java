/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import alumnos.AlumnoBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno
 */
public class ServletAlumnos extends HttpServlet {

    ArrayList<AlumnoBean> alumnos = new ArrayList<AlumnoBean>();
    
    @Override
    public void init() throws ServletException{
        AlumnoBean alumno1= new AlumnoBean();
        alumno1.setNombre("Rosa");
        alumno1.setApellido1("Hernández");
        alumno1.setApellido2("García");
        alumno1.setDni("12345678A");
        AlumnoBean alumno2= new AlumnoBean();
        alumno2.setNombre("Vicente");
        alumno2.setApellido1("Escamilla");
        alumno2.setApellido2("Cambres");
        alumno2.setDni("33570997J");
        AlumnoBean alumno3= new AlumnoBean();
        alumno3.setNombre("María");
        alumno3.setApellido1("López");
        alumno3.setApellido2("Granados");
        alumno3.setDni("98765432Z");
        
        alumnos.add(alumno1);
        alumnos.add(alumno2);
        alumnos.add(alumno3);
        
        super.init();
    
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean swExiste=false;
        String dniIntroducido=request.getParameter("dniIntrod");
        for(int i=0;i<alumnos.size();i++){
            if(dniIntroducido.equals(alumnos.get(i).getDni())){
                request.setAttribute("alumno", alumnos.get(i));
                swExiste=true;
            }
        }
        if(swExiste==true){
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/MuestraDatosAlumnos.jsp");
            rd.forward(request, response);
        }else{
            request.setAttribute("a", dniIntroducido);
            RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/AlumnoNoExistente.jsp");
            rd.forward(request, response);
        }
        
        /*
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletAlumnos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletAlumnos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
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
