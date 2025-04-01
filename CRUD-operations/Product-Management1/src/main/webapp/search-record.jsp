<%@ include file='menu.jsp' %> <!-- directive -->
<%@ page import="java.sql.*"%>
<html>


<body>
<%
    // Form se productid nikalne ke liye request.getParameter() ka use
    String pid = request.getParameter("pid");

    
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/productmanagement", "root", "mysql");
        PreparedStatement ps = cn.prepareStatement("SELECT * FROM productinfo WHERE pid=?");
        ps.setString(1, pid);
        ResultSet rst = ps.executeQuery();

        if (rst.next()) {
%>
            <table class="tar" border='1' cellpadding='10px' style='margin-top:60px'>
            <tr style='background-color:orange; color:white; font-size:20px'>
            <th style='text-align:center' colspan='2'>Product Details</th>
             </tr>
                <tr style='color:orange'>
                    <th align="left">Product ID</th>
                    <td><%= rst.getString(1)%></td>
                </tr>
                
                <tr style='color:orange'>
                    <th align="left">Product Name</th>
                    <td><%= rst.getString(2)%></td>
                </tr>
                <tr style='color:orange'>
                    <th align="left">Product Brand</th>
                    <td><%= rst.getString(3)%></td>
                </tr>
                <tr style='color:orange'>
                    <th align="left">Product Price</th>
                    <td><%= rst.getString(4)%></td>
                </tr>
            </table>
    <%
        } 
        else {
              %>  
        <%-- 	<jsp:include page="search.jsp" /> --%>
        	<jsp:include page="search.jsp" />
        	
        	<div style='text-align:center; margin-top:20px'>
        	<h2>Product with id <%=pid%> not found </h2>
        	</div>
        	<% 
        }
        
        %>
</body>
</html>
