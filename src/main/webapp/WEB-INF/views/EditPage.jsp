<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
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
<form:form action="update" modelAttribute="user">
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
	 


	  </tr>
	    <c:forEach var="ls"  items="${list}">
	    <c:if test="${ls.id==edit.id}">
			<tr>
			
				<%-- <td>${ls.id}</td> --%>
				
			    <td><form:hidden path="id" value="${ls.id}"/></td>
				<td><form:input path="userName" value="${ls.userName}"/></td>

				<td><form:input path="firstName" value="${ls.firstName}"/></td>
			
				<td><form:input path="lastName" value="${ls.lastName}"/></td>
			
				<td><form:input type="password" path="password" value="${ls.password}"/></td>
				<td><form:input type="password" path="confirmPassword" value="${ls.confirmPassword}"/></td>
				<td><form:input  path="mailId" value="${ls.mailId}"/></td>
				<td><form:input  path="mobileNo" value="${ls.mobileNo}"/></td>
				<%-- <td><img src="/resources/images/Urangatha Kangal.jfif/resources/images/${ls.image}"/></td> --%>
					<td> <input type="submit" value="Update"   class="btn btn-primary"/><br></td>
			
			</tr>
			</c:if>
		
	  <c:if test="${ls.id!=edit.id}">
	   
			<tr>
			
				<td><form:hidden path="id" value="${ls.id}"/></td>
			
				<td>${ls.userName}</td>

				<td>${ls.firstName}</td>
			
				<td>${ls.lastName}</td>
				<td>${ls.password}</td>
				<td>${ls.confirmPassword}</td>
				<td>${ls.mailId}</td>
				<td>${ls.mobileNo}</td>
				<%-- <td><img src="/resources/images/Urangatha Kangal.jfif/resources/images/${ls.image}"/></td> --%>
				<td><a href="Edit?id=${ls.id}">Edit</a></td>
				
			</tr>
			</c:if>
			</c:forEach>
			</table>
			
			</form:form>
</body>
</html>