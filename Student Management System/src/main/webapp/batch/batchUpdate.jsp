
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Batch</title>
<link rel="Stylesheet" href="style.css"/>

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
    <h1>Batch</h1>
    </div>
	<div id="navbar">
		
    		
	</div>
</section>



<br><br>
<h1 class="form-heading" align="center">Edit Batch Details</h1> <br> <br>

<form method="post" action="batchData.jsp">

		<%
		
		Connection con;
		PreparedStatement ps;
		ResultSet rs;

		Class.forName("com.mysql.jdbc.Driver");
		con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
		
		String id = request.getParameter("id");
		
		ps=con.prepareStatement("select * from batch where id=?");
		ps.setString(1, id);
		
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			
		
		
		%>


<div align="center">

     ID : <br>
	<br><input class="input-type" type="text" name=id value="<%= rs.getString("id") %>" placeholder="batch id" size=30px />
	</div> <br>
	<div align="center">
	Batch Name : <br>
	<br><input class="input-type" type="text" name=batchname value="<%= rs.getString("batchname") %>" placeholder="batch name" size=30px />
	</div> <br>
<div align="center">
	Year : <br><br>
	<input class="input-type" type="text" name=year value="<%= rs.getString("year") %>"  placeholder=" year" size=30px />
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