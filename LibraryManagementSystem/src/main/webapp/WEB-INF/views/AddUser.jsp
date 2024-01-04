<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

    <title>Document</title>
    <style>
        body{
            background-color: rgb(233, 237, 237);
        }
        .btn:hover{
            background-color: rgb(10, 197, 109);
            
        }
        .border{
            background-color: rgb(219, 198, 219);
            border-radius: 10px;
            box-shadow:0 0 10px rgba(32, 161, 32, 0.1);;
        
        }
        .border:hover{
            
        }
        
    </style>
    <script>
        function togglePassword() {
    var passwordField = document.getElementById("passwordField");
    if (passwordField.type === "password") {
        passwordField.type = "text";
    } else {
        passwordField.type = "password";
    }
}
    </script>
</head>

<body class="d-flex align-items-center justify-content-center" style="height: 100vh;">
   
    <div class="container mt-5  ">
       
        <div class="row justify-content-center ">
            <div class="col-md-6 border  ml-4" >
                <br>
                <h3 class="text-center">Add User</h3>


                <form action="#">

                    <div class="form-group">

                        <label for="username">Username : </label> <input type="text" class="form-control"
                            name="un" required>




                        <label for="password">Password : </label><input type="password" name="pass" class="form-control" id="passwordField"
                            required>



                    </div>
                    <div >
                        <button type="submit" class="btn btn-primary btn-block " onclick="togglePassword()">Add User</button>
                        <br>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</body>

</html>