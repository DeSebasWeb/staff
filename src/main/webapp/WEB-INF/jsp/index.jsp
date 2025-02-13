<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Sistema de empleados</title>
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg" style="background-color: #5D0090;" data-bs-theme="dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="/empleados">Sistema de empleados</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/empleados">Inicio</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Opciones
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">Nuevo empleado</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                    </ul>
                  </li>
                </ul>
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            </div>
        </nav>
    </div>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    

</body>
</html>