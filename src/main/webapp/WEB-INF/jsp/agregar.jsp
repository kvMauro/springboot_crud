<%@ include file="comunes/header.jsp"%>
<%@ include file="comunes/navbar.jsp"%>

<div class="container">
    <div class="text-center m-3">
        <h3>Agregar Empleado</h3>
    </div>
    <form action="${urlAgregar}" modelAttribute="empleadoForma" method="POST">
        <div class="mb-3">
            <label for="nombreInput" class="form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="nombreInput" required="true">
        </div>
        <div class="mb-3">
            <label for="departamentoInput" class="form-label">Departamento</label>
            <input type="text" class="form-control" name="departamento" id="departamentoInput">
        </div>
        <div class="mb-3">
            <label for="sueldoInput" class="form-label">Sueldo</label>
            <input type="number" step="any" class="form-control" name="sueldo" id="sueldoInput">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-success me-3">Agregar</button>
            <a href="${urlInicio}" class="btn btn-danger">Cancelar</a>
        </div>
    </form>
</div>



<%@ include file="comunes/footer.jsp"%>
