<%@ page import="java.sql.*"%>
<html>
<style>
input{
           width:100%;
           font-size:20px;
}
</style>
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
        <%@ include file='menu.jsp' %> <!-- directive -->
        
        <form action='update-record.jsp' method='post'>
        
        <table class="tar" border='1' cellpadding='10px' style='margin-top:60px'>
            <tr style='background-color:orange; color:white; font-size:20px'>
            <th style='text-align:center' colspan='2'>Product Details</th>
             </tr>
                <tr style='color:orange'>
                    <th align="left">Product ID</th>
                    <td><%= rst.getString(1)%><input type='hidden' value='<%=pid%>' name='pid'></td>
                </tr>
                
                <tr style='color:orange'>
                    <th align="left">Edit Product Name</th>
                     <td><input type='text' value='<%= rst.getString(2)%>' name='name' class='tb'></td>
                </tr>
                <tr style='color:orange'>
                    <th align="left">Edit Product Brand</th>
                     <td><input type='text' value='<%= rst.getString(3)%>' name='brand' class='tb'></td>
                </tr>
                <tr style='color:orange'>
                    <th align="left">Edit Product Price</th>
                    <td><input type='text' value='<%= rst.getString(4)%>' name='price' class='tb'></td>
                </tr>
                <tr>
                <td colspan='2' align='right'>
                <button class='bt'>Update Record </button>
                </td>
                </tr>
                
            </table>
            </form>
    <%
        } 
        else {
              %>  
        <%-- 	<jsp:include page="search.jsp" /> --%>
        	<jsp:include page="edit.jsp" />
        	
        	<div style='text-align:center; margin-top:20px'>
        	<h2>Product with id <%=pid%> does not </h2>
        	</div>
        	<% 
        }
        
        %>
</body>
</html>
