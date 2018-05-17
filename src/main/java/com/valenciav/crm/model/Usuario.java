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
public class Usuario {
    private String idUsiario;
    private String password;
    private String nombre;
    private String aPaterno;
    private String aMaterno;
    private Departamento departamento;
    
//    public Usuario(String idUsiario, String password){
//        this.idUsiario = idUsiario;
//        this.password = password;
//    }

    public String getIdUsiario() {
        return idUsiario;
    }

    public void setIdUsiario(String idUsiario) {
        this.idUsiario = idUsiario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getaPaterno() {
        return aPaterno;
    }

    public void setaPaterno(String aPaterno) {
        this.aPaterno = aPaterno;
    }

    public String getaMaterno() {
        return aMaterno;
    }

    public void setaMaterno(String aMaterno) {
        this.aMaterno = aMaterno;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    @Override
    public String toString() {
        return "Usuario{" + "idUsiario=" + idUsiario + ", password=" + password + ", nombre=" + nombre + ", aPaterno=" + aPaterno + ", aMaterno=" + aMaterno + ", departamento=" + departamento.getNombreDepartamento() + '}';
    }
    
    
}
