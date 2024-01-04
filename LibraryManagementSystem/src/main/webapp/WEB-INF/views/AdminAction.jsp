<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .container {
            background-color: rgb(225, 231, 232);
            border-radius: 8px;
        }
        .btn:hover{
        background-color: green;
       }
    </style>
    <title>Librarian work</title>
</head>

<body>
    <div class="container mt-5 border ">
        <div class="row justify-content-center">

            <div class="col-md-6">
                <br>
                <h2 class="text-center">Librarian Work</h2>
                <br>

                <!-- First three forms in vertical order -->
                <form action="AddBooks" class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">Add Books</button>
                </form>

                <form action="viewbooks" class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">View Books</button>
                </form>

                <form action="ViewUsers" class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">View Users</button>
                </form>

                <!-- Remaining forms in vertical order -->
                <form action="IssueBooks" class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">Issue books</button>
                </form>

                <form action="IssuedBooks" class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">View Issued Books</button>
                </form>

                <form action="adduser" class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">Add User</button>
                </form>

                <form action="index" class="form-group col-md-6 mx-auto text-center">
                    <button class="btn btn-primary  btn-danger " type="submit">Log Out</button>
                </form>

            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>

</html>
