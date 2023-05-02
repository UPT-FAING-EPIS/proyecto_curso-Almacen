<!DOCTYPE html>
<html lang="en">
    <head><%-- Inicio por Helbert--%>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <h1> desea eliminar realmente el Pedido</h1>
                
        <form action="Controlador" class="form-horizontal">
            <div class="container-fluid py-2">
                <div class="modal-footer">
                    <a href="Controlador?accion=ListarPedido" class="btn btn-secondary" >No</a>
                    <input type="hidden" name="accion" value="EliminarPedido">
                    <input type="hidden" name="txtid" value="<%=(String) request.getAttribute("idped") %>">
                    
                    <input class="btn btn-primary" type="submit" name="EliminarPedidoDB" value="SI">
                </div>
            </div>
            
            <!--  -->
        </form>


    </body>
</html><%-- Fin por Helbert--%>