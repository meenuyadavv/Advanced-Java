<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form Error</title>
  <style>
  
  /* error  */
  
  
.error-page {
    max-width: 600px;
    margin: 60px auto;
    background: #ffe6e6;
    padding: 30px;
    border: 2px solid #ff4d4d;
    border-radius: 10px;
    text-align: center;
    color: #b30000;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.error-page h1 {
    color: #ff1a1a;
}

.error-page ul {
    text-align: left;
    display: inline-block;
}

.retry-btn {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 15px;
    background-color: #ff4d4d;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.retry-btn:hover {
    background-color: #cc0000;
}
/* error end */

  
  
  </style>
    
</head>
<body>
    <div class="error-page">
        <h1>🚫 Invalid Submission</h1>
        <p>Please make sure:</p>
        <ul>
            <li>✅ Name is not empty</li>
            <li>✅ Age is between 3 and 6</li>
        </ul> <br>
        <a href="student-form" class="retry-btn">Try Again</a>
    </div>
</body>
</html>
