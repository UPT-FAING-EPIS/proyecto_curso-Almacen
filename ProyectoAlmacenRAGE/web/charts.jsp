
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Controlador"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="Config.*"%>
<%@page import="ModeloDAO.RepuestoDAO"%>
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
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/header.css"> 
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/charts.css"> <!-- para agregar -->
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
               <li class="sidebar-item"><a class="sidebar-link" href="kankas.jsp"> 
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
              <li class="sidebar-item"><a class="sidebar-link" href="administrar.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span> INFORME </span></a>
              </li>
              <li class="sidebar-item active"><a class="sidebar-link" href="charts.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                      </svg><span>GRAFICAS</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                  <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>VOLVER A LA PAGINA</span></a>
              </li>
      </nav>

<!------------------------------------------------- INICIO CONTENIDO ------------------------------------------------------------->
<%
ResultSet rs;
try{
    RepuestoDAO rep=new  RepuestoDAO();
    rs=rep.Listarconsulta();
%>
  <div class="page-content">
    <div class="container" >
        <div class="row" >
            <h1 class="grfico">Estadisticas</h1>
        <div>
          <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"></script>
          <div class="Grafico1" >
            <script>
                google.charts.load('current', {'packages':['corechart']});
                google.charts.setOnLoadCallback(drawChart);
                function drawChart() {

                  var data = google.visualization.arrayToDataTable([
                   ['Productos', 'Ultimos7 dias'],
                    <% while(rs.next()){
      
                      %>
                    ['<%= rs.getString("nombre") %>', <%= rs.getString("cantidad") %>],
                            
                      <% } %>
                  ]);

                  var options = {
                    "title": "Productos vendidos los ultimos 7 dias",
                    titleTextStyle: {
                        color: "c7c4c4",             
                        fontSize: 25,               
                        bold: true},
                    backgroundColor: '#34373d',
                    'height':400,
                    responsive: true,
                    "legend" : { "textStyle" : { "color" : "c7c4c4"} }
                  };

                  var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                  chart.draw(data, options);
                }
            </script>
          </div>
    <%
    }catch (Exception e){
    System.out.println(e.toString());
    }
    %> 
  </div>
  <div id="piechart"></div>
  </div>


            <%
        try{
            RepuestoDAO rep2=new  RepuestoDAO();
            rs=rep2.Ganancias();
        %>
            <div class="row">
                  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"></script>
                <script type="text/javascript">
                  google.charts.load("current", {packages:['corechart']});
                  google.charts.setOnLoadCallback(drawChart);
                  function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                      ["Fecha", "Dolares", { role: "style"} ],
                       <% while(rs.next()){
        
                        %>
                        ["<%=rs.getString("fechaemision") %>", <%=rs.getString(2) %>, "#6610f2"],
                    <% } %>
                    ]);
        <%
        }
    catch (Exception e){
        System.out.println(e.toString());
        }
        %> 
                    var view = new google.visualization.DataView(data);
                    view.setColumns([0, 1,
                                     { calc: "stringify",
                                       sourceColumn: 1,
                                       type: "string",
                                       role: "annotation" },
                                     2]);
<%
        try{
            RepuestoDAO rep3=new  RepuestoDAO();
            rs=rep3.total();
       while(rs.next()){
%>
                    var options = {
                      title: 'Se tiene ganancias totales de <%=rs.getString("Ganancia") %> Dolares',
                      titleTextStyle: {
                          color: "c7c4c4",             
                          fontSize: 25,               
                          bold: true},
                       isStacked: true,
                        colors: ['#6610f2'],
                      hAxis: {
                        title: 'Fechas',
                        textStyle: {color: '#ffffff',
                        fontSize: 14,
                        bold: false,
                        italic: false},
                        titleTextStyle: {
                        fontSize: 18,
                        color: '#ffffff',
                        bold: true,
                        italic: false}
                        },
                      vAxis: {
                        title: 'Dolares',
                        textStyle: {color: '#ffffff',
                        fontSize: 14,
                        bold: false,
                        italic: false},
                        titleTextStyle: {
                        fontSize: 18,
                        color: '#ffffff',
                        bold: true,
                        italic: false}
                        },
                      text:{color: '#ffffff'},
                      backgroundColor: '#34373d',
                      'height':400,
                      responsive: true,
                      "legend" : { "textStyle" : { "color" : "c7c4c4",fontSize: 16} }
                    };
    <%
            }
        }
    catch (Exception e){
        System.out.println(e.toString());
        }
        %> 
                    var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
                    chart.draw(view, options);
                }
                </script>
                <div id="columnchart_values" style="width: 100%; height: 300px;"></div>

            </div>
          </div>
      </div>
    <!-- Main File-->
    <script src="js/front.js"></script>
</body>
</html>