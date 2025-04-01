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
/* PreparedStatement ps=cn.prepareStatement("update productinfo set name='?',brand='?',price='?',where pid=?"); */
PreparedStatement ps = cn.prepareStatement("update productinfo set name=?, brand=?, price=? where pid=?");


ps.setString(1,name);
ps.setString(2,brand);
ps.setString(3,price);
ps.setString(4,pid);
ps.executeUpdate();
%>

<div class='dv'>
<h2> product record has been saved successfully.... </h2>

</div>



</body>
</html>