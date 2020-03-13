<%@include file="taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <!-- Access the bootstrap Css like this, 
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>
  
  body{
  background-image: url('http://www.pngplay.com/wp-content/uploads/1/Cart-PNG-HD-Free-Image.png');
  }
  
  
  </style>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Grocery Shopping</a>
    </div>
    <div class="navbar-header">
      <a class="navbar-brand" href="/cart">Cart</a>
    </div>
  <ul class="nav navbar-nav">
      <li class="active"><a href="/home">Home</a></li>
    </ul> 
  
     <div class="navbar-header">
      <a class="navbar-brand" href="/Help">Help</a>
    </div>
     <div class="navbar-header">
      <a class="navbar-brand" href="/Feedback">Feedback</a>
    </div>
     <div class="navbar-header">
      <a class="navbar-brand" href="/logout">Logout</a>
    </div>
  </div>
</nav>
<div class="container">
  	<h1>
		<center>Welcome to Grocery Shopping</center>
	</h1>

  <table class="table">
    <thead class="thead-dark">
      	<tr>
					<th>Product Name</th>
					<th>Product Type</th>
					<th>Product Price</th>
					<th>Product Desc</th>
					<th></th>
				</tr>
    </thead>
    <tbody>
     <c:forEach var="productlist" items="${menuList}">
				
				<tr class="success">
					<td>${productlist.itemName}</td>
					<td>${productlist.itemType}</td>
					<td>${productlist.itemPrice}</td>
					<td>${productlist.itemDesc}</td>
					<td><a href="/cart/add?id=${productlist.itemId}">Add to
							Cart</a></td>
					
				</tr>


			</c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
