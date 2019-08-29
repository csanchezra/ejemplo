<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>CRUD SPRING MVC CON MYSQL</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-6">
				<h4 class="text-center">Editar Empleado</h4>
				<hr>
				<form:form method="post" action="/springmvc/editsave">
					<form:hidden path="id" />
					<div class="form-group">
						<label for = "nombre">Nombre : </label>
						<form:input path="nombre" class="form-control" id="nombre"/>
					</div>
					<div class="form-group">
						<label for = "apell1">Apellido 1 : </label>
						<form:input path="apell1" class="form-control" id="apell1"/>
					</div>
					<div class="form-group">
						<label for ="apell2">Apellido 2 : </label>
						<form:input path="apell2" class="form-control" id="apell2"/>
					</div>
					<div class="form-group">
						<input type="submit" value="Guardar." class="btn btn-success" onclick="validar()"/>
					</div>
					<div class="form-group">
					<a href="/springmvc" class="btn btn-success">Regresar</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>

<script language="javascript">

function validar()
{
	alert('nombre vacío');

let nombre =$('#nombre').val();

if (nombre=='')
	{
	alert('nombre vacío');
	}
}
</script>
