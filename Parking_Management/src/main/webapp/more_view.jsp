<%@page import="com.entity.PS"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<title>User: View Parking Spots</title>
<%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color:#CCD1D1;">
<%@include file="all_components/navbar.jsp" %>
<div class = "container">
<div class = "row">
<div class = "col-md-12">
<h5 class="text-center text-primary">All Spots</h5>
<%
 String place = request.getParameter("place");
String cat = request.getParameter("cat");
String msg ="";
PSDAO dao = new PSDAO(DBConnect.getConn());
List<PS> list = null;
if("place".equals(place) && "category".equals(cat)){
	list = new ArrayList<PS>();
	msg = "Parking Spot not Available";
}else {
         list = dao.getPSAndPlaceAndCat(place, cat);
}
if(list.isEmpty()){%>
<h4 class="text-center text-danger">Parking Spot not Available</h4>
<%} 
if(list != null) {for(PS p: list){%>
	<div class="card mt-2">
	<div class="card-body">
	<div class="text-center text-primary">
	<i class="far fa-clipboard fa-2x"></i></div>
	<h6><%= p.getPlace()  %></h6>
	<div class="form-row">
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Location:<%=p.getLocation() %>" readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Category:<%=p.getCategory() %>" readonly>
</div>
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm"
       value="Status:<%=p.getStatus() %>" readonly>
</div>
</div>
<h6>Publish date: <%=p.getPdate() %></h6>
<div class = "text-center">
<a href ="one_view.jsp?id=<%=p.getId()%>" class="btn btn-sm bg-success text-white">Select</a>
</div>
</div>
</div>	
	
	<%}
} else {%>
<h4 class="text-center text-danger"><%=msg %></h4>
<%}
%>

</div>
	</div>
</body>
</html>