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
</header>
<section>
<center>
<h1>student regitration</h1>
<br>
<br>
<form action="RegSer" method="post">
<input type="number" name="txtuid" placeholder="userid" />
<br>
<br>
<input type="text" name="txtpass" placeholder="password"/>
<br>
<br>
<input type="text" name="txtemail" placeholder="email"/>
<br>
<br>
<input type="text" name="txtmobile" placeholder="mobile"/>
<br>
<br>
<input type="submit" name="btn" value="submit"/>
<br>
<br>
<a href="student.jsp">Student login</a>

</form>
</center>
</section>
<footer>
</footer>
</body>
</html>