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
<%
if(session.getAttribute("uid")==null)
{
	response.sendRedirect("student.jsp");
}
%>

<center>
<header>
<a href="index.jsp">Home</a>
<a href="logout.jsp">Logout</a>

</header>
<section>

<h1>Welcome <%=session.getAttribute("uid")%> in  Feedback submission form</h1>
<br>
<br>
<form action="FeedSer" method="post">
<input type="text" name="txtbname" placeholder="batchname" />
<br>
<br>
<input type="text" name="txtfname" placeholder="facultyname"/>
<br>
<br>
<input type="text" name="txtfd" placeholder="feeddsec"/>
<br>
<br>
<input type="number" name="txtrat" placeholder="ratting from 1 to 5"/>
<br>
<br>
<input type="submit" name="btn" value="submit"/>
<br>
<br>

</form>
<%
if(request.getParameter("s")!=null)
{
 out.println(request.getParameter("s"));	
}
%>


</section>
<footer>
</footer>
</center>
</body>
</html>