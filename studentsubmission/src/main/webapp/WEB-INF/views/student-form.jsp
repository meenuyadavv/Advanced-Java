<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Enter Details</title>
  <style>
body {
    font-family: 'Comic Sans MS', cursive;
    background: linear-gradient(135deg, #fddde6, #d1f4ff);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.form-container {
    background: #fff7e6;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    max-width: 320px;
    width: 90%;
}

h2 {
    margin-bottom: 15px;
    color: #ff7f50;
    font-size: 24px;
}

label {
    display: block;
    margin-top: 10px;
    color: #555;
    font-size: 16px;
}

input {
    padding: 8px;
    margin-top: 5px;
    width: calc(100% - 16px);
    border-radius: 8px;
    border: 1px solid #ccc;
}

button {
    background-color: #ffb347;
    color: white;
    border: none;
    margin-top: 15px;
    padding: 10px;
    border-radius: 8px;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
}

button:hover {
    background-color: #ff9e00;
}
</style>
    
    
</head>
<body>
    <div class="form-container">
    <h2>📚 Enter Your Details 🧒🤓</h2>
    <form action="<c:url value='/process-form' />" method="post">
        <label>👶 Name:</label>
        <input type="text" name="name" required />
        <label>🎂 Age:</label>
        <input type="number" name="age" required />
        <button type="submit">🚀 Let's Go!</button>
    </form>
</div>
    
</body>
</html>
