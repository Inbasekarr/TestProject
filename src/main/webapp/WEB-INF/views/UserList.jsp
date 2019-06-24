<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User List</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">User</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="addUser">Add User</a></li>
		</ul>
	</div>
	</nav>

	<table class="table table-bordered table-sm" style="width: 40%; margin-left: 150px;">
  </tr>
	
	 <tr >
	 <th>User ID</th>
	 <th>User Name</th>
	 <th>First Name</th>
	 <th>Last Name</th>
	 <th>Password</th>
	 <th>Confirm Password</th>
	 <th>Mail Id</th>
	 <th>Mobile No</th>
	  <th>Edit</th>
	  <th>delete</th>


	  </tr>
	  
	     <c:forEach var="ls"  items="${List}">
			<tr>
			
				<td>${ls.id}</td>
			
				<td>${ls.userName}</td>

				<td>${ls.firstName}</td>
			
				<td>${ls.lastName}</td>
				<td>${ls.password}</td>
				<td>${ls.confirmPassword}</td>
				<td>${ls.mailId}</td>
				<td>${ls.mobileNo}</td>
				<%-- <td><img src="${ls.image}" width="50px"/></td> --%>
				<td><a href="Edit?id=${ls.id}"><img src="/images/edit.jpg" height="20" width="20"></a></td>
					<td><a href="Delete?id=${ls.id}"><img src="/images/delete.png" height="20" width="20"></a></td>
			</tr>
			</c:forEach>
			</table>
</body>
</html>