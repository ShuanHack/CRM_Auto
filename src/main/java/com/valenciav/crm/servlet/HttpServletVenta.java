/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valenciav.crm.servlet;

import com.valenciav.crm.dao.implement.PersonaNaturalDAOImpl;
import com.valenciav.crm.dao.implement.VentaDAOImpl;
import com.valenciav.crm.model.PersonaNatural;
import com.valenciav.crm.model.Venta;
import static com.valenciav.crm.servlet.HttpServletCliente.LOG;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author Shuan
 */
public class HttpServletVenta extends HttpServlet {
    
     static Logger LOG = Logger.getLogger(HttpServletVenta.class);
    
    ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
    VentaDAOImpl venta = ctx.getBean("VentaDAOImpl", VentaDAOImpl.class);

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
        
        LOG.debug("Estas en el servlet GET");
        
        List<Venta> personas = venta.obtenerVentasPersonas();
        LOG.debug("La cantidad de ventas a personas es: " + personas.size());
        List<Venta> empresa = venta.obtenerVentasEmpresas();
        LOG.debug("La cantidad de ventas a empresas es : " + empresa.size());
        
        request.getSession().setAttribute("listaVentasPersonas", personas);
        request.getSession().setAttribute("listaVentasEmpresas", empresa);
        response.sendRedirect("verVentas.jsp");
        
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
