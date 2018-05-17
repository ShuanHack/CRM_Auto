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
public class Venta {
    private String idVenta;
    private String idUsuario;
    private String clientePersona;
    private String clienteEmpresa;
    private String fechaVenta;
    private double importeTotal;
    private double gananciaTotal;

    public String getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(String idVenta) {
        this.idVenta = idVenta;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getClientePersona() {
        return clientePersona;
    }

    public void setClientePersona(String clientePersona) {
        this.clientePersona = clientePersona;
    }

    public String getClienteEmpresa() {
        return clienteEmpresa;
    }

    public void setClienteEmpresa(String clienteEmpresa) {
        this.clienteEmpresa = clienteEmpresa;
    }

    public String getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(String fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public double getImporteTotal() {
        return importeTotal;
    }

    public void setImporteTotal(double importeTotal) {
        this.importeTotal = importeTotal;
    }

    public double getGananciaTotal() {
        return gananciaTotal;
    }

    public void setGananciaTotal(double gananciaTotal) {
        this.gananciaTotal = gananciaTotal;
    }

    @Override
    public String toString() {
        return "Venta{" + "idVenta=" + idVenta + ", idUsuario=" + idUsuario + ", clientePersona=" + clientePersona + ", clienteEmpresa=" + clienteEmpresa + ", fechaVenta=" + fechaVenta + ", importeTotal=" + importeTotal + ", gananciaTotal=" + gananciaTotal + '}';
    }
    
}
