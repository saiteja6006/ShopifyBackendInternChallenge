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
         <a class="nav-link active" href="AboutUs">About Us</a>
        </li>
         
				
			    
		
		</nav>
	</header>
	



  <form action="ProductServlet" method="post">
    <h1 align="center">Add Product</h1>
    <h1>
      <a href="View-Products.jsp">List Products</a>
    </h1>
    <table border="1" align="center" cellpadding="5"
      style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
      <tr>
        <td>id</td>
        <td><input type="text" name="id"></td>
      </tr>
      <tr>
        <td>Product</td>
        <td><input type="text" name="product"></td>
      </tr>
      <tr>
        <td>NoOfUnits</td>
        <td><input type="text" name="noOfUnits"></td>
      </tr>

        <td></td>
        <td><input type="submit" name="Action" value="Add Product"></td>
      </tr>
    </table>
  </form>
</body>
</html>