<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:body>
    <div class="container">	
				<br><br>
				<h1>Sistema de Control de Mantenimientos</h1>
			
	    <div class="row">
	    	<div class="col-lg-4">	 
	      	
	    	</div>
	    		<div class="col-lg-4">
	    	<div  class="panel panel-default" style="filter:alpha(opacity=50); opacity:0.9;">
	    	
	    
	    	<form:form method="post" commandName="mantenimiento">
	    	<div>
					<form:label path="tipo">Tipo</form:label>
					<form:input path="tipo" cssClass="form-control"/>
					<form:errors path="tipo"></form:errors>
				</div>				
				<div>
					<form:label path="descripcion">Descripcion</form:label>
					<form:input path="descripcion" cssClass="form-control"/>
					<form:errors path="descripcion"></form:errors>
				</div>			
				<div>
					<form:label path="kmFrecuencia">Km Frecuncia</form:label>
					<form:input path="kmFrecuencia" cssClass="form-control"/>
					<form:errors path="kmFrecuencia"></form:errors>
				</div>		
				<br>
				<div>			
					<input type="submit" value="Guardar" class="btn btn-success" style="float: right;"/>
				</div>		
			</form:form>
	    	</div>
	    	</div>
	    	<div class="col-lg-4">
	    	
	    	</div>
	    	</div>
	    </div>	
	    
	    <style>
	    label{
	    color: black;
	    }</style>	
    </jsp:body>
</t:layout>