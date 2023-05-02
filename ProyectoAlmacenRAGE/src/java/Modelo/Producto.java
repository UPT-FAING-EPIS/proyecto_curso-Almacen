/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Usuario
 */
public class Producto {
    int idRepuesto;
    String nombreRepuesto;
    String imagenRepuesto;
    double precioUnitarioRepuesto;

    public Producto(int aInt, String string, String string0, int aInt0, double aDouble, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getIdRepuesto() {
        return idRepuesto;
    }

    public void setIdRepuesto(int idRepuesto) {
        this.idRepuesto = idRepuesto;
    }

    public String getNombreRepuesto() {
        return nombreRepuesto;
    }

    public void setNombreRepuesto(String nombre) {
        this.nombreRepuesto = nombre;
    }

    public String getImagenRepuesto() {
        return imagenRepuesto;
    }

    public void setImagenRepuesto(String imagen) {
        this.imagenRepuesto = imagen;
    }

    public double getPrecioUnitarioRepuesto() {
        return precioUnitarioRepuesto;
    }

    public void setPrecioUnitarioRepuesto(double precioUnitario) {
        this.precioUnitarioRepuesto = precioUnitario;
    }

    public Producto(int idRepuesto, String nombre, String imagen, double precioUnitario) {
        this.idRepuesto = idRepuesto;
        this.nombreRepuesto = nombre;
        this.imagenRepuesto = imagen;
        this.precioUnitarioRepuesto = precioUnitario;
    }

    public Producto() {
    }
    
    
}
