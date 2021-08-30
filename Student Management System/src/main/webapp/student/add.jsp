<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%

String studentname= request.getParameter("studentname");
String course= request.getParameter("course");
String batch= request.getParameter("batch");
String address= request.getParameter("address");
String phone= request.getParameter("phone");


Connection con;
PreparedStatement ps;

Class.forName("com.mysql.jdbc.Driver");
con =DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","chandran1997");
ps= con.prepareStatement("insert into StudentDetails(studentname, course, batch, address, phone )values(?,?,?,?,?)");
ps.setString(1, studentname);
ps.setString(2, course);
ps.setString(3, batch);
ps.setString(4, address);
ps.setString(5, phone);


ps.executeUpdate();

out.println("Record Added");
%>