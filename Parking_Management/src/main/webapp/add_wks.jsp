<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Add Workers</title>
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

 <c:if test="${not empty workerAddedmsg}">
 <div class="alert alert-success" role="alert">${  workerAddedmsg}
</div>
<c:remove var="workerAddedmsg" />
</c:if>

<h5>Add Workers</h5>
 </div>

<form action= "add_wks" method="post">

<div class= "form-group">

<label>Enter Name</label> <input type= "text" name="name"  class= "form-control">

</div>
<div class= "form-group">

<label>Worker Rating</label> <input type= "text" name="rating"  class= "form-control">

</div>

 <div class="form-group col-md-4">

<label>Category</label><select name="category" class= "custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose</option>
<option value="dry cleaning">dry cleaning</option>
<option value="car washing">car washing</option>
<option value="repair checks">repair checks</option>

</select>

</div>

<div class="form-group col-md-4">

<!-- <label>Status</label><select name="status" class= "form-control" >

<option class="Active" value="Active">Active</option>

<option class="Inactive" value="Inactive">Inactive</option></select> -->
</div>
 <button class="btn btn-success">Add worker</button>
           </form>
           </div>
 </div>
 </div>
 </div>

</body>
</html>