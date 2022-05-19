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
        
				
			    
		
		</nav>
	</header>
	

  <h1>Delete Product</h1>
  <h1>
    <a href="View-Products.jsp">List Products</a>
  </h1>

  <form action="ProductServlet" method="post">
    Enter ID<input type="text" name="id"> <input type="submit"
      value="Delete" name="Action" onclick="return confirm('Are you sure you want to delete?')">
  </form>
</body>
</html>