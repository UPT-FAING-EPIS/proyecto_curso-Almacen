/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import Interfaces.crudBoletaVenta;
import Modelo.BoletaVenta;
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
public interface BoletaVentaDAO implements crudBoletaVenta{
    
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
    @Override
    public List listar() {
        ArrayList<BoletaVenta> list = new ArrayList<>();
        String sql="select * from tbboletaventa";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                BoletaVenta bolVen=new BoletaVenta();
                bolVen.setNroboleta(Integer.parseInt(rs.getString("nroboleta")));
                bolVen.setSerieboleta(rs.getString("serieboleta"));
                bolVen.setFkidpedido(Integer.parseInt(rs.getString("fkidpedido")));
                bolVen.setFechaemision(rs.getString("fechaemision"));
                bolVen.setTotal(Double.parseDouble(rs.getString("total")));
                bolVen.setImpuesto(Double.parseDouble(rs.getString("impuesto")));
                list.add(bolVen);
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return list;
    }

    @Override
    public BoletaVenta list(int nro, String serie) {
        String sql="select * from tbboletaventa where nroboleta="+nro+" and serieboleta="+serie;
        BoletaVenta bolVen = new BoletaVenta();        
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                bolVen.setNroboleta(Integer.parseInt(rs.getString("nroboleta")));
                bolVen.setSerieboleta(rs.getString("serieboleta"));
                bolVen.setFkidpedido(Integer.parseInt(rs.getString("fkidpedido")));
                bolVen.setFechaemision(rs.getString("fechaemision"));
                bolVen.setTotal(Double.parseDouble(rs.getString("total")));
                bolVen.setImpuesto(Double.parseDouble(rs.getString("impuesto")));
            }
           
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return null;
        }
        return bolVen;
    }

    @Override
    public boolean add(BoletaVenta bol) {
        String sql="insert into tbboletaventa values("+bol.getSerieboleta()+",'"+bol.getFkidpedido()+",'"+bol.getFechaemision()+",'"+bol.getTotal()+"','"+bol.getImpuesto()+"')";
        
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
    public boolean edit(BoletaVenta bol) {
            String sql="update tbboletaventa set fkidpedido="+bol.getFkidpedido()+",fechaemision='"+bol.getFechaemision()+"',total='"+bol.getTotal()+"',impuesto='"+bol.getImpuesto()+"' where nroboleta="+bol.getNroboleta()+"' and serieboleta="+bol.getSerieboleta();
        
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
    public boolean eliminar(int nro, String serie) {
        String sql="delete from tbboletaventa where nroboleta="+nro+"and serieboleta="+serie;
        
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
    
   
}
