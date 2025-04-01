
<%@ page import="java.sql.*"%>
<html>

<head>
    <link href="css/sstyle.css" rel="stylesheet">
</head>

<body>
<%
    // Form se productid nikalne ke liye request.getParameter() ka use
    String pid = request.getParameter("pid");

    
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/productmanagement", "root", "mysql");
        PreparedStatement ps = cn.prepareStatement("DELETE  FROM productinfo WHERE pid=?");
        ps.setString(1, pid);
       int n = ps.executeUpdate();

        if (n>=1) {
      %>
        <%@ include file='menu.jsp' %> <!-- directive -->  
           <div class='dv'>
        	<h2 style='color:red'>Product record with id <%=pid%> has been deleted </h2>
        	</div>  
      <%
        } 
        else {
              %>  
        
        	<jsp:include page="delete.jsp" />
        	
        	<div style='text-align:center; margin-top:20px'>
        	<h2 style='color:red'>Product with id <%=pid%> does not exist </h2>
        	</div>
        	<% 
        }
        
        %>
</body>
</html>
