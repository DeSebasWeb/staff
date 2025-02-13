<%@ include file="comunes/cabecero.jsp"%>
<%@ include file="comunes/navegacion.jsp"%>

    <div class="container">
        <div class="text-center" style="margin: 30px;">
            <h3>Sistema de empleados</h3>
        </div>
    </div>    

    <div class="container">
      <table class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark text-center">
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Nombre</th>
            <th scope="col">Departamento</th>
            <th scope="col">Sueldo</th>
          </tr>
        </thead>
        <tbody>
          <!-- Espression Language para JSP's  para ponerle un forEach-->
          <c:forEach var="empleado" items="${empleados}">
            <tr>
              <th scope="row">${empleado.idEmpleado}</th>
              <td>${empleado.nombre}</td>
              <td>${empleado.departamento}</td>
              <td>
                <fmt:setLocale value="es_CO"/>
                <fmt:formatNumber type="currency" value="${empleado.sueldo}"/>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
<%@ include file="comunes/pie-pagina.jsp"%>