<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:layout>
	
    <jsp:body> 
    
     <!-- Buscar -->
    <link href="<c:url value="/resources/styles/buscar.css" />" rel="stylesheet"/>
       <div class= "container">
       		<h1>Control de Vehículos</h1>
			<div  class="panel panel-default" style="filter:alpha(opacity=50); opacity:0.9;">			
			<br>
			<div class="row">
				<div class="col-lg-3">
					<div class="row">
						<div class="col-lg-6">
							<div align="right">
					    		<a  href="<c:url value="/vehiculo/agregar"/>" class="btn btn-success">Agregar  <span class="glyphicon glyphicon-plus"></span></a>
					    	</div>
						</div>
					</div>
				</div>					
			</div>		    
								<div id="wrap">		
								<form method="GET" action="<c:url value="/vehiculo"/>">
									<div>
											<input type="text" name="placa" id="InputBuscar"  placeholder="Ingresa la placa del vehículo" value="${searchCriteria}"/>
										<input type="submit"  name="BtnBuscar" value="Buscar" />
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
										<th>Clase</th>
										<th>Marca</th>
										<th>Modelo</th>
										<th>Año de Fabricación</th>
										<th>Color</th>
										<th>Carroceria</th>
										<th>Serie Chasis</th>
										<th>Tipo Combustible</th>
										<th>km Recorrido</th>
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
													<!--  <a href="<c:url value="/vehiculo/editar?id=${vehiculo.id}"/>"><span class="glyphicon glyphicon-pencil"></span></a>
													 --><a class="btn btn-info" href="<c:url value="/vehiculo/editar?id=${vehiculo.id}"/>">Editar<%--<span class="glyphicon glyphicon-pencil"></span>--%></a>
									
												</div>
					    						    			
												<div class="col-sm-6">			
					    							<%-- <a href="<c:url value="/vehiculo/eliminar?id=${vehiculo.id}"/>"><span class="glyphicon glyphicon-trash"></span></a>
					    		 --%>
		    						 	<c:set var = "id"  value ="${vehiculo.id}"/>
						    						  	
						    						  	<c:set var = "placa"  value ="${vehiculo.placa}"/>
						    						  	<c:set var = "clase"  value ="${vehiculo.clase}"/>
								    				  	<c:set var = "marca" value ="${vehiculo.marca}"/>								    				  	
								    				  	<c:set var = "modelo" value ="${vehiculo.modelo}"/>				   
													   	<button type="button" class="btn btn-danger"  data-toggle="modal"  data-backdrop="false" data-target="#${vehiculo.id}">
													   		<%-- <span class="glyphicon glyphicon-trash"></span> <c:out value = "${id}"/>--%>
									   	Eliminar</button>	
					    						
					    						
					    						</div>
					    						
					    						
					    						
					    						 <div class="modal fade" id="${vehiculo.id}">
								    <div class="modal-dialog">
								      <div class="modal-content">								      
								        <!-- Modal Header -->
								        <div class="modal-header">
								          <h4 class="modal-title">¿Esta seguro que desea eliminar este Vehículo?</h4>
								         	 <button type="button" class="close" data-dismiss="modal">&times;</button>
								        </div>        
								        <!-- Modal body -->
								        <div class="modal-body">
								        	<div class="row">
								        	<div class="col-lg-3">
								        			<label>Placa: </label>        		   
										        		<c:out value = "${placa}"/>        		
										        	</div>
								        		<div class="col-lg-3">
								        			<label>Clase: </label>        		   
										        		<c:out value = "${clase}"/>        		
										        	</div>
										        	<div class="col-lg-3">
										        	<label>Marca: </label>       	
										        		<c:out value = "${marca}"/>
										        	</div>
										        	<div class="col-lg-3">
										        	<label>modelo: </label>       	
										        		<c:out value = "${modelo}"/>
										        	</div>
								        	</div>								        		
										</div>	       
								  		 <!-- Modal footer -->
								        <div class="modal-footer">
								      	  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>        
								        	 <a href="<c:url value="/vehiculo/eliminar?id=${id}"/>"class="btn btn-danger">Eliminar <span class="glyphicon glyphicon-trash"></span></a>
									    </div>								        
								      </div>
								    </div>
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