<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Books list</title>
</head>
<body>
	<div class="container">
		<div class="card mx-auto mt-5 bg-secondary" style="width: 400px;">
              <h3 class="text-center text-white mt-2">My Search</h3>
			<div class="card-body">

				<form action="search">
					<div class="form-group">
						<input type="text" name="query" placeholder="enter your keyword" class="form-control">
			
    
    </div>
    
    <div class="container text-center">
    
    <button class="btn btn-outline-light">Search</button>
    
    </div>
    
    
    </form>
    
    
    </div>
    
    </div>
    
    
    </div> 	

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h2 class="text-center">Book List</h2>
<br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Bid</th>
                            <th>Bname</th>
                            <th>genre</th>
                            <th>price</th>
                            <!-- Add more columns as needed -->
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.bid}</td>
                                <td>${book.bname}</td>
                                <td>${book.genre}</td>
                                <td>${book.price}</td>
                                <!-- Add more columns as needed -->
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
