/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import Interfaces.crudComentario;
import Modelo.Comentarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diego Andre Aranda Reyes 
 */
public interface ComentariosDAO implements crudComentario{
    
    conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Statement st;
    
    @Override
    public boolean add(Comentarios com) {
        String sql="insert into tbmensaje values("+com.getIdcomentario()+",'"+com.getNombre()+"','"+com.getDescripcion()+"','"+com.getCalificacion()+"')";
        
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
    




