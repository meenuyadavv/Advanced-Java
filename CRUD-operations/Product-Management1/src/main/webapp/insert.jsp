<%@ include file='menu.jsp' %> <!-- directive -->

<html>
<head>
<link href="css/sstyle.css" rel="stylesheet">
</head>

<div style='text-align:center'>
<h2><u> Insert Form </u> </h2>
</div>

<body>
<form action='save-record.jsp' method='post'>

<table class='taf' cellpadding='13px'>
<tr>
<td> Enter product id</td>
<td><input type='text' name='pid' class='tb' required> </td>
</tr>

<tr>
<td> Enter product name</td>
<td><input type='text' name='name' class='tb' required> </td>
</tr>


<tr>
<td> Enter product brand</td>
<td><input type='text' name='brand' class='tb' required> </td>
</tr>



<tr>
<td> Enter product price</td>
<td><input type='text' name='price' class='tb' required> </td>
</tr>

<tr>
<td colspan='2' align='right'>
<button class='bt'>Save Record </button>
</tr>

</table>

</form>
</body>

</html>