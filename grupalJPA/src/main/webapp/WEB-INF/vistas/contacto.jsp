<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contacto</title>
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
</head>
<body>
	<header>
		<%@ include file='menu.jsp'%>
	</header>
	<div class="container" style="width: 50%">
		<h2 style="text-align: center;">Formulario de contacto</h2>

		<form:form modelAttribute="contacto" class="row g-3">
			<div class="col-md-6">
				<label class="form-label">Nombre*</label>
				<form:input path="nombre" type="text" class="form-control"
					placeholder="Ingrese su nombre" required="required" />
			</div>

			<div class="col-md-6">
				<label class="form-label">Email*</label>
				<form:input path="email" type="email" class="form-control"
					placeholder="Ingrese correo electrónico de contacto"
					required="required" />
			</div>
			<div class="col-md-6">
				<label class="form-label">Dirección*</label>
				<form:input path="direccion" type="text" class="form-control"
					placeholder="Ingrese direccion de contacto" required="required" />
			</div>

			<div class=" col-md-6">
				<label class="form-label">Teléfono*</label>
				<form:input path="telefono" type="tel" class="form-control"
					placeholder="Ingrese teléfono de contacto" required="required" />
			</div>

			<div class="col-md-6">
				<label class="form-label">Ciudad</label>
				<form:input path="ciudad" type="text" class="form-control"
					placeholder="Ingrese direccion de contacto" />
			</div>

			<div class="col-md-6">
				<label class="form-label">Region</label> <select id="inputState"
					name="region" class="form-control">
					<option disabled selected>Seleccione Región...</option>
					<option>REGION METROPOLITANA</option>
					<option>REGION XV DE ARICA Y PARINACOTA</option>
					<option>REGION I DE TARAPACA</option>
					<option>REGION II DE ANTOFAGASTA</option>
					<option>REGION III DE ATACAMA</option>
					<option>REGION IV DE COQUIMBO</option>
					<option>REGION V DE VALPARAISO</option>
					<option>REGION VI DEL LIBERTADOR GRAL B.OHIGGINS</option>
					<option>REGION VII DEL MAULE</option>
					<option>REGIÓN XVI DE ÑUBLE</option>
					<option>REGION VIII DEL BIO-BIO</option>
					<option>REGION IX DE LA ARAUCANIA</option>
					<option>REGION XIV DE LOS RIOS</option>
					<option>REGION X DE LOS LAGOS</option>
					<option>REGION XI DE AYSEN</option>
					<option>REGION XII DE MAGALLANES Y ANTARTICA CHILENA</option>

				</select>
			</div>


			<div class="col-md-1">
				<button type="submit" class="btn btn-warning">Enviar</button>
			</div>
		</form:form>
	</div>
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
</body>
</html>