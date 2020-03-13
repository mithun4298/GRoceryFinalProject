
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Add Product Pannel</title>
</head>
<body  style="background-color: #17a2b8;">
<center><h1 style="font-size:300%;"><i>Grocery shopping and Delivery management</i></h1></center>
<center><h1 style="font-size:300%;"><i>Add Product Pannel</i></h1></center>


<form:form class="form-horizontal" method="POST" action="addproduct" modelAttribute="addproduct">


<!-- Form Name -->
<div class="form-group">
  <sf:label path="itemType" class="col-md-4 control-label" for="product_id">PRODUCT TYPE</sf:label>  
  <div class="col-md-4">
  <form:select path = "itemType" id="product_id" name="product_id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${itemList}" />
                      </form:select>
  </div>
  
  
 
  
</div>
<!-- Text input-->
<div class="form-group">
  <sf:label path="itemId" class="col-md-4 control-label" for="product_id">PRODUCT ID</sf:label>  
  <div class="col-md-4">
  <sf:input path="itemId"   required = "required" placeholder="PRODUCT ID" class="form-control input-md" type="text"/>
    <p style = "color:red"> ${itemId}</p>
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <sf:label path="itemName" class="col-md-4 control-label" for="product_name">PRODUCT NAME</sf:label>  
  <div class="col-md-4">
  <sf:input path="itemName"  required = "required"  id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" type="text" />
    <p style = "color:red"> ${itemName}</p>
  </div>
</div>


<div class="form-group">
  <sf:label path="itemPrice" class="col-md-4 control-label" for="product_id">PRODUCT PRICE</sf:label>  
  <div class="col-md-4">
  <sf:input path="itemPrice" id="product_id" name="product_id" placeholder="PRODUCT ID" class="form-control input-md" type="text"/>
    <p style = "color:red"> ${itemPrice}</p>
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <sf:label path="itemDesc" class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION</sf:label>  
  <div class="col-md-4">
  <sf:input path="itemDesc" id="product_name_fr" name="product_name_fr" placeholder="PRODUCT DESCRIPTION FR" class="form-control input-md" type="text"/>
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">ADD</button>
  </div>
  </div>

</form:form>


</body>
</html>

<!------ Include the above r HEAD tag ---------->



