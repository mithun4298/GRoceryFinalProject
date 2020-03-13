<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Form</title>
<body>
 <style>
.center {
	margin: auto;
	width: 70%;
	padding: 10px;
}

p {
	font-size: 20px;
	padding: 15px;
}
</style>
</head>
<body style="background-color:lavender">
	<div class="center">
		<center>
			<h1>
				<i>Feedback Form</i>
			</h1>
		</center>
		<p>
			<b>We would love your feedback!</b>
		</p>
		<form:form method="POST" action="/feedback" modelAttribute="feedback">
			<table>
				<tr>
					<td><p>How was your experience?</p></td>

				</tr>
                   <tr><td><sf:radiobuttons path="radio" items = "${feedbackrad}"/></td>
                   <!-- <td></td>
                    <td></td>
                     <td></td>
                      <td></td> -->
                    
                   </tr>
				<tr>
					<td><sf:label path="textc">What would you like us to know?</sf:label></td>
				</tr>
				<tr>
					<td><sf:input path="textc" id="text" /></td>
				</tr>

				<tr>
					<td><sf:label path="Email">May we get in touch with you? If so, please provide your email</sf:label></td>
				</tr>
				<tr>
					<td><sf:input type="email" path="Email" id="Email"
							placeholder="Enter Email" /></td>
				</tr>

				<tr>
					<td><input type="submit" value="Submit" id="submit" /></td>

				</tr>
               
			</table>
    <p style = "color:green"> ${d} </p>

		</form:form>
	</div>
	
</body>
</html> --%>









<html>
<head>

<!-- for-mobile-apps -->


 

<!-- //for-mobile-apps -->

<link href="//fonts.googleapis.com/css?family=Josefin+Slab:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic" rel="stylesheet" type="text/css">

<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
</head>
<body style="">
<script async="" src="/js/autotrack.js"></script>

<meta name="robots" content="noindex">
<link rel="stylesheet" href="/images/demobar_w3_4thDec2019.css">
	<!-- Demo bar start -->
  

<div class="content">
	<h1>User Feedback </h1>
	<!---728x90--->

	<div class="main">
		<form:form  method="POST" action="/feedback"  modelAttribute = "feedback"> 
			
			<h5><sf:label path="textc">Email</sf:label></h5>
				<sf:input path="textc" id="text"   required="required" />
			<h5><sf:label path="Email">Your Review <span>( Tips and Guidelines ) </span> </sf:label></h5>	
			<sf:input path="Email" id="Email"   required="required" />
		
     <h5>Overall Experience</h5>
			 <div class="radio-btns">
				 <div class="swit">								
						<!-- <div class="check_box_one"> <div class="radio"> <label><input type="radio" name="radio" checked=""><i></i>Very Good</label> </div></div>
                        <div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Good</label> </div></div>
						<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Fair</label> </div></div>
						<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"><i></i>Poor</label> </div></div>
						<div class="clear"></div> -->
						
					
					 
              	<td><input type = "radio" name="radio"  path="radio" value = "Excellent" required = "required"/>Excellent
              		<input type = "radio"  name="radio"   path="radio" value = "Very Good" required = "required"/>Very Good
              		<input type = "radio" name="radio"  path="radio" value = "Good" required = "required"/>Good
              		<input type = "radio"  name="radio"   path="radio" value = "Bad" required = "required"/>Bad
              		
              		
              		</td>
					
			</div>
                       <%--   <sf:radiobuttons path="radio" items = "${feedbackrad}"/> --%>
                      <!-- <td><b>Gender</b></td>
                
              	<td><input type = "radio" name="radio"  path="radio" value = "Excellent" required = "required"/>Excellent
              		<input type = "radio"  name="radio"   path="radio" value = "Very Good" required = "required"/>Very Good</td> -->
              
              
               
                       
				<input type="submit" value="Submit" id="submit">
				
		</form:form>
		
	    <p style = "color:green"> ${d} </p>
	



</body>
</html>





































