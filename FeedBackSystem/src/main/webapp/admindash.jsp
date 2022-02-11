<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
	response.sendRedirect("admin.jsp");
}
%>
<center>
<header>
<a href="index.jsp">Home</a>
<a href="logout.jsp">Logout</a>

</header>
<section>
<h1>Welcome <%=session.getAttribute("uid")%> in Admin dashbord</h1>
<br>
<br>
<form action="FeedSer" method="post"></form>
<table border="2" bgcolor=black>
<tr><th>feedbackid</th><th>batchname</th><th>facultyname</th><th>feedbackdiscription</th><th>ratting</th></tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbacksystem","root","");
Statement st=con.createStatement();
ResultSet x=st.executeQuery("select * from `feedback`");
while(x.next())
{
    out.println("<tr><td>"+x.getInt(1)+"</td><td>"+x.getString(2)+"</td><td>"+x.getString(3)+"</td><td>"+x.getString(4)+"</td><td>"+x.getInt(5)+"</td></tr>");	
}
%>
</table>
</section>
<footer>
</footer>
</center>
</body>
</html>