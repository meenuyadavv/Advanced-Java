<%@ include file='menu.jsp' %> <!-- directive -->
<html>
<head>
<link href="css/sstyle.css" rel="stylesheet">
</head>

<div style='text-align:center'>
<h2><u> Edit Form </u> </h2>
</div>

<body>
<!-- <form action='show-record.jsp' method='post'> -->
<form action="show-recod.jsp" method="post">


<table class='taf' cellpadding='13px'>
<tr>
<td> Enter product id</td>
<td><input type='text' name='pid' class='tb' required> </td>
<td> <button class='bt'> Show Record </button> </td> 
</tr>


</table>

</form>
</body>

</html>