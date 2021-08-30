
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
#table-design {
	padding: 40px 40px;
	width: 100%;
	align: right;
	margin: 30px ;
}

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


table, td, th{
	border: 1px solid black;
	padding: 20px;
	
}

table{
	border-collapse: collapse;
	width: 90%;
	
}

th{
	background-color:rgb(19,40,49,1);
	color:#fff;
}



td{
	text-align: center;
	
}

a{
	text-decoration: none;
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

<h1 class="form-heading" align="center">Add Course Details</h1> <br> <br>

<form method="post" action="add.jsp">
<div align="center">
	
	<br><input class="input-type" type="text" name=course placeholder="Course Name" size=30px />
	</div> <br>
<div align="center">
	
	<input class="input-type" type="text" name=duration placeholder="Course Duration" size=30px />
	</div><br>
	<div align="center">
			<input class="button-type" type="submit" id="submit" value="submit" name="submit"/>
		
			<input class="button-type" type="reset" id="reset" value="reset" name="reset"/> <br>
		</div>

</form>
<br> <br> <br> <br>

<section id="table-design">
<div class="table">
<table   >

	
		<tr>
			
			<th>Course Name</th>
			<th>Duration</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		
			<tbody>
			
			<%
			
			Connection con;
			PreparedStatement ps;
			ResultSet rs;

			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
			String query="select * from course";
			Statement st=con.createStatement();
			rs= st.executeQuery(query);
			while(rs.next())
			{
				String id= rs.getString("id");
			
		
			%>
			
			
			<tr>
				<td><%=rs.getString("coursename") %></td>
				<td><%=rs.getString("duration") %></td>
				<td><a href="courseUpdate.jsp?id=<%=id %>">Edit</a></td>
				<td><a href="courseDelete.jsp?id=<%=id %>">Delete</a></td>
			</tr>
		
		
			<% } %>
		
		</tbody>
		
</table>
</div>
</section>
</body>
</html>