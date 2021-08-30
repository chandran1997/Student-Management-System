<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%

String courseid= request.getParameter("id");


Connection con;
PreparedStatement ps;

Class.forName("com.mysql.jdbc.Driver");
con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
ps= con.prepareStatement("delete from course where id =? ");

ps.setString(1, courseid);

ps.executeUpdate();

out.println("Record Deleted");
%>