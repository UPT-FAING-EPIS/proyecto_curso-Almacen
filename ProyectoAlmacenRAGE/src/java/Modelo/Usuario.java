/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Usuario
 */
public class Usuario {
    private int idusuario;
    private String nomusuario;
    private String email;
    private String clave;
    private int fkidrol;

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getNomusuario() {
        return nomusuario;
    }

    public void setNomusuario(String nomusuario) {
        this.nomusuario = nomusuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getFkidrol() {
        return fkidrol;
    }

    public void setFkidrol(int fkidrol) {
        this.fkidrol = fkidrol;
    }

    public Usuario(int idusuario, String nomusuario, String email, String clave, int fkidrol) {
        this.idusuario = idusuario;
        this.nomusuario = nomusuario;
        this.email = email;
        this.clave = clave;
        this.fkidrol = fkidrol;
    }

    public Usuario() {
    }
    
    
}
