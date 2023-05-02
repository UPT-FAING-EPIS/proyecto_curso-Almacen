<%@page import="ModeloDAO.LoginDAO "  %>
<%@page import="Modelo.Usuario "  %>

<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    
    <link href="css/Register.css" rel="stylesheet">

    <title>Register</title>
  </head>
  <body>
    <div class="row justify-content-center">
        <div class="col-12 col-sm-10 col-md-12 col-lg-11 col-xl-10">
            <div class="card d-flex mx-auto my-5">
                <div class="row">
                    <div class="col-md-5 col-sm-12 col-xs-12 c1 p-5">
                        <div class="pic"><img src="assets/img/favicon.png" class="img-fluid" alt=""></div>
                        <div class="row justify-content-center">
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-12 col-xs-12 c2 px-5 pt-5">
                       <form action="Controlador" >
                        <div class="form-row mb-2" >
                               <div class="form-group mb-3">
                                    <label class="font-weight-bold" style="color:black">Email <span class="text-danger">*</span></label>
                                    <input name="txtEmail" type="text" class="form-control" placeholder="Ingresa tu Email">
                                </div>
                        </div>                     
                        <div class="form-group mb-3">
                            <label class="font-weight-bold"style="color:black">Contraseña <span class="text-danger">*</span></label>
                            <input name="txtPassword" type="password" class="form-control" placeholder="Ingresa tu contraseña">
                        </div>                        
                        <input type="submit" name="LogearUsuarioForm" class="btn btn-primary width-100" value="Logearse" />
                        <input type="hidden" name="accion" value="LogearUsuario">
                        
                         <a href="index.jsp" type="submit" name="button1" class="">Volver</a>      
                    </form> 
                    </div>
                </div>
            </div>
        </div>
    </div>         
  </body>
</html>