<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:layout>
	
    <jsp:body> 
    
     <!-- Buscar -->
    <link href="<c:url value="/resources/styles/buscar.css" />" rel="stylesheet"/>
  
    
    <!--  <div id='cssmenu'>
		<ul>
		   <li ><a href='/help'>Acerca de Nosotros</a></li>
		   <li ><a href='/sagitario/mantenimiento'>Mantenimientos</a></li>
		   <li class='active'><a href='/sagitario/vehiculo'>Vehículos</a></li>
		   <li ><a href='http://localhost:8080/sagitario/'>Casa</a></li>
		</ul>
	</div>-->
	  
       <div class= "container">
       		<h1>Sistema de Control de Vehículos</h1>	
				<div  class="panel panel-default">		
				
    				<div>
			    		<a href="<c:url value="/vehiculo/agregar"/>"		 class="btn btn-primary">Agregar  <span class="glyphicon glyphicon-plus"></span></a>
			    	</div> 	    
								<div id="wrap">		
								<form method="GET" action="<c:url value="/vehiculo"/>">
									<div>
										<input type="text" name="placa"  placeholder="Ingresa la placa del vehículo" value="${searchCriteria}"/>
										<input type="submit" value="Buscar" class="btn btn-success"/>
									</div>								
								</form>
								</div>
							
						
				<!-- <div id="wrap">
				  <form action="" autocomplete="on">
				  <input id="placa" name="placa" type="text" placeholder="Ingresa la placa del vehículo"><input id="placa" value="Rechercher" type="submit">
				  </form>
				</div> 
						 -->	    
				    	<div>
							<table class="table table-bordered" id="tabla">
								 <thead class="thead-dark">
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
										<tr class= "Info">
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
    	</div>
    		</div>
    		
    	
      
    <style>
    		.table td,th {
			   text-align: center;   
			}
			label{
			color: black;
			}
    	</style>
    
    </jsp:body>
</t:layout>