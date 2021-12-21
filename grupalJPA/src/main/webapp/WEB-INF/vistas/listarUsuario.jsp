<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Usuarios</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/res/css/estilo.css" />">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	function mostrar(id) {
		if (id == "profesional") {
			$("#profesional").show();
			$("#administrativo").hide();
			$("#cliente").hide();

		}

		if (id == "administrativo") {
			$("#profesional").hide();
			$("#administrativo").show();
			$("#cliente").hide();

		}

		if (id == "cliente") {
			$("#profesional").hide();
			$("#administrativo").hide();
			$("#cliente").show();

		}

	}
</script>
</head>
<body>

	<header>
		<%@ include file='menu.jsp'%>
	</header>
<section>
		<div class="container">
			<form class="row g-3" action="CrearUsuario" method="post">
				<div class="mb-3">
					<h2>Tipos de usuarios a listar:</h2>
					<div class="col-md-3">
						<select id="status" name="status" class="form-select"
							onChange="mostrar(this.value);">
							<option class="form-label" value="">---Seleccionar---</option>
							<option value="profesional">Profesionales</option>
							<option value="administrativo">Administrativos</option>
							<option value="cliente">Clientes</option>
						</select>
					</div>
				</div>
			</form>
		</div>
	</section>

	<section>
		<div class="container">
			<div id="administrativo" style="display: none;">
				<table class="table">

					<thead class="table-dark">
						<tr>
							<th>ID</th>
							<th>Run</th>
							<th>Nombre</th>
							<th>Fecha nacimiento</th>
							<th>Área</th>
							<th>Experiencia</th>
							<th>Accion</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="adm" items="${administrativo}">
							<tr>
								<td><c:out value="${adm.getId()}"></c:out></td>
								<td><c:out value="${adm.getRut()}"></c:out></td>
								<td><c:out value="${adm.getNombre()}"></c:out></td>
								<td><c:out value="${adm.getFechaNac()}"></c:out></td>
								<td><c:out value="${adm.getArea()}"></c:out></td>
								<td><c:out value="${adm.getExpPrevia()}"></c:out></td>
								<td>
									<div class="btn-group" role="group" aria-label="Basic mixed styles example">
									 <a href="delete/${adm.getId()}" class="btn btn-danger" role="button">Eliminar</a> 
									 <a href="editarCapacitacion?id=${adm.getId()}" class="btn btn-warning" role="button" >Editar</a>
									</div>
								</td>
								
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>

			<div id="profesional" style="display: none;">
				<table class="table">

					<thead class="table-dark">
						<tr>
							<th>ID</th>
							<th>Run</th>
							<th>Nombre</th>
							<th>Fecha nacimiento</th>
							<th>Titulo</th>
							<th>Fecha Ingreso</th>
							<th>Accion</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="pro" items="${pro}">
							<tr>
								<td><c:out value="${pro.getId()}"></c:out></td>
								<td><c:out value="${pro.getRut()}"></c:out></td>
								<td><c:out value="${pro.getNombre()}"></c:out></td>
								<td><c:out value="${pro.getFechaNac()}"></c:out></td>
								<td><c:out value="${pro.getTitulo()}"></c:out></td>
								<td><c:out value="${pro.getFechaIngreso()}"></c:out></td>
								<td>
									<div class="row g-3">
	                                <form class="col-md-4" action="EliminarUsuario" method="post">
									<button action="EliminarUsuario" method="post" type="submit" 
									class="btn btn-danger" name="id" value="${pro.getId()}">Eliminar</button>
									</form>	
									<form class="col-md-3" action="ActualizarUsuario" method="post">
									<input name="tipoUsuario" value="profesional" style="display: none;">
									<button type="submit" 
									class="btn btn-warning" name="id" value="${pro.getId()}">Actualizar</button>
									</form>	
								</div>	
                                </td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>

			<div id="cliente" style="display: none;">
				<table class="table">

					<thead class="table-dark">
						<tr>
							<th>ID</th>
							<th>Run</th>
							<th>Nombre</th>
							<th>Fecha nacimiento</th>
							<th>Rut</th>
							<th>Nombres</th>
							<th>Apellidos</th>
							<th>Telefono</th>
							<th>Direccion</th>
							<th>Comuna</th>
							<th>AFP</th>
							<th>Edad</th>
							<th>prevSalud</th>
							<th>Accion</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="c" items="${cliente}">
							<tr>
								<td><c:out value="${c.getId()}"></c:out></td>
								<td><c:out value="${c.getRun()}"></c:out></td>
								<td><c:out value="${c.getNombre()}"></c:out></td>
								<td><c:out value="${c.getFechaNac()}"></c:out></td>
								<td><c:out value="${c.getRut()}"></c:out></td>
								<td><c:out value="${c.getNombres()}"></c:out></td>
								<td><c:out value="${c.getApellidos()}"></c:out></td>
								<td><c:out value="${c.getTelefono()}"></c:out></td>
								<td><c:out value="${c.getDireccion()}"></c:out></td>
								<td><c:out value="${c.getComuna()}"></c:out></td>
								<td><c:out value="${c.getAfp()}"></c:out></td>
								<td><c:out value="${c.getEdad()}"></c:out></td>
								<td><c:out value="${c.getPrevSalud()}"></c:out></td>
								<td>
		                         
	                                <form class="" action="EliminarUsuario" method="post">
									<button action="EliminarUsuario" method="post" type="submit" 
									class="btn btn-danger" name="id" value="${c.getId()}">Eliminar</button>
									</form>	
									<form class="" action="ActualizarUsuario" method="post">
									<input name="tipoUsuario" value="cliente" style="display: none;">
									<button type="submit" 
									class="btn btn-warning" name="id" value="${c.getId()}">Actualizar</button>
									</form>	
									
                                </td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
		</div>

		
	</section>
	</section>
		<footer>
			<h3>Sprint Grupal - FullStack - Awakelab</h3>
		</footer>
		<script
			src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
			integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
			crossorigin="anonymous"></script>

</body>
</html>