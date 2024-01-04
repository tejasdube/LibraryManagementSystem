<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html lang="en">

<script>
    function showSuccessDialog() {
        alert("Book added successfully");
    }
</script>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Add Books</title>
</head>

<body class="d-flex align-items-center justify-content-center" style="height: 100vh; background-color: antiquewhite;">

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h3 class="text-center">Enter Book Details</h3>
                
                <br>

                <div>
                    <form action="#" class="form-group" method="post">

                        <div>
                            <label for="Bname">Bookname : </label><input type="text" class="form-control" name="Bname" required>
                        </div>
                        <div>
                            <label for="Genre">Genre : </label><input type="text" class="form-control" name="genre" required>
                        </div>
                        <div>
                            <label for="price">Price : </label><input type="text" class="form-control" name="price" required>
                        </div>
                        <br>
                        <button class="btn btn-primary btn-block" onclick="showSuccessDialog()" type="submit">Submit</button>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>

</html>
