<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Issued Book List</title>
</head>
<body class="d-flex align-items-center justify-content-center">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <h2 class="text-center">Issued Book List</h2>
                <br>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Iid</th>
                            <th>Bid</th>
                            <th>Uid</th>
                            <th>IssuedDate</th>
                            <th>Period</th>
                            <th>ReturnDdate</th>
                            <!-- Add more columns as needed -->
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.iid}</td>
                                <td>${book.bid}</td>
                                <td>${book.uid}</td>
                                <td>${book.issueDate}</td> <!-- Corrected property name -->
                                <td>${book.period}</td>
                                <td>${book.rdate}</td>
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
