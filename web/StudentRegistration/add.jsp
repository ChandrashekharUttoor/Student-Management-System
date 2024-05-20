<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String snume = request.getParameter("snum");
String studentname = request.getParameter("sname");
String course = request.getParameter("course");
String batch = request.getParameter("batch");
String address = request.getParameter("address");
String phone = request.getParameter("phone");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
pst = con.prepareStatement("insert into sms_student(slno,studentname,course,batch,address,phone)values(?,?,?,?,?,?)");
pst.setString(1,snume);
pst.setString(2,studentname);
pst.setString(3,course);
pst.setString(4,batch);
pst.setString(5,address);
pst.setString(6,phone);
pst.executeUpdate();

out.println("Student Details Added");


%>