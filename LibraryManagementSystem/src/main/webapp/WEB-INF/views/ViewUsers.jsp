<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Users list</title>
</head>
<body class="d-flex align-items-center justify-content-center">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h2 class="text-center">Users List</h2>
<br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>uid</th>
                            <th>username</th>
                            <th>password</th>
                         
                            <!-- Add more columns as needed -->
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${users}">
                            <tr>
                                <td>${user.uid}</td>
                                <td>${user.username}</td>
                                <td>${user.password}</td>
                                
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
