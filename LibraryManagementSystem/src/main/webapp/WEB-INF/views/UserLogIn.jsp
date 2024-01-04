<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

    <title>Document</title>
    <style>
        body{
            background-color: rgb(212, 228, 228);
        }
        
        .border{
            background-color: hwb(300 71% 11%);
            border-radius: 20px;
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
                <h3 class="text-center">User LogIn</h3>
                <h6 class="text-center">${user }</h6>


                <form action="UserAction" method="post">

                    <div class="form-group">

                        <label for="username">Username : </label> <input type="text" class="form-control"
                            name="un" required><i class=" fa-regular fa-user"></i>




                        <label for="password">Password : </label><input type="password" name="pass" class="form-control" id="passwordField"
                            required>



                    </div>
                    <div >
                        <button type="submit" class="btn btn-primary btn-block " onclick="togglePassword()">Log In</button>
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