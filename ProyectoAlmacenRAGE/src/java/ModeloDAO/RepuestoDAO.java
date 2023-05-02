/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import Interfaces.crudRepuesto;
import Modelo.Repuesto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ERICK MAURICIO MAMANI LIMA
 */
public interface RepuestoDAO implements crudRepuesto{
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
    @Override
    public List listar() {
    
        ArrayList<Repuesto> list=new ArrayList<>();
        String sql="select * from tbrepuesto";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Repuesto rep=new Repuesto();
                rep.setIdrepuesto(Integer.parseInt(rs.getString("idrepuesto")));
                rep.setFkidalmacen(Integer.parseInt(rs.getString("fkidalmacen")));
                rep.setFkidestado(Integer.parseInt(rs.getString("fkidestado")));
                rep.setNombre(rs.getString("nombre"));
                rep.setFkidcategoria(Integer.parseInt(rs.getString("fkidcategoria")));
                rep.setImagen(rs.getString("imagen"));
                rep.setPreciounitario(Double.parseDouble(rs.getString("preciounitario")));
                list.add(rep);
            }
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return list;
    }

    @Override
    public Repuesto list(int id) {

        String sql="select * from tbrepuesto where idrepuesto= "+id;
        Repuesto rep=new Repuesto();
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
               
                rep.setIdrepuesto(Integer.parseInt(rs.getString("idrepuesto")));
                rep.setFkidalmacen(Integer.parseInt(rs.getString("fkidalmacen")));
                rep.setFkidestado(Integer.parseInt(rs.getString("fkidestado")));
                rep.setNombre(rs.getString("nombre"));
                rep.setFkidcategoria(Integer.parseInt(rs.getString("fkidcategoria")));
                rep.setImagen(rs.getString("imagen"));
                rep.setPreciounitario(Double.parseDouble(rs.getString("preciounitario")));
            }
           
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return null;
        }        
        return rep;

    }

    @Override
    public boolean add(Repuesto rep) {

        String sql="insert into tbrepuesto values( " +rep.getIdrepuesto()+ " , " +rep.getFkidalmacen()+ " , "+rep.getFkidestado()+ " ,' "+rep.getNombre()+" ' ,"+rep.getFkidcategoria()+",' "+rep.getImagen()+" ',  "+rep.getPreciounitario()+")";
        
        try{
            con=(Connection) cn.getConnection();
            st=con.createStatement();
            st.executeUpdate(sql);
                   
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return false;
        }
        return true;
        

    }

    @Override
    public boolean edit(Repuesto rep) {

        String sql="update tbrepuesto set fkidalmacen= " +rep.getFkidalmacen()+ " , fkidestado= "+rep.getFkidestado()+",nombre=' "+rep.getNombre()+" ',fkidcategoria= "+rep.getFkidcategoria()+",imagen=' "+rep.getImagen()+" ',preciounitario="+rep.getPreciounitario()+" where idrepuesto="+rep.getIdrepuesto();
        
        try{
            con=(Connection) cn.getConnection();
            st=con.createStatement();
            st.executeUpdate(sql);
                   
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return false;
        }
        return true;

    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from tbrepuesto where idrepuesto="+id;
        
        try{
            con=(Connection) cn.getConnection();
            st=con.createStatement();
            st.executeUpdate(sql);
                   
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return false;
        }
        return true;   
    }
    
    @Override
    public ResultSet Listarconsulta()throws SQLException {

        String sql="SELECT r.nombre,sum(d.cantidad) AS cantidad FROM tbdetalledeboleta AS d JOIN tbrepuesto AS r on d.fkidrepuesto=r.idrepuesto JOIN tbboletaventa AS b ON b.nroboleta=d.fknroboleta AND b.serieboleta=d.fkserieboleta WHERE b.fechaemision BETWEEN DATE_SUB(NOW(),INTERVAL 7 DAY) AND DATE_SUB(NOW(),INTERVAL 0 DAY) GROUP BY r.nombre;";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }

    }

    @Override
    public ResultSet Ganancias() throws SQLException {
        String sql="SELECT DATE_FORMAT(fechaemision,'%M %e') AS fechaemision,round(SUM(total),2) AS venta FROM tbboletaventa GROUP BY 1 DESC;";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }
    }

    @Override
    public ResultSet total() throws SQLException {
        String sql="SELECT round(SUM(total),2) AS Ganancia FROM tbboletaventa;";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }
    }

    @Override
    public ResultSet totalClientesl() throws SQLException {
        String sql="SELECT COUNT(nomusuario) AS tusuarios FROM tbusuario WHERE fkidrol='1';";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }    }

    @Override
    public ResultSet totalVentas() throws SQLException {
        String sql="SELECT COUNT(*) AS tventas FROM tbboletaventa;";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }    }

    @Override
    public ResultSet totaVentasHoyl() throws SQLException {
        String sql="SELECT COUNT(fechaemision) AS ventash FROM tbboletaventa WHERE fechaemision LIKE CURDATE() LIMIT 1;";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }    }

    @Override
    public ResultSet RepuestosVen() throws SQLException {
        String sql="SELECT sum(d.cantidad) AS trep FROM tbdetalledeboleta AS d JOIN tbrepuesto AS r on d.fkidrepuesto=r.idrepuesto JOIN tbboletaventa AS b ON b.nroboleta=d.fknroboleta AND b.serieboleta=d.fkserieboleta;";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }    }

    @Override
    public ResultSet totalDia() throws SQLException {
        String sql="SELECT DATE_FORMAT(CURDATE(),' %e') AS hoy,round(sum(total),2) AS vhoy FROM tbboletaventa WHERE fechaemision LIKE CURDATE() LIMIT 1;";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }    }

    @Override
    public ResultSet totalMes() throws SQLException {
        String sql="SELECT MONTHNAME(CURDATE()) AS mes, round(sum(total),2) AS vmes FROM tbboletaventa WHERE MONTH(fechaemision) = MONTH(CURDATE());";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }    }

    @Override
    public ResultSet totalAnio() throws SQLException {
        String sql="SELECT YEAR(CURDATE()) AS anio, round(sum(total),2) AS vanio FROM tbboletaventa WHERE YEAR(fechaemision) = YEAR(CURDATE());";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            return rs;
        }   
        catch(SQLException e){
            return null;
        }     }
    
}
