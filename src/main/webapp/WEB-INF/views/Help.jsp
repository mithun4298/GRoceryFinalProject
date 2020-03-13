<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Help Page</title>
</head>
<body style="background-color:lavender">
<form:form  >
<center>
<h1><center>Welcome to the Help page</center></h1>
<p>Welcome to the help desk of the protal, we always love to have you here</p>
<p>This is the best online grocery store in india.</p>
<p>we provide all your daily grocery need with proper quality and authentic product</p>
<p>This section is highly dedicated to solve any type of technical issue reported by the customer</p>
<p><b>you can report the issue on the given email and given Phone number</b>
<p> Issue report:</p>
<input type="text" id="issue" path="Name" required placeholder="write issue">
<p>Issue Description</p>
<textarea id="issueDes" path="IssueDes"  required placeholder="Write Issue Description" row="20" cols="50"></textarea>
<br>
<br>
<input type="submit" id="sumitIssue" path="SubmitIssue" value="Send">
<br>
<table  cellspacing="10">

<tr>
<p><b>You can also be in touch with us on the given id's</b></p>
<td>Contact Number</td>
<td>Contact Email</td>
</tr>
<td><a href="tel:+4733378901">+47 333 78 901</a></td>
<td><a href="https://www.w3schools.com">BestGroceryShop@gmail.com</a></td>
</tr>
</table>
</center>
</form:form>
</body>
</html>
