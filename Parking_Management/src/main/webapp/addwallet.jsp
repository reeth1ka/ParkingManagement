<%@page import="com.entity.user"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.PSDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Wallet</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1;">
<%@include file="all_components/navbar.jsp" %>
<div class= "container p-2">
<div class= "col-md-10 offset-md-1">
<div class= "card">
<div class= "card-body">
<div class="text-center text-success">
<c:if test="${not empty succMsg}">
 <div class="alert alert-success" role="alert">${  succMsg}
</div>
<c:remove var="succMsg" />
</c:if>
<h5>Wallet</h5>
 </div>
 <form action="add_wallet" method="post">
<div class= "form-group">
<h6>Id: ${userobj.id } </h6>
 <label>Id</label> <input type= "text" name="id"  class= "form-control">


<label>Add money</label> <input type= "text" name="wallet"  class= "form-control"> 

</div>
<div class="text-center">
<button class="btn btn-sm bg-success text-white">Add</button>

</div>
</form>
</div>

     </div>    
    </div>       
</div>      
          
</body>
</html>