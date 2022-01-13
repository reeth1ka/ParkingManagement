<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="all_components/all_css.jsp" %>
<script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="831021909947-q0eqstu19rrulkghdvfa3n7up890sfsf.apps.googleusercontent.com">
</head>
<body style="background-color:#CCD1D1; ">
<%@include file="all_components/navbar.jsp" %>

<div class="container-fluid">
<div class="row p-5">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<div class="text-center">
<i class = "fa fa-user-plus fa-2x" aria-hidden="true"></i>
<h5>Login</h5>
</div>
 <c:if test="${not empty invalidmsg}">
 <h5 class="text-center text-danger">${  invalidmsg}</h5>
<c:remove var="invalidmsg" />
</c:if>
<form action="login" method = "post">

<div class ="form-group">
<label>Enter Email</label>
<input type="email" required="required" class="form-control" name="email">
</div>
<div class="form-group">
<label>Enter Password</label><input required = "required" type="password" class="form-control" name="password">


</div>
<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
<hr><h6 class="text-center mt-2 text-silver">Or</h6>
 <div class ="form-group mt-2" align="center">
<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
      <img id="myImg"><br>
      <p id="name"></p>
      <div id="status">
   </div>
   <script type="text/javascript">
      function onSignIn(googleUser) {
      window.location.href='home.jsp';
     /*  var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden" */;
      document.getElementById("status").innerHTML ='<a href=home.jsp?/>Continue with Google login</a></p>'
    	  
      }
      </script>
     <!--  <button onclick="myFunction()">Sign Out</button> -->
   <script>
      function myFunction() {
          gapi.auth2.getAuthInstance().disconnect();
          location.reload();
       }
      
   </script>
   
   </div>
</form> 

</div>
</div>
</div>
</div>
</div>
</body>
</html>