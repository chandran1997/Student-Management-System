
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
<link rel="Stylesheet" href="style.css">

<style type="text/css">

.form-heading {
	color:#fff;
	font-size: 25px;
	border-radius: 30px;
	background: rgb(19,40,49,1);
	padding: 12px;
	margin-top: 20px;
	margin-left: 510px;
	margin-right: 510px;	
}

.input-type{
	padding: 12px 20px;
	border: none;
	border-bottom: 2px solid rgb(19,40,49,1);
}

.button-type{

	color:#fff;
	font-size: 25px;
	border-radius: 30px;	
	background: rgb(19,40,49,1);
	padding: 12px;
	margin-top: 20px;
	margin-left: 400px;
	margin-right: 400px;	
	font-size: 12px;
	width: 180px;
}

</style>

</head>
<body>


	<section id="home">
	
	<div class="inline-text">
    <h1>Course</h1>
    </div>
	<div id="navbar">
		
    		
	</div>
</section>
	
	
<br><br>
<h1 align="center" class="form-heading" >Edit Course Details</h1> <br> <br>

<form method="post" action="courseData.jsp">

		<%
		
		Connection con;
		PreparedStatement ps;
		ResultSet rs;

		Class.forName("com.mysql.jdbc.Driver");
		con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
		
		String id = request.getParameter("id");
		
		ps=con.prepareStatement("select * from course where id=?");
		ps.setString(1, id);
		
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			
		
		
		%>


<div align="center">

     ID : <br>
	<br><input class="input-type" type="text" name=id value="<%= rs.getString("id") %>" placeholder="course name" size=30px />
	</div> <br>
	<div align="center">
	Course Name : <br>
	<br><input class="input-type" type="text" name=course value="<%= rs.getString("coursename") %>" placeholder="course name" size=30px />
	</div> <br>
<div align="center">
	Duration : <br><br>
	<input class="input-type" type="text" name=duration value="<%= rs.getString("duration") %>"  placeholder="course Duration" size=30px />
	</div><br>
	<div align="center">
			<input class="button-type" type="submit" id="submit" value="submit" name="submit"/>
		
			<input class="button-type" type="reset" id="reset" value="reset" name="reset"/> <br>
		</div>
		
		
		<% } %>

</form>


<br> <br> <br> <br>



</body>
</html>