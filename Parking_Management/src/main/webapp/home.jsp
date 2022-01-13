<%@page import="com.entity.PS"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.PSDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User : View Parking Spots</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color:#f0f1f2;">
 <%--  <c:if test="${empty userobj}">
      <c:redirect url="Login.jsp" />
  </c:if> --%>
 
  <%@include file="all_components/navbar.jsp"%>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h5 class="text-center text-primary">All Parking Spots</h5>
        
       <c:if test="${not empty succMsg}">
            <div class="alert alert-success" role="alert">${succMsg}</h4>
            </div>
            <c:remove var="succMsg" />
        </c:if>
     <c:if test="${not empty bookingmsg}">
 <div class="alert alert-success" role="alert">${  bookingmsg}
</div>
<c:remove var="bookingmsg" />
</c:if>    
         <div class="card">
            <div class="card-body">
              <form class="form-inline" action="more_view.jsp" method="get">
                <div class="form-group col-md-5 mt-1:">
                    <h5>Place</h5>
                </div>
              
                <div class="form-group col-md-4 mt-1:">
                    <h5>Category</h5>
                </div>
                
                <div class="form-group col-md-5">
        
                    <select name="place" class="custom-select" id="inlineFormCustomSelectPref">
                        <option selected value="place">Choose...</option>
                        <option value="Bits Hyderabad">Bits Hyderabad</option>
                        <option value="Imax Theaters">Imax Theaters</option>
                        <option value="Big Bazaar">Big Bazaar</option>
                        <option value="MS Shopping Mall">MS Shopping Mall</option>
                     </select> 
                </div>
                
                <div class="form-group col-md-5">
                  <select class="custom-select" id="inlineFormCustomSelectPref" name="cat">
                    <option value="ca" selected>Choose...</option>
                    <option value="Two-wheeler">Two-wheeler</option>
                    <option value="Four-wheeler">Four-wheeler</option>

                  </select>
                </div>
                <button class="btn btn-success">Find</button>
              </form>             
            </div>
        </div> 
      <% PSDAO dao=new PSDAO(DBConnect.getConn());
   List<PS> list = dao.getAllPSForUser();
   for(PS p:list){%>
	   <div class = "card mt-2">
<div class="card-body">
<div class ="text-center text-primary">
<i class="far fa-clipboard fa-2x"></i></div>


<h6> <%=p.getPlace() %></h6>
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
 <div class=" text-center">
                  <a href="one_view.jsp?id=<%=p.getId() %>"
                      class="btn btn-sm bg-success text-white">Select</a>
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