<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Productos - Sistema CRUD</title>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/3081/3081559.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
<div class="container mt-5 shadow-lg">
    <div class="text-center mb-4">        
        <img src="assets/images/inventario.png" alt="Logo Gestión Productos" style="width: 64px; height: 64px; margin-bottom: 10px;">
        <h1 class="d-inline-block ms-3">Gestión de Productos</h1>
    </div>
    <form id="formProducto" class="row g-3 mb-3 justify-content-center align-items-end">
        <input type="hidden" id="id" name="id">
        <div class="col-12 col-md-4 mb-2">
            <label for="nombre" class="form-label">Nombre:</label>
            <input type="text" id="nombre" name="nombre" class="form-control form-control-lg" placeholder="Nombre del producto" required>
        </div>
        <div class="col-12 col-md-4 mb-2">
            <label for="descripcion" class="form-label">Descripción:</label>
            <input type="text" id="descripcion" name="descripcion" class="form-control form-control-lg" placeholder="Descripción del producto">
        </div>
        <div class="col-12 col-md-4 mb-2">
            <label for="precio" class="form-label">Precio:</label>
            <input type="number" id="precio" name="precio" step="0.01" class="form-control form-control-lg" placeholder="0.00" required>
        </div>
        <div class="col-12 d-flex flex-wrap justify-content-center gap-2 mt-2">
            <button id="btnMostrar" type="button" class="btn btn-primary btn-lg px-4 rounded-pill shadow-sm"><i class="bi bi-table"></i> MOSTRAR</button>
            <button id="btnIngresar" type="button" class="btn btn-success btn-lg px-4 rounded-pill shadow-sm"><i class="bi bi-plus-circle"></i> INGRESAR</button>
            <button id="btnEditar" type="button" class="btn btn-warning btn-lg px-4 rounded-pill shadow-sm text-white"><i class="bi bi-pencil-square"></i> EDITAR</button>
            <button id="btnEliminar" type="button" class="btn btn-danger btn-lg px-4 rounded-pill shadow-sm"><i class="bi bi-trash"></i> ELIMINAR</button>
        </div>
    </form>
    <div id="resultados"></div>
    <div class="table-responsive rounded-4 shadow-sm">
        <table id="tablaProductos" class="table table-striped table-hover align-middle mb-0">
            <thead class="table-primary">
                <tr>
                    <th></th>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <tr id="filaVacia">
                    <td colspan="5" class="text-center text-muted"><strong style="font-size: 1.2em;">No hay productos para mostrar</strong></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="app.js"></script>
</body>
</html>
