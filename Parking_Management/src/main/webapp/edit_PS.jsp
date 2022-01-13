<%@page import="com.entity.PS"%>
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
<title>Edit Parking Spots</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1;">
<c:if test="${userobj.role ne 'admin'}">
<c:redirect url="login.jsp"></c:redirect>
</c:if> 
<%@include file="all_components/navbar.jsp" %>
<div class= "container p-2">
<div class= "col-md-10 offset-md-1">
<div class= "card">
<div class= "card-body">
<div class="text-center text-success">
  <%-- <i class="fas fa-user-friends fa-3x"></i>--%>
 <c:if test="${not empty succMsg}">
 <div class="alert alert-success" role="alert">${  succMsg}
</div>
<c:remove var="succMsg" />
</c:if>
<% int id= Integer.parseInt(request.getParameter("id"));
PSDAO dao =new PSDAO(DBConnect.getConn());
 PS p = dao.getPSById(id);
 %>

<h5>Edit Parking Spots</h5>
 </div>

<form action= "update" method="post">
<input type="hidden" value="<%=p.getId() %>" name="id">

<div class= "form-group">

<label>Enter Place</label> <input type= "text" name="place"  class= "form-control" value="<%=p.getPlace() %>">

</div>
<div class= "form-group">

<label>Location</label> <input type= "text" name="location"  class= "form-control" value="<%= p.getLocation()%>">

</div>

 <div class="form-group col-md-4">

<label>Category</label><select name="category" class= "custom-select" id="inlineFormCustomSelectPref">
<option value="<%=p.getCategory()%>"><%=p.getCategory()%></option>
<option value="Two-wheeler">Two-wheeler</option>
<option value="Four-wheeler">Four-wheeler</option>

</select>

</div>

<div class="form-group col-md-4">

<label>Status</label><select name="status" class= "form-control" >

<option class="Active" value="<%=p.getStatus()%>"><%=p.getStatus() %></option>
<option class="Active" value="Active">Active</option>

<option class="Inactive" value="Inactive">Inactive</option></select>
</div>
 <button class="btn btn-success">Update Parking Spot</button>
           </form>
           </div>
 </div>
 </div>
 </div>

</body>
</html>