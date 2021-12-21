<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Listar Capacitacion</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/res/css/estilo.css" />">

</head>
<body>
	<header>
		<%@ include file='menu.jsp'%>
	</header>

	<section>
		<div class="container">
		<h2 style="text-align: center;">Listado de Capacitaciones</h2>
		<input type="checkbox" class="btn-check" id="btncheck1" onclick="myFunction()">
			<label class="btn btn-secondary" for="btncheck1">Nueva Capacitación</label>
			<div id="text" style="display:none; width: 50%" class="container"> 
				<h3 style="text-align: center;">Ingrese nueva Capacitación</h3>
					<form method="post" action="crearCapacitacion" class="row g-3">
				  <div class="mb-3 col-md-4">
				    <label class="form-label">Rut Cliente: </label>
				    <input type="text" class="form-control" name="rutCliente" />
				  </div>
				  <div class="mb-3 col-md-4">
				    <label class="form-label">Día: </label>
				    <input type="date" class="form-control" name="dia" />
				  </div>
				  <div class="mb-3 col-md-4">
				    <label class="form-label">Hora: </label>
				    <input type="time" class="form-control" name="hora" />
				  </div>
				  <div class="mb-3 col-md-4">
				    <label class="form-label">Lugar: </label>
				    <input type="text" class="form-control" name="lugar" />
				  </div>
				  <div class="mb-3 col-md-4">
				    <label class="form-label">Duracion: </label>
				    <input type="text" class="form-control" name="duracion" />
				  </div>
				  <div class="mb-3 col-md-4">
				    <label class="form-label">Cantidad de asistentes: </label>
				    <input type="number" class="form-control" name="cantAsist" />
				  </div>
				  <button type="submit" class="btn btn-primary col-md-2">Guardar</button>
				</form>
				</div>
		<table style="margin-bottom: 50px; margin-top: 10px" class="table">
			<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Rut cliente</th>
					<th>Dia</th>
					<th>Hora</th>
					<th>Lugar</th>
					<th>Duracion</th>
					<th>Cantidad Asistentes</th>
					<th>Acción</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="c" items="${capacitacion}">
					<tr>
						<td><c:out value="${c.getId()}"></c:out></td>
						<td><c:out value="${c.getRutCliente()}"></c:out></td>
						<td><c:out value="${c.getDia()}"></c:out></td>
						<td><c:out value="${c.getHora()}"></c:out></td>
						<td><c:out value="${c.getLugar()}"></c:out></td>
						<td><c:out value="${c.getDuracion()}"></c:out></td>
						<td><c:out value="${c.getCantAsist()}"></c:out></td>
						
						<td>
							<div class="btn-group" role="group" aria-label="Basic mixed styles example">
							 <a href="delete/${c.getId()}" class="btn btn-danger" role="button">Eliminar</a> 
							 <a href="editarCapacitacion?id=${c.getId()}" class="btn btn-warning" role="button" >Editar</a>
							</div>
						</td>	
					</tr>
				</c:forEach>
			</tbody>

		</table>
		</div>


	</section>

	<footer>
		<h3>Sprint Grupal Final - FullStack Java - Awakelab</h3>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script>
		function myFunction() {
			  // Get the checkbox
			  var checkBox = document.getElementById("btncheck1");
			  // Get the output text
			  var text = document.getElementById("text");

			  // If the checkbox is checked, display the output text
			  if (checkBox.checked == true){
			    text.style.display = "block";
			  } else {
			    text.style.display = "none";
			  }
			}</script>
</body>
</html>