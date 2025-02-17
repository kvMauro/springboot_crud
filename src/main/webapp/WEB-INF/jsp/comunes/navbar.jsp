<c:set var="urlInicio">
    <c:url value="${application.contextPath}/" />
</c:set>
<c:set var="urlAgregar">
    <c:url value="${application.contextPath}/agregar" />
</c:set>
<c:set var="urlEditar">
    <c:url value="${application.contextPath}/editar" />
</c:set>
<c:set var="urlEliminar">
    <c:url value="${application.contextPath}/eliminar" />
</c:set>

<nav class="navbar navbar-expand-lg bg-dark navbar-dark" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="${urlInicio}">Sistema de Empleados</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${urlInicio}">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${urlAgregar}">Agregar empleado</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
