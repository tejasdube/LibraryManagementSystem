<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">

<title>Admin Log IN</title>



<style>
.container{
background-color:rgb(229, 232, 233);
border-radius:8px;
padding-top: 10px;
  padding-right: 20px;
  padding-bottom: 10px;
  padding-left: 20px;

}
</style>
</head>

<body>
<%@include file="navbar.jsp" %>
<br>
<br>


	<div class="container mt-4 border border-dark mb-10">
		<div class="row justify-content-center">
			<div class="col-md-6">

				<h3 class="text-center">Admin Log In</h3>
				<h5 class="text-center">${key }</h5>
				<form action="AdminAction" method="post">
					<div class="form-group">

						<label for="username">Username</label> <input type="text"
							class="form-control" placeholder="username" name="username">
					</div>

					<div class="form-group">
						<label for="pass">Password</label> <input type="password"
							class="form-control" name="pass">
					</div>

					<button type="submit" class="btn btn-block btn-primary">Log
						In</button>
					<br>
				</form>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</body>

</html>