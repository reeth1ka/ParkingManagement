<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User: Parking Request</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1;">
<%@include file="all_components/navbar.jsp" %>
<div class= "container p-2">
<div class= "col-md-10 offset-md-1">
<div class= "card">
<div class= "card-body">
<div class="text-center text-success">
   <i class="fas fa-user-friends fa-3x"></i>

<%--  <c:if test="${not empty succMsg}">
 <div class="alert alert-success" role="alert">${  succMsg}
</div>
<c:remove var="succMsg" />
</c:if> --%>

<h5>Raise Parking Request</h5>
 </div>
<form action= "parking_request" method="post">

<div class= "form-group">

<label>Enter Place</label> <input type= "text" name="place"  class= "form-control">

</div>
<div class= "form-group">

<label>Check-in time</label> <input type= "text" name="checkin_time"  class= "form-control">

</div>
<div class= "form-group">

<label>Number of hours</label> <input type= "text" name="hours"  class= "form-control">

</div>
<div class="form-group col-md-4">

<label>Category</label><select name="category" class= "custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose</option>
<option value="Two-wheeler">Two-wheeler</option>
<option value="Four-wheeler">Four-wheeler</option>

</select>

</div>
<button class="btn btn-success">Raise Request</button>
           </form>
           </div>
 </div>
 </div>
 </div>

</body>
</html>