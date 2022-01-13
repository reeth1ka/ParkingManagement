<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="all_css.jsp" %>

</head>
<body style="background-color:#CCD1D1; ">
<%@include file="navbar.jsp" %>
<div class="container-fluid">
<div class="row p-5">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<div class="text-center">
<i class = "fa fa-user-plus fa-2x" aria-hidden="true"></i>
<h5>Login</h5>
</div>

<form action="login" method = "post">

<div class ="form-group">
<label>Enter Email</label>
<input type="email" required="required" class="form-control" name="email">
</div>
<div class="form-group">
<label>Enter Password</label><input required = "required" type="password" class="form-control" name="password">


</div>
<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>