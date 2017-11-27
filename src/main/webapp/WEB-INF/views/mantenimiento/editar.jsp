<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:body>    
    <br><br>    
    <div class="container">	
		<form:form method="post" commandName="mantenimiento">
			<div>
				<form:label path="descripcion">descripcion</form:label>
				<form:input path="descripcion" cssClass="form-control"/>
				<form:errors path="descripcion"></form:errors>
			</div>			
			<div>
				<form:label path="kmFrecuencia">Km Frecuencia</form:label>
				<form:input path="kmFrecuencia" cssClass="form-control"/>
				<form:errors path="kmFrecuencia"></form:errors>
			</div>		
			<br>
			<div>
				<input type="submit" value="Guardar" class="btn btn-success" style="float: right;"/>
			</div>		
		</form:form>
		</div>	
    </jsp:body>
</t:layout>