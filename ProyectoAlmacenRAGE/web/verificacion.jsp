<%-- 
    Document   : verificacion
    Created on : 20 nov 2022, 20:15:20
    Author     : OVALTECH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ingresa tu codigo de verificacion en tu correo</h1>
         <form action="Controlador">
                               
                        <div class="form-group mb-3">
                            <label class="font-weight-bold"style="color:black">Codigo<span class="text-danger">*</span></label>
                            <input name="verificacion" type="text" class="form-control" placeholder="Ingresa codigo">
                        </div>    
                        
            <input type="submit" name="verificacion2" class="btn btn-primary width-100" value="Verificar" />
            <input type="hidden" name="accion" value="loguear">
        </form>
    </body>
</html>
