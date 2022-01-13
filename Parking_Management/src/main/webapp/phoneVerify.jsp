<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Phone Verification</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1; ">
<%@include file="all_components/navbar.jsp" %>
<%
String status =(String)request.getAttribute("status");
if(status != null){
	out.println(status);
}
%>
<div class= "container p-2">
<div class= "col-md-10 offset-md-1">
<div class= "card">
<div class= "card-body">
<div class="text-center text-success">
<!-- <div align="center"> -->

<h2>Mobile Number Verification</h2>

<h5 style="color:black">We have sent an OTP to your mobile.</h5>

<form  action="otpServlet" method="post">
<div class="form-group">
<input type="hidden" name="action" value="phone" class = "form-control">

<p>Enter OTP: </p>
<input type="text" id="otpid" name="otpid" placeholder="Enter OTP" required="required" pattern="[0-9]{6}" class="form-control">
<span  id="otpError" style="color:red">*</span>

<br><br>
<input type="submit" class="btn btn-success" value="verify">
</div>
</form>
</div>
</div>
</div>
</div>
</div>
<!-- </div> -->
</body>
</html>