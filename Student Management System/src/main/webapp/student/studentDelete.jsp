<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%

String batchid= request.getParameter("id");


Connection con;
PreparedStatement ps;

Class.forName("com.mysql.jdbc.Driver");
con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
ps= con.prepareStatement("delete from StudentDetails where id =? ");

ps.setString(1, batchid);

ps.executeUpdate();

out.println("Record Deleted");
%>