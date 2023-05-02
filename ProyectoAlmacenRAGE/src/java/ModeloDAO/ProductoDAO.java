/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;
import Config.*;
import Modelo.*;
import java.sql.*;
import java.util.*;
import Interfaces.*;

/**
 *
 * @author Sebastian Airton Cotrina Caceres
 */
public interface ProductoDAO implements InterfazProducto{
    
    conexion cnx=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
    @Override
    public List listar() {
        ArrayList<Producto> list=new ArrayList<>();
        String sql="select idrepuesto,nombre,imagen,preciounitario from tbrepuesto ";
         try{
            con=(Connection) cnx.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Producto prod=new Producto();
                prod.setIdRepuesto(Integer.parseInt(rs.getString("idrepuesto")));
                prod.setNombreRepuesto(rs.getString("nombre"));
                double valor=Double.parseDouble(rs.getString("preciounitario"));
                prod.setPrecioUnitarioRepuesto(valor);
                prod.setImagenRepuesto(rs.getString("imagen"));
               
                list.add(prod);
            }
            
            }catch(SQLException e){
                System.out.println("error"+e.toString());
            }
            
        
        return list;
    }
    @Override
    public Producto listarPorId(int identificador) {
        Producto prod=new Producto();
        String sql="select idrepuesto,nombre,imagen,preciounitario from tbrepuesto where idrepuesto="+identificador;
         try{
            con=(Connection) cnx.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                
                prod.setIdRepuesto(Integer.parseInt(rs.getString("idrepuesto")));
                prod.setNombreRepuesto(rs.getString("nombre"));
                double valor=Double.parseDouble(rs.getString("preciounitario"));
                prod.setPrecioUnitarioRepuesto(valor);
                prod.setImagenRepuesto(rs.getString("imagen"));
               
                
            }
            
            }catch(SQLException e){
                System.out.println("error"+e.toString());
            }
            
        
        return prod;
    }
  
}
