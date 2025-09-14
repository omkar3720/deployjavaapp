<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
<style type="text/css">
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 20px;
    }

    h2 {
        color: green;
        text-align: center;
        margin-bottom: 30px;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        margin: auto;
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        border: 1px solid #ccc;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    a {
        text-decoration: none;
        padding: 6px 12px;
        border-radius: 5px;
        font-size: 14px;
        margin: 2px;
    }

    a[href*="edit"] {
        background-color: #2196F3;
        color: white;
    }

    a[href*="delete"] {
        background-color: #f44336;
        color: white;
    }

    a:hover {
        opacity: 0.8;
    }
</style>
</head>
<body>
    <h2>Registration Details...</h2>
    <table>
        <tr>
            
            <th>Name</th>
            <th>Address</th>
            <th>Mobileno</th>
            <th>Username</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${data}" var="a1">
            <tr>
               
                <td>${a1.name}</td>
                <td>${a1.address}</td>
                <td>${a1.mobileno}</td>
                <td>${a1.username}</td>
                <td>${a1.password}</td>
                <td>
                    <a href="delete?id=${a1.id}">Delete</a>
                    <a href="edit?id=${a1.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
