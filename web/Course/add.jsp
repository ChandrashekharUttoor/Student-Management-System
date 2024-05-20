<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String nume = request.getParameter("num");
String coursename = request.getParameter("name");
String duration = request.getParameter("duration");
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
pst = con.prepareStatement("insert into sms_course(slno,coursename,duration)values(?,?,?)");
pst.setString(1,nume);
pst.setString(2,coursename);
pst.setString(3,duration);
pst.executeUpdate();

out.println("Record Added");


%>