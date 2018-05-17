/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valenciav.crm.model;

/**
 *
 * @author Shuan
 */
public class Cliente {
    
    protected String movil;
    protected String telefono;
    protected String email;
    protected double monto;

    public Cliente(String movil, String telefono, String email, double monto) {
        this.movil = movil;
        this.telefono = telefono;
        this.email = email;
        this.monto = monto;
    }

    
}
