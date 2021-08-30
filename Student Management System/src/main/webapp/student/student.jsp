
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

	<%

		Connection con;
		PreparedStatement ps;
		ResultSet rs;

	%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Registration</title>
<link rel="stylesheet" href="style.css">

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
    <h1 >Student </h1>
    </div>
	<div id="navbar">
		
    		
	</div>
</section>

<br><br>
<h1 align="center" class="form-heading" >Add Students Details</h1> <br> <br>

<form method="post" action="add.jsp">

<div align="center">
	Student Name : <br>
	<br><input class="input-type" type="text" name=studentname placeholder="student name" size=30px />
	</div> <br>
	
<div align="center">
	Course : <br><br>
	<select class="input-type" name=course style="width:280px">
	
			<%
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
			
			String query = ("select * from course");
			Statement st= con.createStatement();
			 rs=st.executeQuery(query);
			while(rs.next())
			{
				String id= rs.getString("id");
				String coursename= rs.getString("coursename");
			%>
			
				
				<option value=  "<%= id %>"  >    <%= coursename%>    </option>
				
				<%
			}
				%>
	</select>
	</div><br>
	
	<div align="center">
	Batch : <br><br>
	<select class="input-type" name=batch style="width:280px">
			
			
			<% 
				Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
			
			String query1 = ("select * from batch");
			Statement st1= con.createStatement();
			 rs=st1.executeQuery(query1);
			while(rs.next())
			{
				String id= rs.getString("id");
				String batchname= rs.getString("batchname");
			%>
			
				
				<option value=  "<%= id %>"  >    <%= batchname%>    </option>
				
				<%
			}
				%>
	
	
	
		
	</select>
	</div><br>
	
	<div align="center">
	Address : <br>
	<br><input class="input-type" type="text" name=address placeholder="address " size=30px />
	</div> <br>
	
	<div align="center">
	Phone No : <br>
	<br><input class="input-type" type="text" name=phone placeholder="phone no" size=30px />
	</div> <br>
	
	<div align="center">
			<input class="button-type" type="submit" id="submit" value="submit" name="submit"/>
		
			<input class="button-type" type="reset" id="reset" value="reset" name="reset"/> <br>
		</div>

</form>
<br> <br> <br> <br>

<section id="table-design">

<table id= "datatable" >
	
		<tr>
			<th>Student Name</th>
			<th>Course</th>
			<th>Batch</th>
 			<th>Address</th>
 			<th>Phone Number</th>
			<th>Delete</th>
		</tr>
		
		
			<tbody>
			
			<%
		
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
			String query3="select s.id,s.studentname, c.coursename, b.batchname, s.address, s.phone from StudentDetails s JOIN course c ON s.course = c.id JOIN  batch b ON s.batch = b.id ";
			Statement st3=con.createStatement();
			rs= st3.executeQuery(query3);
			while(rs.next())
			{
				String id= rs.getString("s.id");
	
			%>
			
			<tr>
				<td><%=rs.getString("s.studentname") %></td>
				<td><%=rs.getString("c.coursename") %></td>
				<td><%=rs.getString("b.batchname") %></td>
				<td><%=rs.getString("s.address") %></td>
				<td><%=rs.getString("s.phone") %></td>
				
				<td><a href="studentDelete.jsp?id=<%=id%>">Delete</a></td>
			</tr>
		
		<%
		
				}
		
		%>
			
		
		</tbody>
		
</table>
</section>

</body>
</html>