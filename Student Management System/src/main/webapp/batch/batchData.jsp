<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%

String batchid= request.getParameter("id");
String batchname= request.getParameter("batchname");
String year= request.getParameter("year");

Connection con;
PreparedStatement ps;

Class.forName("com.mysql.jdbc.Driver");
con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
ps= con.prepareStatement("update batch set batchname = ?, year = ? where id = ?");
ps.setString(1, batchname);
ps.setString(2, year);
ps.setString(3, batchid);

ps.executeUpdate();

out.println("Record Updated");
%>