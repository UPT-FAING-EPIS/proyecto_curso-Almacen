/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.PedidoVenta;
import Config.*;
import Modelo.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Helbert
 */
public interface LoginDAO{
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
    public int loginUsuario(String user, String clave) {
        
        Usuario objuser=new Usuario();
        String sql="select * from tbusuario where email='"+user+"' and clave='"+clave+"'";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            if (rs!=null){
            
            while(rs.next()){
                
                return Integer.parseInt(rs.getString("fkidrol"));
                
            }
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return 0;
    }
     public String verificacacion(String pregunta1, String pregunta2) {
        
        Usuario objuser2=new Usuario();
        String sql="select * from tbusuario where pregunta1='"+pregunta1+"'and pregunta2='"+pregunta2+"'";
        try{
            con=(Connection) cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            if (rs!=null){
            
            while(rs.next()){
                
                return rs.getString("fkidrol");
                
                }
            }
            
        }catch(SQLException e){
            System.out.println("error"+e.toString());
        }
        return null;
    }
    
}
