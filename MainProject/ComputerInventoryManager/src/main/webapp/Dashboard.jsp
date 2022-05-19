<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
button {
	font-size: 40px;
	padding: 10px;
	border-radius: 10px;
	margin: 20px;
}

#container {
	text-align: center;
}
</style>
</head>
<body>
	<title>Inventory Management Application</title>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
</head>
<body>

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



			</ul>
		</nav>
	</header>
	<div class="container">
<div class="Index-Img = ">
		<img src = "Images/add_delete.png">
		</div>
		<form action="ProductServlet " method="post">
			<table>
				<tr>
					<td><a href="View-Products.jsp" style="color:#800080">View Products</a></td>
				</tr>
				<tr>
					<td><a href="addProduct.jsp" style="color:#800080">Add Products</a></td>
				</tr>
				<tr>
					<td><a href="edit.jsp" style="color:#800080">Edit Products</a></td>
				</tr>
				<tr>
					<td><a href="delete.jsp" style="color:#800080">Delete Products</a></td>
				</tr>
			</table>

		</form>
	</div>
</head>
<body>

</body>
</html>