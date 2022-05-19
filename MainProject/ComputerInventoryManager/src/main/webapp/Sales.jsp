<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="InventoryManager.DBConnection"%> 
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <html>
<head>
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
            
			<li class="navbar-nav">
          <a class="nav-link active" aria-current="page" href="Dashboard.jsp">Dashboard</a>
        </li>
        <li class="navbar-nav">
          <a class="nav-link active" " aria-current="page" href="Sales.jsp">Sales</a>
        </li>
        <li class="navbar-nav">
         <a class="nav-link active" href="AboutUs.jsp">About Us</a>
        </li>
        >		
		</nav>
	</header>
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Products</h3>
			<hr>
			<div class="container text-left">
				</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Products</th>
						<th>SalesPercentage</th>
						
					</tr>
				</thead>
				<tbody>
						<%
						Connection con = DBConnection.getConn();
						Statement statement = con.createStatement();
						ResultSet resultSet = statement.executeQuery("Select * from salesreport");
						while (resultSet.next()) {
						%>
						<tr>
							<td>
								<%
								out.print(resultSet.getInt(1));
								%>
							</td>
							<td>
								<%
								out.print(resultSet.getString(2));
								%>
							</td>
							<td>
								<%
								out.print(resultSet.getInt(3)+"%");
								%>
							</td>
						</tr>
						
						<%
						}
						%>
					</tbody>

			</table>
		</div>
	</div>
	
</body>
</html>