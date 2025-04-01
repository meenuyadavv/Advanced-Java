<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to AA</title>
<style>
    body {
        background-color: #42a5f5; /* Sky Blue */
        text-align: center;
        font-family: Arial, sans-serif;
        color: white;
        margin-top: 10%;
    }
    h1 {
        font-size: 40px;
        color: #fbc02d; /* Warm Yellow */
        text-shadow: 2px 2px 5px #000;
    }
    p {
        font-size: 22px;
        color: #ffffff;
        margin-top: 10px;
    }
    .btn {
        background-color: #fbc02d; /* Yellow */
        color: black;
        padding: 10px 20px;
        font-size: 18px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        margin-top: 20px;
        transition: 0.3s;
    }
    .btn:hover {
        background-color: #ff9800; /* Orange */
    }
</style>
</head>
<body>

<h1>🎉 Aap ne <b>AA</b> ko call kiya hai! 🎉</h1>
<p>AA ki duniya mea aapka **dil se swagat hai!** 🚀</p>

<button class="btn" onclick="window.location.href='/Demo-MVC/m2'">Chalein BB ki duniya mein? 😃</button>

</body>
</html>
