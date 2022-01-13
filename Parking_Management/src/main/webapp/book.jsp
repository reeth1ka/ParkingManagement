<%@page import="com.entity.worker"%>
<%@page import="com.entity.user"%>
<%@page import="com.entity.hours"%>
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
<title>User: Booking</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1;">
<%@include file="all_components/navbar.jsp" %>
<div class = "container">
<div class = "row">
<div class = "col-md-12">


<% int hrs = Integer.parseInt(request.getParameter("hrs"));
hours h = new hours(hrs); 
 int price = h.getPrice(hrs); %>
 <% 
 String category = request.getParameter("category");
PSDAO dao=new PSDAO(DBConnect.getConn());
worker w = dao.getWkrByCat(category);
%>
<div class = "card mt-5">
<div class="card-body">
<div class ="text-center text-primary">

<!-- <i class="far fa-clipboard fa-2x"></i> --> </div>
<form action="confirm_booking" method="post">
<div class="form-col">
<div class="form-group col-md-3">  
<h7>Worker Name: <%= w.getName() %></h7>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Rating: <%=w.getRating() %>" readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Category: <%= w.getCategory() %>" readonly>
       
      </div>
   <div class="form-group col-md-3">
<h7>Number of hours: <%= hrs %></h7>
      </div> 
      <h6>Id: ${userobj.id } </h6>
 <label>Enter Id:</label> <input type= "text" name="id"  class= "form-control">
 <label>Enter Mobile Number:</label> <input type= "text" name="number"  class= "form-control">
    <b> <h6> Total Price: <%= price %> </h6> </b> 
    <label>Enter Total Price:</label> <input type= "text" name="price"  class= "form-control"> 
    <br>
  <button class="btn btn-sm bg-success text-white">Confirm Booking</button>     



</div>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>