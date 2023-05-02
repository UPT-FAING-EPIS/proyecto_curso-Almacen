<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="Controlador.Controlador"%>

<!DOCTYPE html>

<html lang="en">
  <head>  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/header.css"> 
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/cruds.css"> <!-- para agregar -->
     <!-- Font Awesome -->
     <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
  </head>
  <body>
    <%@ include file="header/header2.jsp"%>
          <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center p-4">
          <div class="ms-3 title">
            <p class="text-sm text-gray-700 mb-0 lh-1">ADMINISTRADOR</p>
          </div>
        </div><span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2">Main</span>
        <ul class="list-unstyled">
               <li class="sidebar-item active"><a class="sidebar-link" href="kankas.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span>HOME</span></a>
              </li>
              <li class="sidebar-item active"><a class="sidebar-link" href="administrar.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span> INFORME </span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="cruds.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>GESTION</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="charts.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                      </svg><span>Graficas </span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                  <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>VOLVER A LA PAGINA</span></a>
              </li>
      </nav>

<!------------------------------------------------- INICIO CONTENIDO ------------------------------------------------------------->
      <div class="page-content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 text-center">
              <h2 class="section-title">GESTIONAR USUARIOS</h2>
            </div>
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                      
                      <a class="cartext" href="Controlador?accion=listarPedido">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> <i class="iconocrud fa fa-bus icon-xl icon-cyan mb-3"></i>
                              <h4 class="mt-4 mb-3">PROVEEDORES</h4>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a  class="cartext" href="Controlador?accion=listarUsuarios">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> <i class="iconocrud fa fa-users icon-lg icon-yellow mb-3"></i>
                              <h4 class="mt-4 mb-3">USUARIOS</h4>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a class="cartext" href="Controlador?accion=listarDetalleBolVenta">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> <i class=" iconocrud fa fa-handshake-o icon-lg icon-purple mb-3"></i>
                              <h4 class="mt-4 mb-3">INFORMES</h4>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
              <!--
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a class="cartext" href="Controlador?accion=ListarRepuestos">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> <i class="iconocrud fa fa-bus icon-xl icon-cyan mb-3"></i>
                              <h4 class="mt-4 mb-3">Repuesto</h4>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a class="cartext" href="Controlador?accion=listarBoletas">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> <i class="iconocrud fa fa-file-text-o icon-xl icon-cyan mb-3"></i>
                              <h4 class="mt-4 mb-3">Boletas</h4>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>  
              comment -->
            </div>
        </div>
        </div>
    <!-- Main File-->
    <script src="js/front.js"></script>
</body>
</html>