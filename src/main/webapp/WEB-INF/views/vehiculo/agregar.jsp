<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:body>
     <div class="container">	
     	<center><h1>Sistema de Control de Vehículos</h1></center>
			
		<form:form method="post" commandName="vehiculo">	
		<div class="row">
			<div class="col-lg-4">
				<div>
				<form:label path="placa">Placa</form:label>
				<form:input path="placa" cssClass="form-control"/>
				<form:errors path="placa"></form:errors>
			</div>	
			</div>		
			<div class="col-lg-4">	
				<div>
					<form:label path="clase">Clase</form:label>
					<form:input path="clase" cssClass="form-control"/>
					<form:errors path="clase"></form:errors>
				</div>	
				</div>	
			
		</div>	
		<div class="row">
			<div class="col-lg-4">
				<div>
				<form:label path="marca">Marca</form:label>
				<form:input path="marca" cssClass="form-control"/>
				<form:errors path="marca"></form:errors>
			</div>	
			</div>
			
			<div class="col-lg-4">
			<div>
				<form:label path="modelo">Modelo</form:label>
				<form:input path="modelo" cssClass="form-control"/>
				<form:errors path="modelo"></form:errors>
			</div>	
			</div>	
			<div class="col-lg-4">
			<div>
				<form:label path="anioFabricacion">Año Fabricación</form:label>
				<form:input path="anioFabricacion" cssClass="form-control"/>
				<form:errors path="anioFabricacion"></form:errors>
			</div>	
			</div>	
			
		</div>
					
				
				
				<div class="row">
			<div class="col-lg-4">
			<div>
				<form:label path="color">Color</form:label>
				<form:input path="color" cssClass="form-control"/>
				<form:errors path="color"></form:errors>
			</div>	
			
			
			</div>	
			
			<div class="col-lg-4">
			<div>
				<form:label path="carroceria">Carrocería</form:label>
				<form:input path="carroceria" cssClass="form-control"/>
				<form:errors path="carroceria"></form:errors>
			</div>	
			</div>	
			<div class="col-lg-4">
			<div>
				<form:label path="serieChasis">serieChasis</form:label>
				<form:input path="serieChasis" cssClass="form-control"/>
				<form:errors path="serieChasis"></form:errors>
			</div>	
			</div>	
			</div>	
				
			
			<div class="row">
			<div class="col-lg-4">
			<div>
				<form:label path="tipoCombustible">Tipo Combustible</form:label>
				<form:input path="tipoCombustible" cssClass="form-control"/>
				<form:errors path="tipoCombustible"></form:errors>
			</div>
			</div>
			<div class="col-lg-4">
			<div>
				<form:label path="km">Km</form:label>
				<form:input path="km" cssClass="form-control"/>
				<form:errors path="km"></form:errors>
			</div>
			</div>
			</div>
			
				
			<br>
			<div alingn = "right">			
				<input type="submit" value="Guardar" class="btn btn-success"/>
			</div>		
		</form:form>
		</div>
		
    </jsp:body>
</t:layout>