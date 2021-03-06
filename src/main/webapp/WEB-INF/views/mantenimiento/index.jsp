<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>	
    <jsp:body>  
    <!-- Buscar -->
      <link href="<c:url value="/resources/styles/buscar.css" />" rel="stylesheet"/>
       <div class= "container">
   		 <h1>Control de Mantenimientos</h1>  		 
   		
   		
			<div  class="panel panel-default" style="filter:alpha(opacity=50); opacity:0.9;">			
			<br>
			<div class="row">
				<div class="col-lg-3">
					<div class="row">
						<div class="col-lg-6">
							<div align="right">
					    		<a  href="<c:url value="/mantenimiento/agregar"/>" class="btn btn-success">Agregar  <span class="glyphicon glyphicon-plus"></span></a>
					    	</div>
						</div>
					</div>
				</div>					
			</div>			
			<div id="wrap">		
				<form method="GET" action="<c:url value="/mantenimiento"/>">
					<div>
						<input type="text" name="tipo" id="InputBuscar"  placeholder="Tipo de Mantenimiento" value="${searchCriteria}"/>
						<input type="submit" name="BtnBuscar" value="Buscar"/>
					</div>								
				</form>
			</div>		
    	
    		<div >
				<table class="table table-bordered" id="tabla">
					<thead>
						<tr>
							<th>Tipo</th>
							<th>Descripcion</th>
							<th>Km Frecuencia</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "mantenimiento" items="${mantenimientos}">
							<tr>
							
								<td><c:out value = "${mantenimiento.tipo}"/></td>
								<td><c:out value = "${mantenimiento.descripcion}"/></td>
								<td><c:out value = "${mantenimiento.kmFrecuencia}"/></td>
								
								
								<td>
									<div class="col-sm-6">								
										 <a class="btn btn-info" href="<c:url value="/mantenimiento/editar?id=${mantenimiento.id}"/>">Editar<%--<span class="glyphicon glyphicon-pencil"></span>--%></a>
									
									 <%-- <c:set var = "id" value ="${mantenimiento.id}"/>
		    						  	<c:set var = "km"  value ="${mantenimiento.kmFrecuencia}"/>
				    				  	<c:set var = "des" value ="${mantenimiento.descripcion}"/>					   
									  	<button type="button" class="btn btn-info"  data-toggle="modal"  data-backdrop="false" data-target="#E${mantenimiento.id}">
									   		<span class="glyphicon glyphicon-trash"></span> <c:out value = "${id}"/>
									   	Editar</button>	 --%>
									
									</div>	    						    			
									<div class="col-sm-6">										
			    						<%--   <a href="<c:url value="/mantenimiento/eliminar?id=${mantenimiento.id}"/>"><span class="glyphicon glyphicon-trash"></span></a>
		    						  --%>	    						  
		    						 	<c:set var = "id" value ="${mantenimiento.id}"/>
		    						 	
		    						  	<c:set var = "tipo"  value ="${mantenimiento.tipo}"/>
		    						  	<c:set var = "km"  value ="${mantenimiento.kmFrecuencia}"/>
				    				  	<c:set var = "des" value ="${mantenimiento.descripcion}"/>					   
									   	<button type="button" class="btn btn-danger"  data-toggle="modal"  data-backdrop="false" data-target="#${mantenimiento.id}">
									   		<%-- <span class="glyphicon glyphicon-trash"></span> <c:out value = "${id}"/>--%>
									   	Eliminar</button>								    	 
									</div>
	    						
								  <div class="modal fade" id="${mantenimiento.id}">
								    <div class="modal-dialog">
								      <div class="modal-content">								      
								        <!-- Modal Header -->
								        <div class="modal-header">
								          <h4 class="modal-title">¿Esta seguro que desea eliminar este mantenimiento?</h4>
								         	 <button type="button" class="close" data-dismiss="modal">&times;</button>
								        </div>        
								        <!-- Modal body -->
								        <div class="modal-body">
								        	<div class="row">
								        	<div class="col-lg-4">
								        			<label>Tipo: </label>        		   
										        		<c:out value = "${tipo}"/>        		
										        	</div>
								        		<div class="col-lg-4">
								        			<label>Descripción: </label>        		   
										        		<c:out value = "${des}"/>        		
										        	</div>
										        	<div class="col-lg-4">
										        	<label>Kilómetro: </label>       	
										        		<c:out value = "${km}"/>
										        	</div>
								        	</div>								        		
										</div>	       
								  		 <!-- Modal footer -->
								        <div class="modal-footer">
								      	  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>        
								        	 <a href="<c:url value="/mantenimiento/eliminar?id=${id}"/>"class="btn btn-danger">Eliminar <span class="glyphicon glyphicon-trash"></span></a>
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
	.panel.panel-default{
	  	background-color: sky-blue;
	} 
    
   
</style>
    </jsp:body>
</t:layout>