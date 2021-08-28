/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package root.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import root.model.dao.PhoneDAO;
import root.model.entities.Phone;

/**
 *
 * @author kevin
 */
@WebServlet(name = "ControllerUsuario", urlPatterns = {"/controllerUsuario"})
public class ControllerUsuario extends HttpServlet {

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
            out.println("<title>Servlet ControllerUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerUsuario at " + request.getContextPath() + "</h1>");
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
        
        System.out.print("controllerUsuario");
        
        String imei = request.getParameter("imei");
        String marca = request.getParameter("marca");
        String modelo = request.getParameter("modelo");
        String os = request.getParameter("os");
        String year = request.getParameter("year");
        String accion = request.getParameter("accion");
        
        System.out.print("imei" +imei);
        System.out.print("marca" +marca);
        System.out.print("modelo" +modelo);
        System.out.print("os" +os);
        System.out.print("year" +year);
        
        if(accion.equalsIgnoreCase("grabarCrear")){
            try{
                PhoneDAO dao = new PhoneDAO();
                
                Phone ph = new Phone();
                ph.setImeiCode(imei);
                ph.setMarca(marca);
                ph.setModelo(modelo);
                ph.setOSystem(os);
                ph.setYear(year);
                
                Phone X = dao.findPhone(imei);
                //Validación del IMEI con los del registro
                if(X == null){
                    dao.create(ph);
                    List<Phone> ph1 = dao.findPhoneEntities();
                    System.out.println("Cantidad de clientes en Base de Datos" +ph1.size());
                    request.setAttribute("ph1", ph1);
                    
                    request.getRequestDispatcher("lista.jsp").forward(request, response);
                }
                else{
                    request.getRequestDispatcher("error.jsp").forward(request, response); 
                }
       
            } catch(Exception ex) {
                Logger.getLogger(ControllerUsuario.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        if(accion.equalsIgnoreCase("grabarEditar")){
            try{
                PhoneDAO dao = new PhoneDAO();
                
                Phone ph = new Phone();
                ph.setImeiCode(imei);
                ph.setMarca(marca);
                ph.setModelo(modelo);
                ph.setOSystem(os);
                ph.setYear(year);
              
                dao.edit(ph);
                List<Phone> ph1 = dao.findPhoneEntities();
                System.out.println("Cantidad de clientes en Base de Datos" +ph1.size());
                request.setAttribute("ph1", ph1);
                request.getRequestDispatcher("lista.jsp").forward(request, response);
               
             
            } catch(Exception ex) {
                Logger.getLogger(ControllerUsuario.class.getName()).log(Level.SEVERE, null, ex);
            }        
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
    

