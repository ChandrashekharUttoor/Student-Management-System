<%@page import= "java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver");%>
<%
    Connection con;
    PreparedStatement pstm;
    String id = request.getParameter("id2");
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
    pstm = con.prepareStatement("delete from sms_course where slno = ?");
    pstm.setString(1, id);
    pstm.executeUpdate();
    out.println("Record Deleted");
%>
