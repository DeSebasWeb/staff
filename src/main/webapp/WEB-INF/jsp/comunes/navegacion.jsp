<!--Agregar los url de la aplicacion-->
<c:set var="urlInicio">
  <c:url value="${application.contextPath}/"/>
</c:set>

<c:set var="urlAgregar">
  <c:url value="${application.contextPath}/agregar"/>
</c:set>



<div class="container">
        <nav class="navbar navbar-expand-lg" style="background-color: #5D0090;" data-bs-theme="dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="${urlInicio}">Sistema de empleados</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="urlInicio">Inicio</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Opciones
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="${urlAgregar}">Nuevo empleado</a></li>
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