<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<style type="text/css">
    body {
        background-color: #f4f4f4;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }

    .register-container {
        width: 400px;
        margin: 80px auto;
        padding: 30px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .register-container h2 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    form label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
        color: #333;
    }

    form input {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border: 1px solid #aaa;
        border-radius: 4px;
        font-size: 14px;
        box-sizing: border-box;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        border: none;
        font-size: 16px;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
    <div class="register-container">
        <h2>Registration Form</h2>
        <form action="save">
            <label for="name">Name:</label>
            <input type="text" name="name" placeholder="Enter Name" required>

            <label for="address">Address:</label>
            <input type="text" name="address" placeholder="Enter Address" required>

            <label for="mobileno">Mobile No:</label>
            <input type="number" name="mobileno" placeholder="Enter Mobile No" required>

            <label for="username">Username:</label>
            <input type="text" name="username" placeholder="Enter Username" required>

            <label for="password">Password:</label>
            <input type="password" name="password" placeholder="Enter Password" required>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
