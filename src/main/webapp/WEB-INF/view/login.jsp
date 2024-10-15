<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
	crossorigin="anonymous">
</head>
<body>
	
	<div class="container p-4"  >
		<div class="row" >
			<div class="col-md-6 offset-md-3" >
				<div class="card" >
					<div class="card-header text-center fs-3" >Login Page</div>
					<div class="card-body" >
						<p>${msg}</p>
						<form action="getUser" >
  							<div class="mb-3">
    							<label for="loginEmail" class="form-label">Email address</label>
    							<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" >
  							</div>
  							<div class="mb-3">
    							<label for="loginPassword" class="form-label">Password</label>
    							<input type="password" class="form-control" id="exampleInputPassword1" name="password" >
  							</div>
  							<button type="submit" class="btn btn-primary col-md-12">Submit</button>
						</form>
						
						<div class="d-flex justify-content-end mt-3 " >
							<a href="register" >Register</a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<script 
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		crossorigin="anonymous"></script>
</body>
</html>