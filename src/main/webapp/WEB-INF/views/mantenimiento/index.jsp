<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>	
    <jsp:body>  
    
    
     <!-- Buscar -->
    <link href="<c:url value="/resources/styles/buscar.css" />" rel="stylesheet"/>
  
    <!-- <div id='cssmenu'>
		<ul>
		   <li ><a href='/help'>Acerca de Nosotros</a></li>
		   <li ><a href='/sagitario/mantenimiento'>Mantenimientos</a></li>
		   <li><a href='/sagitario/vehiculo'>Vehículos</a></li>
		   <li ><a href='http://localhost:8080/sagitario'>Home</a></li>
		</ul>
	</div>
	 -->
      
       <div class= "container">
   		 <h1>Sistema de Control de Mantenimientos</h1>
			<div  class="panel panel-default" style="filter:alpha(opacity=50); opacity:0.5;">		
				
					
			<!--  <div class="row">
					<div class="col">				
						<form method="GET" action="<c:url value="/mantenimiento"/>">
						<div>
							<label for="descripcion">Descripción: </label>
							<input type="text" name="descripcion" value="${searchCriteria}"/>
							<input type="submit" value="Buscar" class="btn btn-success"/>
						</div>								
					</form>
					</div>
				</div>
			</div>    -->	
			
			<div id="wrap">
				  <form action="" autocomplete="on">
				  <input id="descripcion" name="descripcion" type="text" placeholder=" Descripción"><input id="descripcion" value="Rechercher" type="submit">
				  </form>
				</div> 
			
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
    	</div>
    	</div>
    	</div>
    	<style>
    		.table td,th {
			   text-align: center;   
			}
				/*  .panel.panel-default{
	  
	}  */
    	</style>
    </jsp:body>
</t:layout>