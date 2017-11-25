<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:layout>	
    <jsp:body>    
    <center><h1>Sistema de Control de Mantenimientos</h1> </center>
			
    	<div align="Left">
    		<a  href="<c:url value="/mantenimiento/agregar"/>" class="btn btn-primary">Agregar  <span class="glyphicon glyphicon-plus"></span></a>
    	</div><br>
    	<div>
			<table class="table table-bordered" id="tabla">
				<thead>
					<tr>
						<th>Descripción</th>
						<th>Km Frecuencia</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var = "mantenimiento" items="${mantenimientos}">
						<tr>
							<td><c:out value = "${mantenimiento.descripcion}"/></td>
							<td><c:out value = "${mantenimiento.kmFrecuencia}"/></td>
							<td>
								<div class="col-sm-6">
									<a href="<c:url value="/mantenimiento/editar?id=${mantenimiento.id}"/>"><span class="glyphicon glyphicon-pencil"></span></a>
								</div>
	    						    			
								<div class="col-sm-6">			
	    							<a href="<c:url value="/mantenimiento/eliminar?id=${mantenimiento.id}"/>"><span class="glyphicon glyphicon-trash"></span></a>
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