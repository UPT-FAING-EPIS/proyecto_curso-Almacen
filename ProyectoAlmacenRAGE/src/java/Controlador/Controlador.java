/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.*;
import ModeloDAO.*;
import enviocorreo.EnvioCorreos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;


/**
 *
 * @author Pc
 */

public class Controlador extends HttpServlet {
public String numero;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession(true);
        EnvioCorreos mapa=new EnvioCorreos();
        DetalleBolVenta dbv = new DetalleBolVenta();
        DetalleBolVentaDAO vdao = new DetalleBolVentaDAO();
        PedidoVenta ped = new PedidoVenta();
        PedidoVentaDAO dao = new PedidoVentaDAO();
        Repuesto rep = new Repuesto();
        RepuestoDAO daorep = new RepuestoDAO();
        Usuarios usu= new Usuarios();
        UsuariosDAO udao= new UsuariosDAO();
        Comentarios com =new Comentarios();
        ComentariosDAO cdao=new ComentariosDAO();
        String acceso = "";
        String action = request.getParameter("accion");
        
        if (action.equalsIgnoreCase("listarPedido")) {
            acceso = "VistaPedido/index.jsp";
        } else if (action.equalsIgnoreCase("AgregarPedido")) {
            acceso = "VistaPedido/agregarPedido.jsp";
            if (request.getParameter("AgregarPedidoDB") != null) {
                try {
                    ped.setIdpedido(Integer.parseInt(request.getParameter("txtPedido")));
                    ped.setIdusuario(Integer.parseInt(request.getParameter("txtUsuario")));
                    ped.setFecha(request.getParameter("txtFecha"));
                    ped.setEstado(request.getParameter("txtEstado"));
                    if (dao.add(ped) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaPedido/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }
            }

        } else if (action.equalsIgnoreCase("EditarPedido")) {
            acceso = "VistaPedido/editarPedido.jsp";
            request.setAttribute("idped", request.getParameter("txtid"));
            if (request.getParameter("EditarPedidoDB") != null) {
                try {
                    ped.setIdpedido(Integer.parseInt(request.getParameter("txtPedido")));
                    ped.setIdusuario(Integer.parseInt(request.getParameter("txtUsuario")));
                    ped.setFecha(request.getParameter("txtFecha"));
                    ped.setEstado(request.getParameter("txtEstado"));

                    if (dao.edit(ped) == true) {
                        System.out.println("se ha Editado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaPedido/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
        } else if (action.equalsIgnoreCase("EliminarPedido")) {
            acceso = "VistaPedido/eliminarPedido.jsp";
            request.setAttribute("idped", request.getParameter("txtid"));

            if (request.getParameter("EliminarPedidoDB") != null) {
                try {

                    if (dao.eliminar(Integer.parseInt(request.getParameter("txtid"))) == true) {
                        System.out.println("se ha Eliminado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaPedido/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
        }else if (action.equalsIgnoreCase("LogearUsuario")){
            acceso = "Login.jsp";

            if (request.getParameter("LogearUsuarioForm") != null) {
                try {
                    LoginDAO logindao=new LoginDAO();
                    String user=request.getParameter("txtEmail");
                    String clave=request.getParameter("txtPassword");
                    int rol=logindao.loginUsuario(user, clave );
                   
                        if(rol==2){
                            mapa.createEmail();
                            mapa.sendEmail();
                            acceso = "verificacion.jsp";
                            sesion.setAttribute("fkidrolusuario", rol);
                        
                        }
                        else if(rol==3){
                         acceso = "Cocinero.jsp";
                         sesion.setAttribute("fkidrolusuario", rol);
                        }
                       
                        else{
                         acceso = "Login.jsp";
                        }
                        

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
        
            
        }else if (action.equalsIgnoreCase("LogoutUsuario")){
        acceso="index.jsp";
        sesion.invalidate();
        
        
        
        }else if (action.equalsIgnoreCase("loguear")){
            acceso = "Login.jsp";
            
            
             if (request.getParameter("verificacion2") != null) {
                try {
            
                    int numero2 =Integer.parseInt(mapa.numCadena);
                    numero="hola";
                    String numero3=mapa.numCadena;
                    String veri =request.getParameter("verificacion");                    
                    if(veri != null && veri.equal(numero3)){
                           acceso ="kankas.jsp"; 
                      }
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

                 }
        }
      
        
        
        
        /*------------------DETALLE BOLETA INICIO Diego Andre Aranda Reyes------------------------------------------------*/ 
        //DetalleBolVenta dbv = new DetalleBolVenta();
        //DetalleBolVentaDAO vdao=new DetalleBolVentaDAO();
        else if (action.equalsIgnoreCase("listarDetalleBolVenta")) {
            acceso = "VistaDetalleBolVenta/index.jsp";
        } else if (action.equalsIgnoreCase("AgregarDetalle")) {
            acceso = "VistaDetalleBolVenta/agregarDetalleBolVenta.jsp";
            if (request.getParameter("AgregarDetalleDB") != null) {
                try {
                    dbv.setIddetalleboleta(Integer.parseInt(request.getParameter("txtIddetalleboleta")));
                    dbv.setFkserieboleta(request.getParameter("txtfkserieboleta"));
                    dbv.setFknroboleta(Integer.parseInt(request.getParameter("txtfknroboleta")));
                    dbv.setFkidrepuesto(Integer.parseInt(request.getParameter("txtfkidrepuesto")));
                    dbv.setCantidad(Integer.parseInt(request.getParameter("txtcantidad")));
                    dbv.setImporte(Double.parseDouble(request.getParameter("txtimporte")));
                    if (vdao.add(dbv) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaDetalleBolVenta/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
        
        } else if (action.equalsIgnoreCase("EditarDetalleBolVenta")) {
            acceso = "VistaDetalleBolVenta/editarDetalleBolVenta.jsp";
            request.setAttribute("iddbv", request.getParameter("txtiddetalle"));
            if (request.getParameter("EditarDetalleDB") != null) {
                try {
                    dbv.setIddetalleboleta(Integer.parseInt(request.getParameter("txtIddetalleboleta")));
                    dbv.setFkserieboleta(request.getParameter("txtfkserieboleta"));
                    dbv.setFknroboleta(Integer.parseInt(request.getParameter("txtfknroboleta")));
                    dbv.setFkidrepuesto(Integer.parseInt(request.getParameter("txtfkidrepuesto")));
                    dbv.setCantidad(Integer.parseInt(request.getParameter("txtcantidad")));
                    dbv.setImporte(Double.parseDouble(request.getParameter("txtimporte")));

                    if (vdao.edit(dbv) == true) {
                        System.out.println("se ha Editado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaDetalleBolVenta/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
            /*else if (action.equalsIgnoreCase("ConsultarCant")) */
        }else if (conditional1="ConsultarCant") {
            acceso = "charts.jsp";
        }   
        /*------------------DETALLE BOLETA FIN Diego Andre Aranda Reyes------------------------------------------------*/
       
        /*------------------Comentarios INICIO Diego Andre Aranda Reyes------------------------------------------------*/
         else if (action.equalsIgnoreCase("listarComentarios")) {
            acceso = "testimonial.jsp";
        } else if (action.equalsIgnoreCase("AgregarComentarios")) {
            acceso = "agregarComentarios.jsp";
            if (request.getParameter("AgregarComentariosDB") != null) {
                try {
                        
                        com.setNombre(request.getParameter("txtnombre"));
                        com.setDescripcion(request.getParameter("txtdescripcion"));
                        com.setCalificacion(Integer.parseInt(request.getParameter("txtcalificacion")));
  
                    if (cdao.add(com) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "testimonial.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
            /*else if (action.equalsIgnoreCase("ConsultarCant")) */
        }else if (conditional2="ConsultarCant") {
            acceso = "charts.jsp";
        }
        
        /*------------------Comentarios FIN Diego Andre Aranda Reyes------------------------------------------------*/
        

        /*------------------Usuarios INICIO Diego Andre Aranda Reyes------------------------------------------------*/
         else if (action.equalsIgnoreCase("listarUsuarios")) {
            acceso = "VistaUsuarios/index.jsp";
        } else if (action.equalsIgnoreCase("AgregarUsuarios")) {
            acceso = "VistaUsuarios/agregarUsuarios.jsp";
            if (request.getParameter("AgregarUsuariosDB") != null) {
                try {
                        usu.setIdusuario(Integer.parseInt(request.getParameter("txtidusuario")));
                        usu.setNomusuario(request.getParameter("txtnomusuario"));
                        usu.setEmail(request.getParameter("txtemail"));
                        usu.setClave(request.getParameter("txtclave"));
                        usu.setFkidrol(Integer.parseInt(request.getParameter("txtfkidrol")));
                        usu.setEstado(request.getParameter("txtestado"));
                    if (udao.add(usu) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaUsuarios/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
        } else if (action.equalsIgnoreCase("EditarUsuarios")) {
            acceso = "VistaUsuarios/editarUsuarios.jsp";
            request.setAttribute("user", request.getParameter("txtuser"));
            if (request.getParameter("EditarUsuariosDB") != null) {
                try {
                        usu.setIdusuario(Integer.parseInt(request.getParameter("txtidusuario")));
                        usu.setNomusuario(request.getParameter("txtnomusuario"));
                        usu.setEmail(request.getParameter("txtemail"));
                        usu.setClave(request.getParameter("txtclave"));
                        usu.setFkidrol(Integer.parseInt(request.getParameter("txtfkidrol")));
                        usu.setEstado(request.getParameter("txtestado"));

                    if (udao.edit(usu) == true) {
                        System.out.println("se ha Editado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaUsuarios/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
            /*else if (action.equalsIgnoreCase("ConsultarCant")) */
        }else if (conditional3="ConsultarCant") {
            acceso = "charts.jsp";
        }
        
        /*------------------Usuarios FIN Diego Andre Aranda Reyes------------------------------------------------*/
        
        /*Sebastian Cotrina */
         
        else if (action.equalsIgnoreCase("MandarACarrito")) {
            
            int idrepuesto = Integer.parseInt(request.getParameter("idRepuesto"));
            int cantidad = 1;
            
            if (sesion.getAttribute("fkidrolusuario")==null){
                acceso="Login.jsp";
            }
            else{
            List<CarritoCompra> articulos = sesion.getAttribute("carrito") == null ? new ArrayList<>() : (List) sesion.getAttribute("carrito");
            boolean flag = false;        
            if(!articulos.isEmpty()){
                for(CarritoCompra a : articulos){
                    if(idrepuesto == a.getIdProducto()){
                        a.setCantidad(a.getCantidad() + cantidad);
                        
                        flag = true;
                        break;
                    }
                }
            }
            
            if(!flag){
                articulos.add(new CarritoCompra(idrepuesto, cantidad));
            }
            System.out.println((articulos.get(0).getIdProducto())+" "+(articulos.get(0).getCantidad()));
            sesion.setAttribute("carrito", articulos);  
            acceso="product.jsp";
           
            }

        }else if(action.equalsIgnoreCase("borrarElementoCarrito")){
            
            int idrepuesto=Integer.parseInt(request.getParameter("idRepuesto"));
            
            List<CarritoCompra> articulos = sesion.getAttribute("carrito") == null ? new ArrayList<>() : (List) sesion.getAttribute("carrito");
            
            for(int i=0;i<articulos.size();i++){
                if(idrepuesto==articulos.get(i).getIdProducto()){
                    articulos.remove(i);
                }
            }
            
            acceso="carrito.jsp";
        }
        
        /* Fin por Sebastian Cotrina */
    
        /*----------            ERICK MAURICIO MAMANI LIMA                  -----------------------*/
        else if (action.equalsIgnoreCase("listarBoletas")){
            acceso="VistaBoletaVenta/index.jsp";
        }
         else if (action.equalsIgnoreCase("listarRepuestos")) {
            acceso = "VistaRepuesto/index.jsp";
        } 
        else if (action.equalsIgnoreCase("AgregarRepuesto")) {
            acceso = "VistaRepuesto/agregarRepuesto.jsp";
            if (request.getParameter("AgregarRepuestoDB") != null) {
                try {
                    rep.setIdrepuesto(Integer.parseInt(request.getParameter("txtRepuesto")));
                    rep.setFkidalmacen(Integer.parseInt(request.getParameter("txtFkidalmacen")));
                    rep.setFkidestado(Integer.parseInt(request.getParameter("txtFkidestado")));
                    rep.setNombre(request.getParameter("txtNombre"));
                    rep.setFkidcategoria(Integer.parseInt(request.getParameter("txtFkidcategoria")));
                    rep.setImagen(request.getParameter("txtImagen"));
                    rep.setPreciounitario(Double.parseDouble(request.getParameter("txtPrecioUnitario")));

                    if (daorep.add(rep) == true) {
                        System.out.println("se ha Agregado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }
                    acceso = "VistaRepuesto/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }
            }
        }
        else if (action.equalsIgnoreCase("EditarRepuesto")) {
            acceso = "VistaRepuesto/editarRepuesto.jsp";
            
            request.setAttribute("id", request.getParameter("txtid"));
            if (request.getParameter("EditarRepuestoDB") != null) {
                try {
                    rep.setIdrepuesto(Integer.parseInt(request.getParameter("txtRepuesto")));
                    rep.setFkidalmacen(Integer.parseInt(request.getParameter("txtFkidalmacen")));
                    rep.setFkidestado(Integer.parseInt(request.getParameter("txtFkidestado")));
                    rep.setNombre(request.getParameter("txtNombre"));
                    rep.setFkidcategoria(Integer.parseInt(request.getParameter("txtFkidcategoria")));
                    rep.setImagen(request.getParameter("txtImagen"));
                    rep.setPreciounitario(Double.parseDouble(request.getParameter("txtPrecioUnitario")));

                    if (daorep.edit(rep) == true) {
                        System.out.println("se ha Editado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaRepuesto/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
        }
        else if (action.equalsIgnoreCase("EliminarRepuesto")) {
            acceso = "VistaRepuesto/eliminarRepuesto.jsp";
            request.setAttribute("id", request.getParameter("txtid"));

            
            if (request.getParameter("EliminarRepuestoDB") != null) {
                try {

                    if (daorep.eliminar(Integer.parseInt(request.getParameter("txtid"))) == true) {
                        System.out.println("se ha Eliminado correctamente");
                    } else {
                        System.out.println("error de base de datos");
                    }

                    acceso = "VistaRepuesto/index.jsp";

                } catch (Exception e) {
                    System.out.println(e);
                }
            }
        } 
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request,response);
        
    }
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
