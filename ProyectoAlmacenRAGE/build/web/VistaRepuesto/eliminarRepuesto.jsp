<%-- Inicio por Erick--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <h1> desea eliminar realmente el Repuesto</h1>
                
        <form action="Controlador" class="form-horizontal">
            <div class="container-fluid py-2">
                <div class="modal-footer">
                    <a href="Controlador?accion=ListarRepuestos" class="btn btn-secondary" >No</a>
                    <input type="hidden" name="accion" value="EliminarRepuesto">
                    <input type="hidden" name="txtid" value="<%=(String) request.getAttribute("id") %>">
                    
                    <input class="btn btn-primary" type="submit" name="EliminarRepuestoDB" value="SI">
                </div>
            </div>
            
            <!--  -->
        </form>


    </body>
</html>