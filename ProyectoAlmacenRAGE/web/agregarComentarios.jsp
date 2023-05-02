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
    <!-- header section strats -->
    <%@ include file="header/header.jsp"%>
    <!-- end header section -->
  </div>
    
          <div class="page-content form-page">
            <!-- Page Header-->            
            <!-- Breadcrumb-->
            <div class="page-content form-page">
              <!-- Page Header-->            
              <!-- Breadcrumb-->
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
                      <h2 class="h2 mb-0 text-center">Agregar Comentarios</h2>
                    </div>
                      
                    <div class="card-body pt-0">
                      <form action="Controlador" class="form-horizontal">
                        
                        <div class="my-4"></div>
                        
                         <div class="row">
                          <label class="col-sm-3 form-label">NOMBRE</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text" name="txtnombre" required>
                          </div>
                        </div>
          
                        <div class="my-4"></div>
                        
                        <div class="row">
                          <label class="col-sm-3 form-label">DESCRIPCION</label>
                          <div class="col-sm-9">
                            <div class="input-group">
                              <input class="form form-control" type="text" name="txtdescripcion" required>
                            </div>                          
                          </div>
                        </div> 
                        <!--  -->
                        
                        <div class="my-4"></div>
                        
                        <div class="row">
                          <label class="col-sm-3 form-label">CALIFICACION</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="number" min="0" max="5" name="txtcalificacion" required>
                          </div>
                        </div>
          
                        <div class="my-4"></div>
                        <!--  -->
                        <input type="hidden" name="accion" value="AgregarComentarios">
                         <div class="my-4"></div>
                       
                          
                        <div class="my-4"></div>
                        
                        
                         <!--  -->                
                        <div class="container-fluid py-2">
                          <div class="modal-footer">
                            <a href="Controlador?accion=listarComentarios" class="btn btn-secondary"  >Regresar</a>
                            <input class="btn btn-primary" name="AgregarComentariosDB" value="AgregarComentariosDB" type="submit"/>
                          </div>
                        </div>
                        <!--  -->
                        
                      
                        </form>

                    </div>
                  </div>
              </div>
            </div>
          </section>
        </div>      
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