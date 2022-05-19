<%@page import="InventoryManager.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<html>
<head>
<title>Inventory Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<form action="ProductServlet" method="post">
		<header>
			<nav class="navbar navbar-expand-md navbar-dark"
				style="background-color: #4c3c3c">
				<div>
					<a href="index.jsp" class="navbar-brand"> Inventory Manager </a>
				</div>

				<li class="navbar-nav"><a class="nav-link active"
					aria-current="page" href="Dashboard.jsp">Dashboard</a></li>
				<li class="navbar-nav"><a class="nav-link active"
					" aria-current="page" href="Sales.jsp">Sales</a></li>
				<li class="navbar-nav"><a class="nav-link active"
					href="AboutUs.jsp">About Us</a></li>
			</nav>
		</header>
		<div class="Index-Img = ">
		<img src = "Images/indeximg.jpg" width = 1000 height = 500>
		</div>
		<div class="Info">
		   <H1> Welcome to Computer Parts Inventory Management</H1></div>


	</form>
</body>
</html>
