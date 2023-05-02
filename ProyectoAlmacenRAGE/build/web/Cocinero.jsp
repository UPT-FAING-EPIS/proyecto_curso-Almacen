<!DOCTYPE html>

<html lang="en">
  <head>  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>KANKAS</title>
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
            <p class="text-sm text-gray-700 mb-0 lh-1">COCINERO</p>
          </div>
        </div><span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2">Main</span>
        <ul class="list-unstyled">
               <li class="sidebar-item active"><a class="sidebar-link" href="Cocinero.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span>HOME</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                  <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>VOLVER A LA PAGINA</span></a>
              </li>
      </nav>

<!------------------------------------------------- INICIO CONTENIDO ------------------------------------------------------------->

  <div class="page-content">
    <div class="container" >
        <div class="row" >
            <h1 class="grfico">KANKAS</h1>            
                <div class="form-row mb-2">
                <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="well well-sm">
                            <form class="form-horizontal" method="post">
                                <fieldset>
                                    <legend>Vista de cocinero</legend>
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <input id="fname" name="name" type="text" placeholder="First Name" class="form-control">
                                        </div>
                                        <br>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <input id="lname" name="name" type="text" placeholder="Last Name" class="form-control">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <input id="email" name="email" type="text" placeholder="Email Address" class="form-control">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <input id="phone" name="phone" type="text" placeholder="Phone" class="form-control">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <textarea class="form-control" id="message" name="message" placeholder="Enter your massage for us here. We will get back to you within 2 business days." rows="7"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-12 text-center">
                                            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>            

    <!-- Main File-->
    <script src="js/front.js"></script>
</body>
</html>