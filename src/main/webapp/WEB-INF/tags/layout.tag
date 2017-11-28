<%@tag description="Página Layout" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 


	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Título</title>	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    
    
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <link href="<c:url value="/resources/styles/styles.css" />" rel="stylesheet"/>
   <script src="<c:url value="/resources/js/jquery-latest.min.js" />"></script>
   <title>CSS MenuMaker</title>
   
   <!-- PLANTILLA -->
   
   
   <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,700,300' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville|Roboto" rel="stylesheet">
    <meta name="viewport" content="width=device-width, maximum-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link href="<c:url value="/resources/static/css/normalize.css" />" rel="stylesheet"/>
   <link href="<c:url value="/resources/static/css/estilos.css" />" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

	<link href="<c:url value="/resources/static/images/logo-black.jpeg" />" rel="stylesheet"/>
   	<meta name="theme-color" content="#0000FF"/>
    <meta name="description" content="Sagitario">

  <style>
body {
   background-color: black;
}
.modal-footer {
      background-color: #f9f9f9;
  }
  
  .modal-header, h4, .close {
      background-color: #FE0000;
      color:white !important;
      text-align: center;
  }

</style>




</head>
<body>
	<nav class="MainMenu">
        <ul class="MainMenu-list">
          <li class="MainMenu-item">
            <a class="MainMenu-link is-selected" href="http://localhost:8080/sagitario/">Casa</a>
          </li>
          <li class="MainMenu-item">
            <a class="MainMenu-link" href="http://localhost:8080/sagitario/vehiculo">Vehículos</a>
          </li>
          <li class="MainMenu-logo">
            <a href="http://localhost:8080/sagitario/">
            
       <img src="<c:url value="/resources/static/images/sol-quintero-logo-white.png" />"alt="Sol Quintero - Estratega digital logo"/>
            
            </a>
          </li>
          <li class="MainMenu-item">
            <a class="MainMenu-link" href="http://localhost:8080/sagitario/mantenimiento">Mantenimientos</a>
          </li>
          <li class="MainMenu-item">
            <a class="MainMenu-link contact-button" data-type="header" href="mailto:administracion@transportessagitario.com">Contacto</a>
          </li>
        </ul>
      </nav>
      
      <section class="WorkSection" id="estratega-digital">
      <div class="overlay">
      <br><br>
	
		<div id="pageheader">
			<h2><jsp:invoke fragment="header"/></h2>		
		</div>
		
		<div id="body">
					<div class="container">
			
			<!--   <button type="button" class="btn btn-default" data-dismiss="modal">Done</button>
			
			<button type="button" class="btn btn-danger danger" data-dismiss="modal">Action</button>
			   -->
			  
			
			  
			</div>
		  <jsp:doBody/>
		</div>
		
		</div>
       <img src="<c:url value="/resources/static/images/estratega-digital.jpg" />"alt="Estratega Digital"/>
    
    </section>
		<!--
		<div id="pagefooter" style="text-align:center">
			<hr>
		    <p id="copyright">Copyright 2017</p>
		  <jsp:invoke fragment="footer"/>
		</div>-->

</body>
</html>