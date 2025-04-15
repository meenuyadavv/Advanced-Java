<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Journey Dashboard</title>
	<link rel="stylesheet" href="<c:url value='/css/style.css' />">

</head>
<body>
    <div class="dashboard-container">
        <div class="welcome-section">
            <h1>🌈 Welcome!</h1>
            <p>A Student's Beautiful Journey Begins!</p>
            <a  href="<spring:url value='/student-form' />" class="start-btn">START JOURNEY</a>
        </div>
    </div>
</body>
</html>
