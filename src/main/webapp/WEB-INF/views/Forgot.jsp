<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
  margin: 0;
  padding: 0;
  background-color: #17a2b8;
  height: 100vh;
}
/* #login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
} */

*[role="form"] {
    max-width: 451px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}
</style>

</head>
<body style="background-color:#17a2b8">
<div id="login">
        <h3 class="text-center text-white pt-5">Grocery Shopping</h3>
        
        <div class="container">
            <div id="login-row"  class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12" role="form">
                        <form:form id="login-form"  class="form"  method="POST" action="/forgg" modelAttribute="forgot">
                            <h3 class="text-center text-info">Forget Password</h3>
                            <div class="form-group">
                            
                                <sf:label for="username" class="text-info" path="userId" >User Email:</sf:label><br>
                                <div><sf:input type="text" name="username" path="userId" id="username" class="form-control" />
                                </div>
                              
                            </div>
                            <div class="form-group">
                                <sf:label for="password" path="dob" class="text-info">Date Of Birth:</sf:label><br>
                                <div> <sf:input type="date" path="dob" name="password" id="password" class="form-control" /></div>
                               
                              
                            </div>
                             <div class="form-group">
                                <sf:label for="contact" path="contact" class="text-info">Contact:</sf:label><br>
                                <div> <sf:input type="text" path="contact" name="contact" id="contact" class="form-control" /></div>
                               
                              
                            </div>
                             <div class="form-group">
                                <sf:label path="Pass" class="text-info">New Password:</sf:label><br>
                                <div> <sf:input type="text" path="Pass" class="form-control" /></div>
                               
            
                            </div>
                            <div class="form-group">
        
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                                <div><a href = "${login}">${logindata} </a></div>
                            <p style = "color:red">${invalid}</p>
                            <p style = "color:green">${inval}</p>
                            </div>
                        
                            </div>
                             
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
