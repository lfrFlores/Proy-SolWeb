<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:body>
    <div class="container">	
				<br><br>
				
			
	    <div class="row">
	    	<div class="col-lg-1">		      	
	    	</div>
	    		<div class="col-lg-10">
	    		<h1>Control de Mantenimientos</h1>
	    	<div  class="panel panel-default" style="filter:alpha(opacity=50); opacity:0.9;">	    	
	    
	    	<form:form method="post" commandName="mantenimiento">
	    	<br>
	    	
	    	<div class="row">
		    	<div class="col-lg-1">
		    	</div>
	    		<div class="col-lg-5">
	    		<div>
					<form:label path="tipo">Tipo</form:label>
					<form:input path="tipo" cssClass="form-control"/>
					<form:errors path="tipo"></form:errors>
				</div>
	    		</div>
	    		<div class="col-lg-5">
	    		<div>
					<form:label path="kmFrecuencia">Km Frecuncia</form:label>
					<form:input path="kmFrecuencia" cssClass="form-control"/>
					<form:errors path="kmFrecuencia"></form:errors>
				</div>	
	    		</div>
	    	
	    	</div>
	    	
	    	<div class="row">
	    	<div class="col-lg-1">
		    	</div>
	    		<div class="col-lg-10">
	    		<div>
				<form:label path="descripcion">Descripcion</form:label>		
				<br>		
				<form:textarea path="descripcion" rows="4" cols="108"/>				
					<form:errors path="descripcion"></form:errors>
				</div>
				
				<%-- <div>
					<form:label path="descripcion">Descripcion</form:label>
					<form:input path="descripcion" cssClass="form-control"/>
					<form:errors path="descripcion"></form:errors>
				</div> --%>	
	    		</div>
	    	
	    		
	    	</div>
	    				
				<br>
				<div class="row">
			<div class="col-lg-8">
			</div>
			<div class="col-lg-2">
				<div align = "right">			     
				<a href="<c:url value="/mantenimiento"/>"class="btn btn-info btn-lg">Cancelar </a>
				</div>
				</div>
			<div class="col-lg-2">
			<div >			     
									    		        	
				<input type="submit" value="Guardar" class="btn btn-success  btn-lg"/>
			</div>	
			</div>
			
			
			</div>	
			<br>
			</form:form>
	    	</div>
	    	</div>
	    	<div class="col-lg-1">		      	
	    	</div>
	    	</div>
	    </div>	
	    
	    <style>
	    label, textarea{
	    color: black;
	    }
	    </style>	
    </jsp:body>
</t:layout>