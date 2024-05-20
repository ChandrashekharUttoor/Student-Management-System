<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String batchid = request.getParameter("id2");
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
pst = con.prepareStatement("delete from sms_batch where slno = ?");
pst.setString(1, batchid);
pst.executeUpdate();
out.println("Batch Deleted");
%>