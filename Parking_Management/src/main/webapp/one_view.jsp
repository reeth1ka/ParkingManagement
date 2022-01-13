<%@page import="com.entity.PS"%>
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
<title>User: Parking Spot</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1;">
<%@include file="all_components/navbar.jsp" %>
<div class = "container">
<div class = "row">
<div class = "col-md-12">
<% int id=Integer.parseInt(request.getParameter("id"));
   PSDAO dao=new PSDAO(DBConnect.getConn());
   PS p = dao.getPSById(id);   %>
   <div class = "card mt-5">
<div class="card-body">
<div class ="text-center text-primary">
<i class="far fa-clipboard fa-2x"></i></div>
<h6><%= p.getPlace() %></h6>
<br>
<div class="form-row">
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Location: <%=p.getLocation() %>" readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Category: <%=p.getCategory() %>" readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Status: <%=p.getStatus() %>" readonly>
</div>
</div>
<h6>Publish date: <%=p.getPdate() %></h6>
 </div>
 </div>
 </div>
 </div>
 </div>

 <!-- <div class="form-group col-md-4">
<div class = "card mt-5">
<div class="card-body">
<div class ="text-center text-primary"> -->
<div class= "container p-2">
<div class= "col-md-10 offset-md-1">
<div class= "card mt-2">
<div class= "card-body">
<form action="book.jsp" method="get">
<div class= "form-group">
<label>Additional Services</label><select name="category" class= "custom-select" id="inlineFormCustomSelectPref">
<option selected>None</option>
<option value="dry cleaning">dry cleaning</option>
<option value="car washing">car washing</option>
<option value="repair checks">repair checks</option>
</select>
</div>
<div class= "form-group">
<label>Number of Parking hours</label><select name="hrs" class= "custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
</div>
<button class="btn btn-success">Select</button>
</form>
</div>
</div>
</div>
</div>
<div align="center">
 <div class = "container offset-md-3">
<div class = "row">
<div class = "col-md-7">
<div class = "card mt-2">
<div class="card-body">
<div class ="text-center text-primary">
 <i class="far fa-clipboard fa-2x"></i></div>
 <h6>Price:</h6>
 <h8>1 hour parking: Rs. 25</h8><br>
 <h8>Car Washing, Dry cleaning, Repair Checks: Rs. 10</h8>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
</body>
</html>