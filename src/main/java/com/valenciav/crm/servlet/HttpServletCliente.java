/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valenciav.crm.servlet;

import com.valenciav.crm.dao.implement.PersonaNaturalDAOImpl;
import com.valenciav.crm.model.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.valenciav.crm.model.PersonaNatural;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import com.valenciav.crm.dao.ClienteDAO;
import com.valenciav.crm.dao.implement.ClienteDAOImpl;
import com.valenciav.crm.model.Empresa;
import java.util.List;

/**
 *
 * @author Shuan
 */
@WebServlet(urlPatterns = {"/Cliente"})
public class HttpServletCliente extends HttpServlet {

    static Logger LOG = Logger.getLogger(HttpServletCliente.class);

    ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
    ClienteDAOImpl cliente = ctx.getBean("ClienteDAOImpl", ClienteDAOImpl.class);

//    ClienteDAO personaDAO = ctx.getBean("PersonaNaturalDAOImpl", ClienteDAO.class);
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

//        HttpSession sesion = request.getSession();
        LOG.debug("Estas en el servlet GET");

        List<PersonaNatural> personas = cliente.obtenerClientesPersona();
        LOG.debug("El tamaño de la lista es: " + personas.size());
        List<Empresa> empresas = cliente.obtenerClientesEmpresas();
        LOG.debug("El tamaño de la lista es: " + empresas.size());

        request.getSession().setAttribute("listaPersonas", personas);
        request.getSession().setAttribute("listaEmpresas", empresas);
        response.sendRedirect("verClientes.jsp");
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
        HttpSession sesion = request.getSession();//Para verificar el id de la Sesion utilizar sesion.getId()

        LOG.debug("*************** Gestionando Cliente ***************");

        String clie = request.getParameter("cliente");
        LOG.debug("El valor de cliente " + clie);
        
        if (("persona").equals(clie)) {
            
            String dni = request.getParameter("dni");
            String name = request.getParameter("name");
            String apaterno = request.getParameter("apaterno");
            String amaterno = request.getParameter("amaterno");
            String email = request.getParameter("email");
            String telefono = request.getParameter("telefono");
            String movil = request.getParameter("movil");
            String funcion = request.getParameter("funcion");

            PersonaNatural persona = new PersonaNatural(movil, telefono, email, 0);
            persona.setDni(dni);
            persona.setNombre(name);
            persona.setaPaterno(apaterno);
            persona.setaMaterno(amaterno);
            
            if(("Eliminar").equals(funcion)){
                LOG.debug("*************** Eliminando Persona ***************");
                this.cliente.eliminarPersonaByDni(dni);
                response.sendRedirect("Cliente");
                return;
            }
            
            if(this.cliente.buscarPersonaByDni(dni)){
                LOG.debug("*************** Editando Persona ***************");
                this.cliente.editarPersona(persona);
                
            } else{
                LOG.debug("*************** Registrando Persona ***************");
                this.cliente.registrarPersona(persona);
            }
            
            LOG.debug("El valor de la funcion es: " + request.getParameter("funcion"));
            
        }

        if (("empresa").equals(clie)) {
            LOG.debug("*************** Registrando Empresa ***************");
            String ruc = request.getParameter("ruc");
            String rsocial = request.getParameter("rsocial");
            String tipo = request.getParameter("tipo");
            String email = request.getParameter("email");
            String telefono = request.getParameter("telefono");
            String movil = request.getParameter("movil");

            Empresa empresa = new Empresa(movil, telefono, email, 0);
            empresa.setRuc(ruc);
            empresa.setRazonSocial(rsocial);
            empresa.setRubro(tipo);
            if(this.cliente.buscarPersonaByRuc(ruc)){
                LOG.debug("*************** Editando Empresa ***************");
                this.cliente.editarEmpresa(empresa);
                
            } else{
                LOG.debug("*************** Registrando Empresa ***************");
                this.cliente.registrarEmpresa(empresa);
            }
        } 
        
        response.sendRedirect("Cliente");

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
