
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Controlador"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="Config.*"%>
<%@page import ="ModeloDAO.RepuestoDAO"%>
<!DOCTYPE html>
<html lang="en">
  <head>  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LADITECSDS</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/header.css" id="theme-stylesheet"> 
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/home.css"> <!-- para agregar -->
     <!-- Font Awesome -->
     <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
  </head>
  <body>
    <%@ include file="header/header2.jsp"%>
          <nav id="sidebar">
        <div class="sidebar-header d-flex align-items-center p-4">
          <div class="ms-3 title">
            <p class="text-sm text-gray-700 mb-0 lh-1">ADMINISTRADOR</p>
          </div>
        </div><span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2">Main</span>
        <ul class="list-unstyled">
               <li class="sidebar-item "><a class="sidebar-link" href="kankas.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span>HOME</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="Controlador?accion=listarUsuarios"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>GESTIONAR USUARIOS</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="Controlador?accion=listarUsuarios"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>GESTIONAR PROVEEDORES</span></a>
              </li>
              <li class="sidebar-item active"><a class="sidebar-link" href="administrar.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span> INFORME </span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="charts.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                      </svg><span>GRAFICAS</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                  <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>VOLVER A LA PAGINA</span></a>
              </li>
      </nav>
<!------------------------------------------------- INICIO CONTENIDO ------------------------------------------------------------->

<div class="page-content">
 <%
ResultSet rs;
try{
    RepuestoDAO rep=new  RepuestoDAO();
    rs=rep.totalClientesl();
%>
    <section>
        <div class="container-fluid">
          <div class="row gy-4">
            <div class="col-md-3 col-sm-6">
              <div class="card mb-0">
                <div class="card-body">
                  <div class="d-flex align-items-end justify-content-between mb-2">
                    <div class="me-2">
                          <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                            <use xlink:href="#user-1"> </use>
                          </svg>
                      <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Total de CLientes</p>
                    </div>
                    <% while(rs.next()){%>        
                    <p class="text-xxl lh-1 mb-0 text-dash-color-1"><%= rs.getInt(1) %></p>
                    <% } %>
                  </div>
                  <div class="progress" style="height: 3px">
                    <div class="progress-bar bg-dash-color-1" role="progressbar" style="width: 10%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>
    <%
    }catch (Exception e){
    System.out.println(e.toString());
    }
    %> 
            <div class="col-md-3 col-sm-6">
              <div class="card mb-0">
                <div class="card-body">
                  <div class="d-flex align-items-end justify-content-between mb-2">
                    <div class="me-2">
                          <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                            <use xlink:href="#stack-1"> </use>
                          </svg>
 <%
try{
    RepuestoDAO rep2=new  RepuestoDAO();
    rs=rep2.totalVentas();
%>
                      <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Total de Ventas<br><br></p>
                    </div>
                 <% while(rs.next()){%>        
                    <p class="text-xxl lh-1 mb-0 text-dash-color-2"><%= rs.getInt(1)%></p>
                    <% 
    } 
    }catch (Exception e){
    System.out.println(e.toString());
    }
    %>   
                  </div>
                  <div class="progress" style="height: 3px">
                    <div class="progress-bar bg-dash-color-2" role="progressbar" style="width: 20%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6">
              <div class="card mb-0">
                <div class="card-body">
                  <div class="d-flex align-items-end justify-content-between mb-2">
                    <div class="me-2">
                          <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                            <use xlink:href="#survey-1"> </use>
                          </svg>
                      <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Ventas de hoy <br><br></p>
                    </div>
 <%
try{
    RepuestoDAO rep2=new  RepuestoDAO();
    rs=rep2.totaVentasHoyl();
while(rs.next()){%> 
                    <p class="text-xxl lh-1 mb-0 text-dash-color-3"><%= rs.getInt(1)%></p>
    <%
    }
    }
catch (Exception e){
    System.out.println(e.toString());
    }
    %>   
                  </div>
                  <div class="progress" style="height: 3px">
                    <div class="progress-bar bg-dash-color-3" role="progressbar" style="width: 40%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6">
              <div class="card mb-0">
                <div class="card-body">
                  <div class="d-flex align-items-end justify-content-between mb-2">
                    <div class="me-2">
                          <svg class="svg-icon svg-icon-sm svg-icon-heavy text-gray-600 mb-2">
                            <use xlink:href="#paper-stack-1"> </use>
                          </svg>
                      <p class="text-sm text-uppercase text-gray-600 lh-1 mb-0">Repuestos Vendidos</p>
                    </div>
 <%
try{
    RepuestoDAO rep2=new  RepuestoDAO();
    rs=rep2.RepuestosVen();
while(rs.next()){%> 
                    <p class="text-xxl lh-1 mb-0 text-dash-color-4"><%= rs.getInt(1)%></p>
    <%
    }
    }
catch (Exception e){
    System.out.println(e.toString());
    }
    %>   
                  </div>
                  <div class="progress" style="height: 3px">
                    <div class="progress-bar bg-dash-color-4" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
          <!-- Page Header-->
      <br>
      <section class="pt-0">
          <div class="container-fluid">
            <div class="row gy-4">
              <div class="col-lg-4">
                <div class="card">
                  <div class="card-body">
 <%
try{
    RepuestoDAO rep2=new  RepuestoDAO();
    rs=rep2.totalDia();
while(rs.next()){%>                      
                    <h3 class="h4 mb-0" style="text-align:center;">Ventas del dia</h3>
                    <p class="text-sm fw-light mb-5">Hoy <%= rs.getString("hoy")%> se vendio</p>
                    <div class="position-relative text-center">
                      <canvas id="pieChartHome1"></canvas>
                      <div class="position-absolute top-50 start-50 translate-middle"><strong class="text-lg d-block">$.<%= rs.getInt("vhoy")%></strong><span class="d-block">Dolares</span></div>
    <%
    }
    }
catch (Exception e){
    System.out.println(e.toString());
    }
    %>       
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card">
                  <div class="card-body">
                    <h3 class="h4 mb-0"  style="text-align:center;">Ventas del mes</h3>
 <%
try{
    RepuestoDAO rep2=new  RepuestoDAO();
    rs=rep2.totalMes();
while(rs.next()){%>   
                    <p class="text-sm fw-light mb-5">En el mes de <%= rs.getString("mes")%> se vendio</p>
                    <div class="position-relative text-center">
                      <canvas id="pieChartHome2"></canvas>
                      <div class="position-absolute top-50 start-50 translate-middle"><strong class="text-lg d-block">$.<%= rs.getInt("vmes")%></strong><span class="d-block">Dolares</span></div>
    <%
    }
    }
catch (Exception e){
    System.out.println(e.toString());
    }
    %>   
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card">
                  <div class="card-body">
                    <h3 class="h4 mb-0"  style="text-align:center;">Ventas del anio</h3>
 <%
try{
    RepuestoDAO rep2=new  RepuestoDAO();
    rs=rep2.totalAnio();
while(rs.next()){%>   
                    <p class="text-sm fw-light mb-5">En este anio <%= rs.getString("anio")%> se vendio</p>
                    <div class="position-relative text-center">
                      <canvas id="pieChartHome3"></canvas>
                      <div class="position-absolute top-50 start-50 translate-middle"><strong class="text-lg d-block">$.<%= rs.getString("vanio")%></strong><span class="d-block">Dolares</span></div>
    <%
    }
    }
catch (Exception e){
    System.out.println(e.toString());
    }
    %>    
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section> 
    </div>
    
    <!-- Main File--> 
    <script src="js/front.js"></script>
    <script src="js/custom.js"></script>
    <script src="vendor/chart.js/Chart.min.js"></script>
</body>
</html>