<%
String name = request.getParameter("username");
String pass = request.getParameter("password");


if(name.equals("admin") && pass.equals("meenu")){
	
	response.sendRedirect("home.jsp");
}else{
	
	%>
	<jsp:include page="loginform.html"/>
    <div style='text-align:center'>
    <h3 style='color:red'> user name or password is incorrect </h3>
	</div>
	 <%
}

%>