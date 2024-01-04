<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Dashboard</title>
</head>
<body>

<h2>Welcome, ${user.username}!</h2>

<h3>Issued Books:</h3>
<table border="1">
    <thead>
        <tr>
            <th>Book ID</th>
            <th>Issue ID</th>
            <th>User ID</th>
            <th>Issue Date</th>
            <th>Period</th>
            <th>Return Date</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="issue" items="${userIssues}">
            <tr>
                <td>${issue.bid}</td>
                <td>${issue.iid}</td>
                <td>${issue.uid}</td>
                <td>${issue.issueDate}</td>
                <td>${issue.period}</td>
                <td>${issue.rdate}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<h3>All Books:</h3>
<table border="1">
    <thead>
        <tr>
            <th>Book ID</th>
            <th>Book Name</th>
            <th>Genre</th>
            <th>Price</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="book" items="${allBooks}">
            <tr>
                <td>${book.bid}</td>
                <td>${book.bname}</td>
                <td>${book.genre}</td>
                <td>${book.price}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>