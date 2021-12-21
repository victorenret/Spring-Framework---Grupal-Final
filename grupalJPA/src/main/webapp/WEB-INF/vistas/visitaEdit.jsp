<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visitas a Terreno</title>
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

	<section>
	<div align="center">
        <h2>Revisión Visita Terreno</h2>
        <form:form action="visita/crearVisita" method="post"  modelAttribute="visita">
            <table class="editCapa" border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td>${visita.id}<form:hidden path="id"/></td>
                </tr>        
                <tr>
                    <td>Rut: </td>
                    <td><form:input type="text" class="form-control" path="rutCliente" /></td>
                </tr>
                
                <tr>
                    <td>Fecha: </td>
                    <td><form:input type="date" class="form-control" path="fecha" /></td>
                </tr>
                <tr>
                    <td>Hora: </td>
                    <td><form:input type="time" class="form-control" path="hora" /></td>
                </tr>
                
                 <tr>
                    <td>Dirección: </td>
                    <td><form:input type="text" class="form-control" path="direccion" /></td>
                </tr>
                <tr >
                    <td>Comentario: </td>
                    <td><form:textarea type="text" class="form-control" path="comentario" rows="3"/></td>
                </tr>
                <tr>
                    <td>Descripción Checkeo: </td>
                    <td><form:input type="text" class="form-control" path="nombreCheck" /></td>
                </tr>
                 <tr>
                    <td>Estado actual: </td>
                    <td><form:input type="text" class="form-control" path="estado" /></td>
                </tr>
                 <tr>                 	
                    <td colspan="2"><input class="btn btn-primary" type="submit" value="Guardar"></td>					
                </tr>  
                
                                 
            </table>
        </form:form>
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
	
</body>
</html>