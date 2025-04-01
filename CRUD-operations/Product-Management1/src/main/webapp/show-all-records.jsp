<%@ include file='menu.jsp' %> <!-- directive -->
<%@ page import="java.sql.*"%>
<head>
<link href="css/sstyle.css" rel="stylesheet">
</head>

<html>
<body>
<%

Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/productmanagement","root","mysql");
Statement st = cn.createStatement();
ResultSet rst = st.executeQuery("select * from productinfo");
%>

<table class='tar' border='1' cellpadding='6px'>
<tr>
<th>product id</th><th>product name</th><th>product brand</th><th>product price</th>
</tr>
<% 
while(rst.next()){
%>

<tr>
<td> <%=rst.getString(1) %> </td>
<td> <%=rst.getString(2) %> </td>
<td> <%=rst.getString(3) %> </td>
<td> <%=rst.getString(4) %> </td>
</tr>
	
	<% 
}

%>
</table>


</body>
</html>