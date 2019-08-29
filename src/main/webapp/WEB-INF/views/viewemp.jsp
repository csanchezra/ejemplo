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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.3.2/bootbox.js"></script>
	
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="col-md-6">
			<h4 class="text-center">Lista de Alumnos</h4>
			<hr>
			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					<th>Id</th>
					<th>Nombre</th>
					<th>Apellido 1</th>
					<th>Apellido 2</th>
					<th>Editar</th>
					<th>Eliminar</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="alum" items="${list}">
					<tr>
						<td>${alum.id}</td>
						<td>${alum.nombre}</td>
						<td>${alum.apell1}</td>
						<td>${alum.apell2}</td>
						<td><a href="editemp/${alum.id}" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-check"></i> Editar</a></td>
						<td><a  onclick="eliminar(${alum.id})" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Eliminar</a></td>
					</tr>
				</c:forEach>				
				</tbody>
			</table>
			<br />
			<a href="empform" class="btn btn-success"><i class="glyphicon glyphicon-edit"></i> Nuevo Alumno</a>
		</div>
	</div>
</div>
</body>
</html>

<script language="javascript">

function eliminar(id)
{

	
    bootbox.confirm({
        message: "<b>¿Desea eiminar?</b>",
        buttons: {
            confirm: {
                label: 'Aceptar',
                className: 'btn-primary'
            },
            cancel: {
                label: 'Atrás',
                className: 'btn-default'
            }
        },
        callback: function (result) {
            if (result) {
                $.ajax({
                    url:"deleteemp/"+id,
                    method:"",
                    data:{"id":id},
                    beforeSend: function(xhr) {
                      $("#wait").modal("show");
                    },
                    success:function(data){
                    	//$("#wait").modal("hide");
                    	location.reload(true);
                    },
                    error: function(error){
                      console.log(error);
                    }
                  });
            } 
            }
        });
   
	
	
	
	
	
	/*
    $.ajax({
        url:"deleteemp/"+id,
        method:"",
        data:{"id":id},
        beforeSend: function(xhr) {
          $("#wait").modal("show");
        },
        success:function(data){
        	//$("#wait").modal("hide");
        	location.reload(true);
        },
        error: function(error){
          console.log(error);
        }
      });*/
}
</script>