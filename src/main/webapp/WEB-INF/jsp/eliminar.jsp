<%@ include file="comunes/cabecero.jsp"%>
<%@ include file="comunes/navegacion.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Eliminar empleado</h3>
    </div>
<!-- Formulario para agregar cliente -->
    <form action="${urlEliminar}" modelAttribute="empleadoForma" method="post">
        <!-- Valor oculto para poner el id para modificar -->
         <input type="hidden" name="idEmpleado" value="${empleado.idEmpleado}">
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required="true" value="${empleado.nombre}">
        </div>
        <div class="mb-3">
            <label for="departamento" class="form-label">Departamento</label>
            <input type="text" class="form-control" id="departamento" name="departamento" value="${empleado.departamento}">
        </div>
        <div class="mb-3">
            <label for="sueldo" class="form-label">Sueldo</label>
            <input type="number" step="any" class="form-control" name="sueldo" id="sueldo" value="${empleado.sueldo}">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-success  me-3" >Eliminar</button>
            <a href="${urlInicio}" class="btn btn-danger">Regresar</a>
        </div>   
      </form>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>