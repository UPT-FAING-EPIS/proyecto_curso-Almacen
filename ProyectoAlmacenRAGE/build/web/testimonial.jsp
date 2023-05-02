<%@page import="Modelo.Comentarios"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ComentariosDAO"%>
<!-- Inicio por Diego Andre Aranda Reyes-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas // Logo -->
  <link rel="icon" href="images/fevicon.png" type="image/gif" />

  <title>Laditec</title>

  <!-- bootstrap css-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet"> <!-- range slider -->

  <!-- font awesome style -->
  <script src="https://use.fontawesome.com/8fe783cf35.js" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"></script>

  <!-- Custom styles for this template -->
  <link href="css/testimonios.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

  <div class="hero_area">
    <%@ include file="header/header.jsp"%>
  </div>
    
    
        <div class="page-content form-page">
            <div class="container-fluid py-2">

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 py-3 px-0">
                        <li class="breadcrumb-item active" aria-current="page">Comentarios</li>
                    </ol>
                </nav>
            </div>

            <section class="tables py-0">
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="card mb-0">
                            <div class="card-header">
                                <h2 class="h2 mb-0 text-center">Comentarios</h2>
                            </div>
                            <div class="card-body pt-0">
                                <div class="table-responsive">
                                    <div class="nuevo">
                                        <a href="Controlador?accion=AgregarComentarios"> <i class="fa fa-plus-circle"></i> Agregar Comentarios</a><br><br>
                                    </div>
                                    <table class="table mb-0 table-striped table-hover">
                                        <caption>Testimonial</caption>
                                        <thead>
                                            <tr>

                                                
                                                <th>USUARIO</th>
                                                <th>DESCRIPCION</th>
                                                 <th>CALIFICACION</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                                                                           
                                            <%
                                                ComentariosDAO cdao = new ComentariosDAO();
                                                List<Comentarios> list = cdao.listar();
                                                Iterator<Comentarios> iter = list.iterator();
                                                        
                                                Comentarios com = null;
                                                while (iter.hasNext()) {
                                                    com = iter.next();
                                            %>

                                            <tr>
                  
                                                <td> <%=com.getNombre()%>   </td>
                                                <td> <%=com.getDescripcion()%>   </td>
                                                <td> <%=com.getCalificacion()%>   </td>
                                              


                                                <td>

                 
                                                </td>

                                            </tr>
                                            <%}%>

                                        </tbody>


                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Page Footer-->
            <footer class="position-absolute bottom-0 bg-dash-dark-2 text-white text-center py-3 w-100 text-xs" id="footer">
                <div class="container-fluid text-center">
                    <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                    <p class="mb-0 text-dash-gray">2021 &copy; Your company. Design by <a href="https://bootstrapious.com">Bootstrapious</a>.</p>
                </div>
            </footer>
        </div>



        <!-- Main File-->
        <script src="js/front.js"></script>

  <!-- info section -->
  <%@ include file="footer/footer.jsp"%>
  <!-- jQery -->
  <script src="https://cdnjs.cloudFlare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"></script>
  <!-- bootstrap js -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>

</body>
</html>
<!-- Finalizado por Diego Andre Aranda Reyes-->