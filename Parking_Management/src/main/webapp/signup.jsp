<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign-up</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1; ">
<%@include file="all_components/navbar.jsp" %>
<div class="container-fluid">
<div class="row p-4">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<div class="text-center">
<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
<h5>Registration</h5>
<c:if test="${not empty errReg}">
 <div class="alert alert-success" role="alert">${  errReg}
</div>
<c:remove var="errReg" />
</c:if>
</div>
<form action="signupServlet" method="post">
<div class="form-group">
<label>First Name</label> <input type="text" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name">
</div>
<div class="form-group">
<label>Last Name</label> <input type="text" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="lastname">
</div>
<div class="form-group">
<label>Username</label> <input type="text" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username">
</div>
<div class="form-group">
<label>Car Registration number</label> <input type="text" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="carregno">
</div>
<div class="form-group">
<label>Mobile number</label> <input type="text" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="mobileno">
</div>
<div class="form-group">
<label>Email</label> <input type="email" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
</div>
<div class="form-group">
<label for="exampleInputPassword1">Password</label> <input type="password" required="required" class="form-control" id="exampleInputPassword1"  name="password">
</div>
<!-- <div class="form-group">
<label for="exampleInputPassword1">Current Password</label> <input type="currpassword" required="required" class="form-control" id="exampleInputPassword1"  name="password">
</div> -->
<div class="form-group">
<label>Address</label> <input type="text" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="address">
</div>
<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
</form>
</body>
</div>
</div>
</div>
</div>
</div>
</html>