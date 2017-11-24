<%@tag description="Página Layout" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Título</title>	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div id="pageheader">
			<center><h1>Sistema de Control de Vehiculos</h1> </center>
			<h2><jsp:invoke fragment="header"/></h2>		
		</div>
		
		<div id="body">
		  <jsp:doBody/>
		</div>
		
		<div id="pagefooter" style="text-align:center">
			<hr>
		    <p id="copyright">Copyright 2017</p>
		  <jsp:invoke fragment="footer"/>
		</div>
	</div>
</body>
</html>