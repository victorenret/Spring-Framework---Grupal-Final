<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagos</title>
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
			<h2 style="text-align: center;">Registro de pagos</h2>
			<input type="checkbox" class="btn-check" id="btncheck1" onclick="myFunction()">
			<label class="btn btn-secondary" for="btncheck1">Nuevo Pago</label>	
				<div id="text" style="display:none; width: 50%" class="container">
				<h3 style="text-align: center;">Ingrese nuevo pago</h3>
				<form method="post" action="pago/crearPago" class="row g-3">
					<div class="mb-3 col-md-4">
						<label class="form-label">Rut:* </label>
						<input type="text" class="form-control" name="rut" />
					</div>
					<div class="mb-3 col-md-4">
						<label class="form-label">Nombre:*</label>
						<input type="text" class="form-control" name="nombre" />
					</div>
					<div class="mb-3 col-md-4">
						<label class="form-label">Fecha:* </label>
						<input type="date" class="form-control" name="fecha" />
					</div>
					<div class="mb-3 col-md-4">
						<label class="form-label">Monto*(solo números): </label>
						<input type="number" min="1" step="any" class="form-control" name="monto" />
					</div>
					<div class="mb-3 col-md-8">
						<label class="form-label">Comentario: </label>
						<textarea class="form-control" name="comentario" rows="3"></textarea>
					</div>
					<div>
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
				</form>
			</div>
			<table class="table" style="margin-bottom: 50px; margin-top: 10px">
					<thead class="table-dark">
						<tr>
							<th>ID</th>
							<th>Rut</th>
							<th>Nombre </th>
							<th>Fecha</th>
							<th>Monto ($)</th>
							<th>Comentario</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="p" items="${pago}">
							<tr>
								<td><c:out value="${p.getId()}"></c:out></td>
								<td><c:out value="${p.getRut()}"></c:out></td>
								<td><c:out value="${p.getNombre()}"></c:out></td>
								<td><c:out value="${p.getFecha()}"></c:out></td>
								<td><c:out value="${p.getMonto()}"></c:out></td>
								<td><c:out value="${p.getComentario()}"></c:out></td>
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
			}
	</script>
</body>
</html>