<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>log-in-form</title>
<style>

    body {
        background-color: #f5f5f5; /* Light gray */
        font-family: Arial, sans-serif;
    }
    h1 {
        text-align: center;
        color: #1565c0; /* Dark blue */
    }
    form {
        width: 350px;
        background: white;
        padding: 20px;
        margin: auto;
        margin-top: 50px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
        font-size: 18px;
    }
    td {
        padding: 10px;
    }
    input {
        width: 100%;
        padding: 8px;
        font-size: 16px;
        border: 2px solid #ccc;
        border-radius: 5px;
    }
    input:focus {
        border-color: #64b5f6; /* Light blue */
        outline: none;
    }
    button {
        background-color: #2196F3; /* Blue */
        color: white;
        font-size: 18px;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }
    button:hover {
        background-color: #1565c0; /* Darker blue */
    }
    .message {
        text-align: center;
        margin-top: 20px;
        color: red;
        font-weight: bold;
    }

</style>
</head>
<body>
<h1>check Login validation  </h1>


<form action='authentication' method='post'>
<table>
<tr>
<td>Enter user id </td>
<td><input type='text' name='userid' required></td>
</tr>
<tr>
<td>Enter password </td>
<td><input type='text' name='password' required></td>
</tr>

<tr>

<td colspan='2' align='right'><button>submit</button></td>
</tr>


</table>
<div style='text-align:center;margin-top:30px'>
<h3 style='color:red'>${msg} </h3>
</div>
</form>

</body>
</html>