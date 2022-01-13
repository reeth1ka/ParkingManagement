<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Parking Solutions</title>
<%@include file="all_components/all_css.jsp" %>
<style type="text/css">
.back-img{
background: url("img/indexpic.png");
width: 100%;
height: 100vh;
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body>
<%@include file="all_components/navbar.jsp" %>


<div class="container-fluid back-img">
<!-- <div class="text-center">
<h1 class="text-white p-4">
Parking Solutions</h1></div>  -->
</div>
<%@include file="all_components/footer.jsp" %>
</body>
</html>