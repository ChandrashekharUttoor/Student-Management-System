<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String snum = request.getParameter("sn");
String batchname = request.getParameter("bname");
String year = request.getParameter("year");
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/projects","root","1996");
pst = con.prepareStatement("insert into sms_batch(slno,batchname,year)values(?,?,?)");
pst.setString(1,snum);
pst.setString(2,batchname);
pst.setString(3,year);
pst.executeUpdate();

out.println("Record Added");


%>