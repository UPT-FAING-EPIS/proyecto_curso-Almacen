/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;
import java.util.List;
import Modelo.BoletaVenta;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ERICK MAURICIO MAMANI LIMA
 */
public interface crudBoletaVenta {
    public List listar();
    public BoletaVenta list(int nro, String serie);
    public boolean add(BoletaVenta bol);
    public boolean edit(BoletaVenta bol);
    public boolean eliminar(int nro, String serie);
}
