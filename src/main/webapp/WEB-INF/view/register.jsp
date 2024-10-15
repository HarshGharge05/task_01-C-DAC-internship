<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<link 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
	crossorigin="anonymous">

</head>
<body>
	
	<div class="container p-4" >
		<div class="row" >
			<div class="col-md-6 offset-md-3" >
				<div class="card" >
					<div class="card-header text-center fs-3" >Register Page</div>
					<p> ${msg} </p>
					<div class="card-body" >
						<form action="createUser" method="post" >
							<div class="mb-3">
    							<label for="text" class="form-label">Full Name</label>
    							<input type="text" class="form-control" id="inputName" aria-describedby="emailHelp" name="fullName" >
  							</div>
  							<div class="mb-3">
    							<label for="exampleInputEmail1" class="form-label">Email address</label>
    							<input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" name="email" >
  							</div>
  							<div class="mb-3">
    							<label for="exampleInputPassword1" class="form-label">Password</label>
    							<input type="password" class="form-control" id="inputPassword" name="password" >
  							</div>
  							<!-- <div class="mb-3 form-check">
    							<input type="checkbox" class="form-check-input" id="exampleCheck1" name="check" >
    							<label class="form-check-label" for="exampleCheck1">Check me out</label>
  							</div> -->
  							<button type="submit" class="btn btn-primary col-md-12 ">Submit</button>
						</form>
					</div>
				</div>
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