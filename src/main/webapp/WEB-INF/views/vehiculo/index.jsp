<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:layout>	
    <jsp:body> 
    <center><h1>Sistema de Control de Vehículos</h1> </center>			
       
    	<div>
    		<a href="<c:url value="/vehiculo/agregar"/>" class="btn btn-primary">Agregar  <span class="glyphicon glyphicon-plus"></span></a>
    	</div><br>
    	<div>
			<table class="table table-bordered" id="tabla">
				<thead>
					<tr>
						<th>Placa</th>
						<th>clase</th>
						<th>marca</th>
						<th>modelo</th>
						<th>anioFabricacion</th>
						<th>color</th>
						<th>carroceria</th>
						<th>serieChasis</th>
						<th>Tipo Combustible</th>
						<th>km</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var = "vehiculo" items="${vehiculos}">
						<tr>
							<td><c:out value = "${vehiculo.placa}"/></td>
							<td><c:out value = "${vehiculo.clase}"/></td>							
							<td><c:out value = "${vehiculo.marca}"/></td>
							<td><c:out value = "${vehiculo.modelo}"/></td>
							<td><c:out value = "${vehiculo.anioFabricacion}"/></td>
							<td><c:out value = "${vehiculo.color}"/></td>
							<td><c:out value = "${vehiculo.carroceria}"/></td>
							<td><c:out value = "${vehiculo.serieChasis}"/></td>							
							<td><c:out value = "${vehiculo.tipoCombustible}"/></td>
							<td><c:out value = "${vehiculo.km}"/></td>
							<td>
								<div class="col-sm-6">
									<a href="<c:url value="/vehiculo/editar?id=${vehiculo.id}"/>"><span class="glyphicon glyphicon-pencil"></span></a>
								</div>
	    						    			
								<div class="col-sm-6">			
	    							<a href="<c:url value="/vehiculo/eliminar?id=${vehiculo.id}"/>"><span class="glyphicon glyphicon-trash"></span></a>
	    						</div>
							</td>
						</tr>
			      	</c:forEach>
				</tbody>
			</table>
    	</div>
    	
    	<style>
    		.table td,th {
			   text-align: center;   
			}
    	</style>
    </jsp:body>
</t:layout>