
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
<title>Add Product Pannel</title>
</head>
<body  style="background-color: powderblue;">
<center><h1 style="font-size:300%;"><i>Grocery shopping and Delivery management</i></h1></center>
<center><h1 style="font-size:300%;"><i>Add Product Pannel</i></h1></center>


<center><form:form modelAttribute = "NewFile">


              <table>
              <tr>
              <td><sf:label path="itemName">Item Name</sf:label></td>
              <td><sf:input path="itemName"  required = "required"/></td>
             
              </tr>
            
              


              <tr>
              <td><sf:label path="itemType">Item Type</sf:label></td>
              <td><sf:input path="itemType" required = "required"/></td>
              
              </tr>
              
              <tr>
              <td><sf:label path="itemPrice">Item Price</sf:label></td>
              <td><sf:input path="itemPrice" required = "required"/></td>
              
              </tr>
               <tr>
              <td><sf:label path="itemDesc">Item Description </sf:label></td>
             <td><sf:textarea path="itemDesc" rows="5" cols="30" /></td>
              
              </tr>
               
              <tr>
                   <td><input type="submit" value="Submit" id="submit"
                        name="submit"></td>
                   
              </tr>
          </table>
     
</form:form></center>

</body>
</html>

