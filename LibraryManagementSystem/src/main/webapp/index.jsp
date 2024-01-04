<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.17.0/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.17.0/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background-image: url('<c:url value="/resources/images/images.jpg" />');
            background-size: cover;
            background-position: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            position: relative; /* Set the body to relative positioning */
        }

        /* Add a container for content */
        .content-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
            color: white;
            text-align: center;
            max-width: 100%;
        }

        nav {
            background-color: #333;
            overflow: hidden;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: white;
            color: black;
        }

        /* Move the dropdown to the right corner */
        .dropdown {
            float: right;
        }

        /* Style the vertical dropdown content */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #2b729f;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Adjust the style of the vertical dropdown links */
        .dropdown-content a {
            float: none;
            display: block;
            text-align: left;
        }
    </style>
</head>

<body>

    <nav>
        <a href="">Library Management System</a>

        <!-- Move the dropdown to the right corner -->
        <div class="dropdown">
            <a href="#" class="dropbtn"> <i class="bi-box-arrow-in-right"></i>LogIn </a>
            <!-- Make the dropdown vertical -->
            <div class="dropdown-content">
                <a href="AdminLogIn">Admin LogIN </a> <a href="UserLogIn">User LogIn</a>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    </nav>

    <!-- Content container with text on top of the background image -->
    <div class="content-container">
        <p>I'm focusing on the music, but I still got a cold library of books that I've either read or I plan on getting to.</p>
    </div>

</body>

</html>
