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
<%response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
//response.setDateHeader("Expires", 0); // Proxies.
response.setDateHeader("Expires",-1);
%>
<center>
<header>
<a href="admin.jsp">Admin login</a>
<a href="student.jsp">Student login</a>
</header>
<section>
<h1>Welcome in feedback System </h1>
</section>
<footer>
</footer>
</center>
</body>
</html>