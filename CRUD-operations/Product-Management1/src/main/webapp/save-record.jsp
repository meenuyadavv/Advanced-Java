<%@ include file='menu.jsp' %> <!-- directive -->
<%@ page import="java.sql.*"%>
<head>
<link href="css/sstyle.css" rel="stylesheet">
</head>

<html>
<body>
<%

String pid  = request.getParameter("pid"); // text box name="pid"
String name = request.getParameter("name");
String brand = request.getParameter("brand");
String price = request.getParameter("price");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/productmanagement","root","mysql");
PreparedStatement ps=cn.prepareStatement("insert into productinfo values(?,?,?,?)");
ps.setString(1,pid);
ps.setString(2,name);
ps.setString(3,brand);
ps.setString(4,price);
ps.executeUpdate();
%>

<div class='dv'>
<h2> product record has been inserted successfully.... </h2>

</div>



</body>
</html>