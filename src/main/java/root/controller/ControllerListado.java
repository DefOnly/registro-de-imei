/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package root.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import root.model.dao.PhoneDAO;
import root.model.dao.exceptions.NonexistentEntityException;
import root.model.entities.Phone;

/**
 *
 * @author kevin
 */
@WebServlet(name = "ControllerListado", urlPatterns = {"/controllerListado"})
public class ControllerListado extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerListado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerListado at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        String seleccion = request.getParameter("seleccion");
        String accion = request.getParameter("accion");
        System.out.println("controllerListado seleccion" +seleccion);
        System.out.println("controllerListado accion" +accion);
        
        if(accion.equalsIgnoreCase("Editar")){
            
           Phone ps = new Phone();
           PhoneDAO dao = new PhoneDAO();
           
           ps = dao.findPhone(seleccion);
           request.setAttribute("phone", ps);
           request.getRequestDispatcher("editar.jsp").forward(request, response);
        }
        
        if(accion.equalsIgnoreCase("Eliminar")){
            
            PhoneDAO dao = new PhoneDAO();
            List<Phone> ph1 = new ArrayList<Phone>();
            try{
                dao.destroy(seleccion);
                ph1 = dao.findPhoneEntities();
            } catch (NonexistentEntityException ex) {
                Logger.getLogger(ControllerListado.class.getName()).log(Level.SEVERE, null, ex);
            }
        request.setAttribute("ph1", ph1);
        request.getRequestDispatcher("lista.jsp").forward(request, response);
        }
        
        if(accion.equalsIgnoreCase("Agregar")){
            request.getRequestDispatcher("agregar.jsp").forward(request, response);
        }
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
