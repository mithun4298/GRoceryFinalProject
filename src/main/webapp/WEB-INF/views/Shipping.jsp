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
<title>User Details</title>
</head>
<body style="background-color:lavender">


<center><h1><b><i>Shipping Details</i></b></h1></center>

<center><form:form method="POST" action="/ship"  modelAttribute="Shipping">

<table>
<tr> 
<td> <sf:label for="firstName" path="firstName" >First Name</sf:label></td>
                  
       <td> <sf:input type="text" path="firstName" id="firstName" placeholder="First Name" required="required"  /></td></tr>
               

<tr>
               <td>  <sf:label for="lastName" path="lastName" >Last Name</sf:label></td>
                

                       <td> <sf:input type="text" id="lastName" path="lastName" placeholder="Last Name"  required="required"  /></td></tr>
              

<tr>

                  <td>  <sf:label for="phoneNumber" path="Contact" >Phone number </sf:label></td>
                 

                       <td> <sf:input type="phoneNumber" id="phoneNumber" path="Contact" placeholder="Phone number"  required="required" /></td></tr>
                       
                  <tr>
                   <td>  <sf:label for="email" path="Email" >Email* </sf:label></td>
                <td> <sf:input type="email" id="email" path="Email"  placeholder="Email"  name= "email" required="required"  /></td></tr>
                 




  <tr>
              <td><sf:label path="house_no">House No.</sf:label></td>
              <td><sf:input path="house_no" id="house_no" placeholder="house_no" required = "required"/></td>
              
              </tr><tr>
              <td><sf:label path="street">Street</sf:label></td>
              <td><sf:input path="street" id="street" placeholder="street"  required = "required"/></td>
              
              </tr>
             <tr>
              <td><sf:label path="city">City</sf:label></td>
              <td><sf:input type = "text" path="city" id="city" placeholder = "city"  required = "required"/></td>
              
              </tr>
     
         
              
              <tr>
                   <td><sf:label path="state">State</sf:label></td>
                   <td><sf:input type = "text" path ="state" id="state" placeholder = "state"  required = "required"/></td>
              </tr>
              <tr>
                   <td><sf:label path="zip">Zip</sf:label></td>
                   <td><sf:input type = "number"  path ="zip" id="zip" placeholder="zip"  required = "required"/></td>
              </tr>
              <tr>
              <td><sf:label path="country">Country</sf:label></td>
              <td><sf:input type = "text" path="country" id="country" placeholder="Country" required = "required"/></td>
              
              </tr> 
              
              <tr>
                   <td><input type="submit" value="Submit" id="submit"
                        name="submit"></td>
                   
              </tr>

</table>

</form:form>
<h2 style = "color:green"> ${detail} </h2>
<h2 style = "color:green"><a href=" ${nexttime}" >${next}</a></h2>

</center>
</body>
</html>
