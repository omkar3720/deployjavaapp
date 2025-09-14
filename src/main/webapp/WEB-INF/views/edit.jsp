<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Here</title>
<style type="text/css">
    body {
        background-color: #f9f9f9;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }

    .edit-container {
        width: 400px;
        margin: 80px auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .edit-container h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    label {
        display: block;
        margin-top: 12px;
        margin-bottom: 6px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"],
    input[type="number"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        box-sizing: border-box;
    }

    button {
        width: 100%;
        background-color: #007bff;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="edit-container">
        <h2>Edit Form</h2>
        <form action="update">
            <input type="hidden" name="id" value="${em.id}">

            <label for="name">Name:</label>
            <input type="text" name="name" placeholder="Enter Name" value="${em.name}" required>

            <label for="address">Address:</label>
            <input type="text" name="address" placeholder="Enter Address" value="${em.address}" required>

            <label for="mobileno">Mobile No:</label>
            <input type="number" name="mobileno" placeholder="Enter Mobile No" value="${em.mobileno}" required>

            <label for="username">Username:</label>
            <input type="text" name="username" placeholder="Enter Username" value="${em.username}" required>

            <label for="password">Password:</label>
            <input type="password" name="password" placeholder="Enter Password" value="${em.password}" required>

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
