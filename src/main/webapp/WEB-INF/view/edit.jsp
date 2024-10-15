<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
<link 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
	crossorigin="anonymous"
	>
</head>
<body>
	
	<div class="container p-4">
        <div class="col-md-8 offset-md-2" >
        	<h2>Edit User Information</h2>
        	<form action="${pageContext.request.contextPath}/updateUser" method="post">
            	<input type="hidden" name="id" value="${user.id}" />
            
            	<div class="mb-3">
                	<label for="fullName" class="form-label">Full Name</label>
                	<input type="text" class="form-control" id="fullName" name="fullName" value="${user.fullName}" required>
            	</div>
            	<div class="mb-3">
                	<label for="email" class="form-label">Email</label>
                	<input type="email" class="form-control" id="email" name="email" value="${user.email}" required>
            	</div>
            
            	<button type="submit" class="btn btn-primary">Update</button>
        	</form>
        </div>
    </div>
	

	<script 
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		crossorigin="anonymous">
	</script>
</body>
</html>