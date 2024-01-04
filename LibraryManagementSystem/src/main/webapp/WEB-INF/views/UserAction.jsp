<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

    <title>UserAction</title>
    <style>
        body {
            background-color: #f8f9fa; /* Set your desired background color */
        }
       
       .border{
       
       border-radius:20px;
       background-color: #a7d6ca;
       
       }
    </style>
</head>

<body class="d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="container mt-5 p-4">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center border">
                <div class="form-group">
                <br>
                    <form action="vb" method="post">
                        <button type="submit" class="btn btn-primary">View Books</button>
                    </form>
                </div>
                <div class="form-group">
                    <form action="Mybooks" method="post">
                        <button type="submit" class="btn btn-primary">My Books</button>
                    </form>
                </div>
                <div class="form-group text-center">
                    <form action="userLO" method="post">
                        <button type="submit" class="btn bg-danger">Log Out</button>
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
