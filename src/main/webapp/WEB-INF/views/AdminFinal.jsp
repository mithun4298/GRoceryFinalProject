
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Pannel</title>
</head>
<body style="background-color: #17a2b8;">
	<center>
		<h1 style="font-size: 300%;">
			<i>Grocery shopping and Delivery management</i>
		</h1>
	</center>
	<center>
		<h1 style="font-size: 300%;">
			<i>Admin Panel</i>
		</h1>
	</center>


	<center>
		<form:form method="POST" action="" modelAttribute="">

			<table>
				<tr>
					<td>Add Product</td>
					<td><button>
							<a href="addproduct">Add</a>
						</button></td>
				</tr>

				<tr>
					<td>Order Details</td>
					<td>
						<button>
							<a href="/AdminOrder"> Order Details</a>
						</button>
					</td>
				</tr>

				<tr>
					<td>Add Delivery Agent</td>
					<td><button>
							<a href="/Delivery">Add</a>
						</button></td>
				</tr>

				<tr>

					<td><button>
							<a href="/home">Logout</a>
						</button></td>
				</tr>

			</table>

		</form:form>
	</center>

</body>
</html>