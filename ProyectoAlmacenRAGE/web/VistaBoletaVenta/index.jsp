
<%---------------------------                Inicio por ERICK                       -----------------------%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.*"%>
<%@page import ="Modelo.BoletaVenta"%>
<%@page import ="ModeloDAO.BoletaVentaDAO"%>
<%@page import="ModeloDAO.DetalleBolVentaDAO"%>
<%@page import="Modelo.DetalleBolVenta"%>
<!DOCTYPE html>
<html lang="en">
    <head>  
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>LADITEC</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!-- Modal boostrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"></script>
        <!-- Google fonts - Muli-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="css/header.css" id="theme-stylesheet"> 
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="css/tablas.css"> <!-- para agregar -->
        <!-- Font Awesome -->
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    </head>
    <body>
   <%@ include file="../header/header2.jsp"%>
        <nav id="sidebar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center p-4"><img class="avatar shadow-0 img-fluid rounded-circle" src="img/avatar-6.jpg" alt="...">
                <div class="ms-3 title">
                    <h1 class="h5 mb-1">Diego </h1>
                    <p class="text-sm text-gray-700 mb-0 lh-1">Programador</p>
                </div>
            </div><span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2">Main</span>
            <ul class="list-unstyled">
                <li class="sidebar-item"><a class="sidebar-link" href="administrar.jsp"> 
                        <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                        </svg><span>Home </span></a>
                </li>
                <li class="sidebar-item active"><a class="sidebar-link" href="cruds.jsp"> 
                        <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                        </svg><span>Tables </span></a>
                </li>
                <li class="sidebar-item"><a class="sidebar-link" href="charts.jsp"> 
                        <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                        </svg><span>Graficas </span></a>
                </li>
                <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                        <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>Web Page</span></a>
                </li>
        </nav>
        <!------------------------------------------------- INICIO CONTENIDO ------------------------------------------------------------->

        <div class="page-content form-page">
            <!-- Page Header-->            
            <!-- Breadcrumb-->
            <div class="container-fluid py-2">

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 py-3 px-0">
                        <li class="breadcrumb-item"><a href="cruds.jsp">Tablas</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Pedidos</li>
                    </ol>
                </nav>
            </div>

            <section class="tables py-0">
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="card mb-0">
                            <div class="card-header">
                                <h2 class="h2 mb-0 text-center">Boleta Venta</h2>
                            </div>
                            <div class="card-body pt-0">
                                <div class="table-responsive">
                                    <div class="nuevo">
                                        <a href="Controlador?accion=listarDetalleBolVenta"> <i class="fa fa-plus-circle"></i> Ver todos los detalles</a><br><br>

                                    </div>
                                    <table class="table mb-0 table-striped table-hover">
                                        <caption>BOLETA DE VENTA</caption>
                                        <thead>
                                            <tr>

                                                <th>NroBoleta</th>
                                                <th>SerieBoleta</th>
                                                <th>FkIdPedido</th>
                                                <th>FechaEmision</th>
                                                <th>Total</th>
                                                <th>Impuesto</th>
                                                <th>Operaciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                                                           
                                            <%
                                                BoletaVentaDAO daobol = new BoletaVentaDAO();
                                                List<BoletaVenta> list = daobol.listar();
                                                Iterator<BoletaVenta> iter = list.iterator();
                                                        
                                                BoletaVenta bol = null;
                                                while (iter.hasNext()) {
                                                    bol = iter.next();
                                            %>

                                            <tr>
                                                <td> <%=bol.getNroboleta()%>   </td>
                                                <td> <%=bol.getSerieboleta()%>   </td>
                                                <td> <%=bol.getFkidpedido()%>   </td>
                                                <td> <%=bol.getFechaemision()%> </td>
                                                <td> <%=bol.getTotal()%></td>
                                                <td> <%=bol.getImpuesto()%></td>
                                                <td>
                                                <form action="Controlador" class="form-horizontal">
                                                <input type="hidden" name="txtNroBol" value="<%=bol.getNroboleta()%>">
                                                <input type="hidden" name="txtSerieBol" value="<%=bol.getSerieboleta()%>">
                                                    <a href="#modalScrollableCenter" role="button" data-bs-toggle="modal"><i class="fa fa-eye icon-lg"></i></a>
                                                        </form>
                                                </td>
                                                
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>
        <div class="m-4">
            <div id="modalScrollableCenter" class="modal fade" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Detalle de la boleta</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                <div class="modal-body">
                <table class="table mb-0 table-striped table-hover">
                    <caption>BOLETA DE VENTA</caption>
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>IdRepuesto</th>
                                                <th>Cantidad</th>
                                                <th>Importe</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                                                           
                                            <%
                                                
                                                
                                                DetalleBolVentaDAO vdao = new DetalleBolVentaDAO();
                                                List<DetalleBolVenta> list2 = vdao.listar();
                                                Iterator<DetalleBolVenta> iter2 = list2.iterator();
                                                        
                                                DetalleBolVenta dbv = null;
                                                while (iter2.hasNext()) {
                                                    dbv = iter2.next();
                                            %>
                                            <tr>
                                                <td> <%=dbv.getIddetalleboleta()%>   </td>
                                                <td> <%=dbv.getFkidrepuesto()%>   </td>
                                                <td> <%=dbv.getImporte()%>   </td>
                                                <td> <%=dbv.getCantidad()%>   </td>
                                            </tr>
                                            <%}%>   
                                </tbody>
                </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Page Footer-->
        </div>
        <!-- Main File-->
        <script src="js/front.js"></script>
    </body>
</html>
<%----------------------------------                        Fin por ERICK                       -------------------%>