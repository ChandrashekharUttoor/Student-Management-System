<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String courseid = request.getParameter("num1");
String coursename = request.getParameter("cname");
String duration = request.getParameter("duration");
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
pst = con.prepareStatement("update sms_course set coursename = ? , duration = ? where slno = ?");
pst.setString(1, coursename);
pst.setString(2, duration);
pst.setString(3, courseid);
pst.executeUpdate();

out.println("Record Updated");


%>
