<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>
</head>
<script type="text/javascript">
     function validate() {
          if (document.getElementById("userName").value == "Select") {
              document.getElementById("error").innerHTML = "<center>User Name is required</center>";
              document.getElementById("error1").innerHTML = "";
              return false;
          } else if (document.getElementById("firstName").value == "Select") {
              document.getElementById("error1").innerHTML = "<center>First Name is required</center>";
              document.getElementById("error").innerHTML = "";
              return false;
          }
          else if (document.getElementById("lastName").value == "") {
              document.getElementById("error2").innerHTML = "<center>Last Name is required</center>";
              document.getElementById("error1").innerHTML = "";
              return false;
          }
          else if (document.getElementById("password").value == "0.0") {
              document.getElementById("error3").innerHTML = "<center>Password is required</center>";
              document.getElementById("error2").innerHTML = "";
              return false;
          }
          else if (document.getElementById("confirmPassword").value == "0.0") {
              document.getElementById("error4").innerHTML = "<center>Confirm Password is required</center>";
              document.getElementById("error3").innerHTML = "";
              return false;
          }
          else if (document.getElementById("mailId").value == "0.0") {
              document.getElementById("error5").innerHTML = "<center>MailId is required</center>";
              document.getElementById("error4").innerHTML = "";
              return false;
          }
          else if (document.getElementById("mobileNo").value == "0.0") {
              document.getElementById("error6").innerHTML = "<center>MobileNo is required</center>";
              document.getElementById("error5").innerHTML = "";
              return false;
          }
          else if (document.getElementById("password").value !=document.getElementById("confirmPassword").value ){
        	  document.getElementById("error7").innerHTML = "<center>Password and Confirm Password not matched</center>";
        	  document.getElementById("error6").innerHTML = "";
          }
          else {
        	  document.getElementById("error8").innerHTML = "";
              return true;
          }
     }
</script>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">User</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="listUser">List User </a></li>
		</ul>

	</div>
	</nav>
	<center>
		<h4>${msg}</h4>
	</center>
	<div class="container">
		<h4>Add</h4>
	<!-- 	<p id="error" style="color: red;"></p> -->
		<form:form action="save" modelAttribute="user">
			<div class="form-group">
				<label for="User Name">User Name</label>
				<form:input path="userName" class="form-control" />
				</div><p id="error" style="color: red;">
			<br>
			<div>
			<label for="First Name">First Name </label>
			<form:input path="firstName" class="form-control" />
			</div><p id="error2" style="color: red;">
			<br>
			<div>
			<label for="Last Name">Last Name</label>
			<form:input path="lastName" class="form-control" />
				</div><p id="error3" style="color: red;">
			<br>
		<div>
			<label for="Password">Password</label>
			 <form:input type="password" path="password" class="form-control" />
				</div> <p id="error4" style="color: red;">
			<br>
			<div>
			<label for="Confirm Password">Confirm Password</label>
			 <form:input type="password" path="confirmPassword" class="form-control" />
				</div> <p id="error5" style="color: red;">
			<br>
			<div>
			<label for="Mail Id">Mail Id</label>
			 <form:input  path="mailId" class="form-control" />
				</div> <p id="error6" style="color: red;">
			<br>
			<div>
			<label for="Mobile No">Mobile No</label>
			 <form:input  path="mobileNo" class="form-control" />
				</div> <p id="error7" style="color: red;">
			<br>
			 <div>
			<input type="submit" value="Save" onclick="return validate()"
				class="btn btn-primary" />
				</div>
		</form:form>
	</div>
</body>
</html>