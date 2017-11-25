<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>

<t:layout>
    <jsp:body>
		<form:form method="post" commandName="mantenimiento">			
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
			
			<div>			
				<input type="submit" value="Guardar" class="btn btn-success"/>
			</div>		
		</form:form>
    </jsp:body>
</t:layout>