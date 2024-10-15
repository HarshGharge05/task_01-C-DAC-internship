<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
	crossorigin="anonymous">
</head>
<body>
	
	<div class="container p-4">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<h1 class="text-center mb-4">List of Registered Students</h1>
				
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Student Name</th>
							<th scope="col">Email</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${userList }" >
							<tr>
								<th scope="row" >${user.id}</th>
								<td>${user.fullName}</td>
								<td>${user.email}</td>
								
								<td>
									<form action="${pageContext.request.contextPath}/editPage" method="get" > 
										<input type="hidden" name="id" value="${user.id}" />
										<button type="submit" class="btn btn-primary" >Edit</button>
									</form>
								</td>
								
								<td>
									<form action="${pageContext.request.contextPath}/deleteUser" method="post" >
										<input type="hidden" name="id" value="${user.id}" />
										<button type="submit" class="btn btn-danger" >Delete</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<script 
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		crossorigin="anonymous">
	</script>
</body>
</html>
