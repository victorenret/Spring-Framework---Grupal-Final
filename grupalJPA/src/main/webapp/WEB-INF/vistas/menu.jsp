<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu de Navegación</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="./">SpringGrupalJPA</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
	
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="./">Inicio</a></li>
					<sec:authorize access="hasAnyAuthority('ADMIN', 'CLIENTE')">
					<li class="nav-item"><a class="nav-link active" href="capacitacion">Capacitaciones</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyAuthority('ADMIN', 'ADMINISTRATIVO')">
					<div class="dropdown">
					  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
					   Usuarios
					  </button>
					  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					    <li><a class="dropdown-item" href="cliente">Cliente</a></li>
					    <li><a class="dropdown-item" href="profesional">Profesional</a></li>
					    <li><a class="dropdown-item" href="administrativo">Administrativo</a></li>
					  </ul>
					</div>
					</sec:authorize>
					<sec:authorize access="hasAnyAuthority('ADMIN', 'PROFESIONAL')">
					<li class="nav-item"><a class="nav-link active" href="visita">Visitas</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyAuthority('ADMIN', 'ADMINISTRATIVO')">
					<li class="nav-item"><a class="nav-link active" href="pago">Pagos</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyAuthority('ADMIN', 'CLIENTE')">
					<li class="nav-item"><a class="nav-link active" href="contacto">Contacto</a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
	    			<li class="nav-item"><a class="nav-link active" href="login">Iniciar Sesión</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
	    			<li class="nav-item"><a class="nav-link active" href="logout">Logout</a></li>
					</sec:authorize>	
				</ul>
				<ul class="navbar-nav ms-auto">
					<sec:authorize access="hasAnyAuthority('ADMINISTRATIVO')">
					<li><a>Logeado como Administrativo</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyAuthority('CLIENTE')">
					<li><a>Logeado como Cliente</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyAuthority('PROFESIONAL')">
					<li><a>Logeado como Profesional</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>
	</header>
</body>
</html>