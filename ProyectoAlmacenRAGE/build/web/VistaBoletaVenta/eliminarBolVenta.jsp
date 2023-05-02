<%------------------------------------                   Inicio por ERICK                      -----------------------------------%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <h1> Desea eliminar el La boleta?</h1>
                
        <form action="Controlador" class="form-horizontal">
            <div class="container-fluid py-2">
                <div class="modal-footer">
                    <a href="Controlador?accion=ListarBoletaVenta" class="btn btn-secondary" >No</a>
                    <input type="hidden" name="accion" value="EliminarBoletaVenta">
                    <input type="numer" name="txtNro" value="<%= request.getAttribute("nroboleta") %>">
                    <input type="text" name="txtSerie" value="<%=request.getAttribute("serieboleta") %>">
                    <input class="btn btn-primary" type="submit" name="EliminarBoletaVentaDB" value="SI">
                </div>
            </div>
        </form>
    </body>
</html>

<%------------------------------------                   Fin por ERICK                      -----------------------------------%>