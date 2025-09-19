<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page 19/09/25</title>
<style type="text/css">
    body {
        background-color: #f0f2f5;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }

    .login-container {
        width: 350px;
        margin: 100px auto;
        padding: 30px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    .login-container h2 {
        margin-bottom: 25px;
        color: #333;
    }

    label {
        display: block;
        text-align: left;
        margin: 12px 0 5px 0;
        font-weight: 600;
        color: #333;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 14px;
    }

    button {
        width: 100%;
        background-color: #28a745;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
    }

    button:hover {
        background-color: #218838;
    }

    a {
        display: block;
        margin-top: 15px;
        color: #007bff;
        text-decoration: none;
        font-size: 14px;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
   <div class="login-container">
      <h2>Login Here</h2>
      <form action="login">
         <label for="username">Username:</label>
         <input type="text" id="username" name="username" placeholder="Enter Username" required>
         
         <label for="password">Password:</label>
         <input type="password" id="password" name="password" placeholder="Enter Password" required>
         
         <button type="submit">Login</button>
         <a href="openregisterpage">Register Here...</a>
      </form>
   </div>
</body>
</html>
