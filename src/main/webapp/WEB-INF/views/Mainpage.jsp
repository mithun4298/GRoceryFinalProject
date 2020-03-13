<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body style="background-color: lavender">
	<h1>
		<center>Product Details</center>
	</h1>
	<center>
		
			<table border="1">
			<tr><td>Product Name</td>
			<td>price</td>
			<td>Description</td>
					<td>Add to Cart</td>
			</tr>
				<tr>
              	<td> ${name}</td>
              	<td><p> Rs: ${price} </p></td>
              	<td><p>  ${desc} </p></td>
              	<td> <button name ="biscuit">Add</button></td>
              
              </tr>
              <tr>
              	<td> ${iname}</td>
              	<td><p>Rs: ${iprice} </p></td>
              	<td><p> ${idesc} </p></td>
              	<td> <button name ="kurkure">Add</button></td>
              </tr>
			</table>

	</center>


</body>
</html>
		