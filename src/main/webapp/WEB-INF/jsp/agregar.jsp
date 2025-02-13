<%@ include file="comunes/cabecero.jsp"%>
<%@ include file="comunes/navegacion.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Agregar empleado</h3>
    </div>
<!-- Formulario para agregar cliente -->
    <form>
        <div class="mb-3">
          <label for="nombre" class="form-label">Nombre</label>
          <input type="text" class="form-control" id="nombre" required="true">
        </div>
        <div class="mb-3">
          <label for="departamento" class="form-label">Departamento</label>
          <input type="text" class="form-control" id="departamento">
        </div>
        <div class="mb-3">
          <input for="" class="form-label">
          <label for="sueldo" class="form-control">Sueldo</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>

</div>

<%@ include file="comunes/pie-pagina.jsp"%>