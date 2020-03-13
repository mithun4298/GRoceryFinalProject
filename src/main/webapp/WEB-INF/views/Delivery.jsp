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
<title>Agent Details</title>
</head>
<body style="background-color: lavender">
	<h1>
		<center>Add Delivery Agent</center>
	</h1>
<center><form:form method= "POST" action="delfinal" modelAttribute="delivery">

<table>
<tr> 
<td> <sf:label for="fName" path="fName" >First Name</sf:label></td>
                  
       <td> <sf:input type="text" path="fName" id="fName" placeholder="First Name" required="required"  /></td></tr>
               

<tr>
               <td>  <sf:label for="lName" path="lName" >Last Name</sf:label></td>
                

                       <td> <sf:input type="text" id="lName" path="lName" placeholder="Last Name"  required="required"  /></td></tr>
              

<tr>

                  <td>  <sf:label for="mobNumber" path="mobNumber" >Phone number </sf:label></td>
                 

                       <td> <sf:input type="tel" id="mobNumber" path="mobNumber" placeholder="Contact number"  required="required" /></td></tr>
                       
                  <tr>
                   <td>  <sf:label for="email" path="email" >Email* </sf:label></td>
                <td> <sf:input type="email" id="email" path="email"  placeholder="Email"  name= "email" required="required"  /></td></tr>
         <tr>
                   <td><input type="submit" value="Submit" id="submit"
                        name="submit"></td>
                   
              </tr>

</table>
<h2 style = "color:green">${key} </h2>

</form:form></center>

</body>
