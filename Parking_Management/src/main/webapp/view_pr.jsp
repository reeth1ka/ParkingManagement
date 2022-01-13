<%@page import="com.entity.parking_req"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.PSDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: View Parking Requests</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1;">

<%@include file="all_components/navbar.jsp" %>
<div class = "container">
<div class = "row">
<div class = "col-md-12">
<h5 class="text-center text-primary">Parking Requests</h5>
<%-- <c:if test="${not empty succMsg}">
 <div class="alert alert-success" role="alert">${  succMsg}
</div>
<c:remove var="succMsg" />
</c:if> --%>
<% PSDAO dao=new PSDAO(DBConnect.getConn());
   List<parking_req> list = dao.getAllPR();
   for(parking_req pr:list){%>
	   <div class = "card mt-2">
<div class="card-body">
<div class ="text-center text-primary">
<i class="far fa-clipboard fa-2x"></i></div>


<h6><%=pr.getPlace() %></h6>
<br>
<div class="form-row">
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Check-in time:<%=pr.getCheckintime()  %>" readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Hours:<%=pr.getHours() %>" readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Category:<%=pr.getCategory() %>" readonly>
</div>
</div>
<div class="text-center">
</div>
</div>
</div>
  <%}
%>

</div>
</div>
</div>
</body>
</html>