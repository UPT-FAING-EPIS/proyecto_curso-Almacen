<%@page import="java.util.List"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
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
  <link href="css/product.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

  <div class="hero_area">
    <!-- header section strats -->
    <%@ include file="header/header.jsp"%>
    <!-- end header section -->
  </div>

  <!-- product section -->

  <section class="product_section layout_padding"><%--Modificado por Helbert--%>
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Nuestros Productos
        </h2>
      </div>
        
      <div class="row">
          <!--Inicio por Sebastian Cotrina -->
          <%
              ProductoDAO prodao = new ProductoDAO();
              List<Producto>elementos=prodao.listar();
              
               for(int i=0;i<elementos.size();i++){
                int pasar=elementos.get(i).getIdRepuesto();
                String val="Controlador?accion=MandarACarrito&idRepuesto="+pasar;
                String imagen="images/p"+pasar+"."+elementos.get(i).getImagenRepuesto();
                System.out.println(imagen);
          %>
          
                <div class="col-sm-6 col-lg-4">
                  <div class="box">
                    <div class="img-box">
                      <img src=<%=imagen%> alt="">
                      <a href=<%=val%> class="add_cart_btn">
                        <span>
                          Agregar al Carrito
                        </span>
                      </a>
                    </div>
                    <div class="detail-box">
                      <h5>
                          <%=elementos.get(i).getNombreRepuesto()%>
                      </h5>
                      <div class="product_info">
                        <h5>
                          <span>S/.</span> <%=elementos.get(i).getPrecioUnitarioRepuesto()%>
                        </h5>
                      </div>
                    </div>
                  </div>
                </div>      
             <% } %>
             <!-- Fin por Sebastian Cotrina-->
      </div>
    </div>
  </section>
  <!-- end product section --><%--Modificado por Helbert--%>

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