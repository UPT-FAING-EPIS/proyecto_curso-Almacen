/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.PedidoVenta;
import Modelo.Repuesto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ERICK MAURICIO MAMANI LIMA
 */
public interface crudRepuesto {
    public List listar();
    public Repuesto list(int id);
    public boolean add(Repuesto rep);
    public boolean edit(Repuesto rep);
    public boolean eliminar(int id); 

    public ResultSet Listarconsulta()throws SQLException;
    public ResultSet Ganancias()throws SQLException;
    public ResultSet total()throws SQLException;
    public ResultSet totalClientesl()throws SQLException;
    public ResultSet totalVentas()throws SQLException;
    public ResultSet totaVentasHoyl()throws SQLException;
    public ResultSet RepuestosVen()throws SQLException;
    public ResultSet totalDia()throws SQLException;
    public ResultSet totalMes()throws SQLException;
    public ResultSet totalAnio()throws SQLException;
}
