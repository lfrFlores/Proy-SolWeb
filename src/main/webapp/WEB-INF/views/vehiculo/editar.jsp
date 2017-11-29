<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:body>
     <div class="container">
     <br>
     <h1>Control de Vehículos</h1>		
     <div  class="panel panel-default" style="filter:alpha(opacity=50); opacity:0.9;">			
				<br>
		<form:form method="post" commandName="vehiculo">	
		<div class="row">
		<div class="col-lg-1"></div>
			<div class="col-lg-3">
				<div>
				<form:label path="placa">Placa:</form:label>
				<form:input path="placa" cssClass="form-control"/>
				<form:errors path="placa"></form:errors>
			</div>	
			</div>	
			<div class="col-lg-2">
				<div>
				<form:label path="marca">Marca:</form:label>
				<form:input path="marca" cssClass="form-control"/>
				<form:errors path="marca"></form:errors>
			</div>	
			</div>
			
			<div class="col-lg-2">
			<div>
				<form:label path="modelo">Modelo:</form:label>
				<form:input path="modelo" cssClass="form-control"/>
				<form:errors path="modelo"></form:errors>
			</div>	
			</div>	
				<div class="col-lg-3">
			<div>
				<form:label path="color">Color:</form:label>
				<form:input path="color" cssClass="form-control"/>
				<form:errors path="color"></form:errors>
			</div>				
			</div>	
			<div class="col-lg-1"></div>				
		</div>	
		<div class="row">
		<div class="col-lg-1"></div>
		<div class="col-lg-3">	
			
			<div class="form-group"> 			
		        <label class="control-label" for="date"  >Categoría:</label>
		        <br>
				 <form:select class="selectpicker show-tick" path="clase" >
					  <option>Servicio Ligero</option>
					  <option>Servicio Mediano</option>
					  <option>Servicio Pesado</option>
				</form:select>
					<form:errors path="clase"></form:errors>
				</div>
				
				<%-- <div>
					<form:label path="clase">Clase</form:label>
					<form:input path="clase" cssClass="form-control"/>
					<form:errors path="clase"></form:errors>
				</div>	 --%>
				</div>
				
				
				<div class="col-lg-3">
			<div>
			
			
				<form:label path="carroceria">Carrocería:</form:label>
				<form:input path="carroceria" cssClass="form-control"/>
				<form:errors path="carroceria"></form:errors>
			</div>	
			</div>	
			<div class="col-lg-4">
			<div>
				<form:label path="serieChasis">Serie de Chasis:</form:label>
				<form:input path="serieChasis" cssClass="form-control"/>
				<form:errors path="serieChasis"></form:errors>
			</div>	
			</div>				
			
		<div class="col-lg-1"></div>	
			
		</div>
					
				
				
				<div class="row">
				
		<div class="col-lg-1"></div>	
				<div class="col-lg-3">
			<div class="form-group"> 			
		        <label class="control-label" for="date"  >Tipo de Combustible:</label>
		        <br>
				 <form:select class="selectpicker show-tick" path="tipoCombustible" >
					  <option>Gasolina</option>
					  <option>Gas Licuado de Petroleo</option>
					  <option>Diésel</option>
				</form:select>
					<form:errors path="tipoCombustible"></form:errors>
				</div>
			
			<%-- <div>
				<form:label path="tipoCombustible">Tipo Combustible</form:label>
				<form:input path="tipoCombustible" cssClass="form-control"/>
				<form:errors path="tipoCombustible"></form:errors>
			</div> --%>
			</div>
			<div class="col-lg-3">
			<div>
				<label>Km:</label>
				<form:input path="km" cssClass="form-control"/>
				<form:errors path="km"></form:errors>
			</div>
			</div>
		
			<div class="col-lg-2">
			
			 <div class="form-group"> <!-- Date input -->
		        <label class="control-label" for="date"  >Año de Fabricación:</label>
		        <form:input class="form-control" path="anioFabricacion" id="date" name="date" placeholder="Año" type="text"/>
	   			<form:errors path="anioFabricacion"></form:errors>
	      </div>
			<%-- <div>
				<form:label path="anioFabricacion">Año Fabricación</form:label>
				<form:input path="anioFabricacion" cssClass="form-control"/>
				<form:errors path="anioFabricacion"></form:errors>
			</div>	 --%>
			</div>
			
			</div>	
				
			
			<div class="row">
			<div class="col-lg-8">
			</div>
			<div class="col-lg-2">
				<div align = "right">			     
				<a href="<c:url value="/vehiculo"/>"class="btn btn-info btn-lg">Cancelar </a>
				</div>
				</div>
			<div class="col-lg-2">
			<div >			     
									    		        	
				<input type="submit" value="Guardar" class="btn btn-success  btn-lg"/>
			</div>	
			</div>
			
			</div>
			
				
				
		</form:form>
		<br>
		</div>	
		</div>
		<style>
    		label {
			   color: black;   
			}
			label{
			color: black;
			}
    	</style>
		
    </jsp:body>
</t:layout>