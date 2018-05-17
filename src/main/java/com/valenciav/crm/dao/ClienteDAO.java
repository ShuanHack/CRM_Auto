/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valenciav.crm.dao;

import com.valenciav.crm.model.Cliente;
import com.valenciav.crm.model.PersonaNatural;
import java.util.List;

/**
 *
 * @author Shuan
 */
public interface ClienteDAO {

    public void registrar(PersonaNatural persona);

    public PersonaNatural buscarById(String id);

    public void editar(PersonaNatural personas);

    public void eliminarById(String id);

//    public List<Cliente> listar();
}
