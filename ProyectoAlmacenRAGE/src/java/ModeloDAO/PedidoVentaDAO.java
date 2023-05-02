/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;
import Interfaces.crudPedidoVenta;
import Modelo.PedidoVenta;
import java.util.*;
import java.sql.*;
import Config.*;
import java.util.ArrayList;
/**
 *
 * @author Helbert Condori Loayza
 */
public interface PedidoVentaDAO implements crudPedidoVenta{
    
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
   
    @Override
    public List listar() {
        ArrayList<PedidoVenta> list=new ArrayList<>();
        String sql="select * from tbpedidoventa";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                PedidoVenta ped=new PedidoVenta();
                ped.setIdpedido(Integer.parseInt(rs.getString("idpedidoventa")));
                ped.setIdusuario(Integer.parseInt(rs.getString("fkidusuario")));
                ped.setFecha(rs.getString("fecha"));
                ped.setEstado(rs.getString("estado"));
                list.add(ped);
                
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return list;
    }

    
    @Override
    public PedidoVenta list(int id) {
        String sql="select * from tbpedidoventa where idpedidoventa="+id;
        PedidoVenta ped=new PedidoVenta();
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                ped.setIdpedido(Integer.parseInt(rs.getString("idpedidoventa")));
                ped.setIdusuario(Integer.parseInt(rs.getString("fkidusuario")));
                ped.setFecha(rs.getString("fecha"));
                ped.setEstado(rs.getString("estado"));
                
            }
           
        }catch(SQLException e){
            System.out.println("error"+e.toString());
            return null;
        }
        
        return ped;
    }

    @Override
    public boolean add(PedidoVenta ped) {
        String sql="insert into tbpedidoventa values("+ped.getIdpedido()+","+ped.getIdusuario()+",'"+ped.getFecha()+"','"+ped.getEstado()+"')";
        
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
    public boolean edit(PedidoVenta ped) {
        String sql="update tbpedidoventa set fkidusuario="+ped.getIdusuario()+",fecha='"+ped.getFecha()+"',estado='"+ped.getEstado()+"' where idpedidoventa="+ped.getIdpedido();
        
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
    public boolean eliminar(int id){
        String sql="delete from tbpedidoventa where idpedidoventa="+id;
        
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
