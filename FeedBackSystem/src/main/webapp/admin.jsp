<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
<header>
<a href="admin.jsp">Admin login</a>
<a href="student.jsp">Student login</a>

</header>
<section>
<center>
<h1>admin login</h1>
<br>
<br>
<form action="adminSer" method="post">
<input type="number" name="txtuid" />
<br>
<br>
<input type="password" name="txtpass" />
<br>
<br>
<input type="submit" name="btn" value="submit"/>
<br>
<br>
</form>
</center>
</section>
<footer>

</footer>
</body>
</html>