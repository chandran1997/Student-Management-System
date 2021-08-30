<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%

String course= request.getParameter("course");
String duration= request.getParameter("duration");

Connection con;
PreparedStatement ps;

Class.forName("com.mysql.jdbc.Driver");
con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
ps= con.prepareStatement("insert into course(coursename, duration)values(?,?)");
ps.setString(1, course);
ps.setString(2, duration);

ps.executeUpdate();

out.println("Record Added");
%>