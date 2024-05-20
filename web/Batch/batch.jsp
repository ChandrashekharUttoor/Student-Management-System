<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title> Batch Menu </title>
    </head>
    <body>
        <h1 style="text-align: center; color: red; background: powderblue">Batch</h1>
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Serial Number</label>
                        <input type="text" id="sn" name="sn" placeholder="Serial Number" class="form-control" required>
                     </div>
                    <div>
                        <label class="form-label">Batch Name</label>
                        <input type="text" id="bname" name="bname" placeholder="Batch Name" class="form-control" required>
                     </div>
                    <div>
                        <label class="form-label">Year</label>
                        <input type="text" id="year" name="year" placeholder="Year" class="form-control" required>
                     </div>
                  <div>
                      <input type="submit" name="submit" class="btn btn-info" value="submit">
                       <input type="reset" name="reset" class="btn btn-warning" value="reset">
                     </div>
                </form>
            </div>
            <div class="col-sm-8">
                <div class="panel-body">
                    <table id="tbl-course" class="table table-responsive table-bordered" cellpadding="0" witdh="100%">
                        <thread>
                            <tr>
                                <th>Serial Number</th>
                                <th>Batch Name</th>
                                <th>Year</th>
                                <th>Edit</th>
                                <th>Delete</th>
                                
                            </tr>
                            <tbody>
                                <%
                                
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/projects","root","1996");
                                String query="select * from sms_batch";
                                Statement st=con.createStatement();
                                rs=st.executeQuery(query);
                                while(rs.next())
                                {
                                String id = rs.getString("slno");
                                String bname = rs.getString("batchname");
                                String byear = rs.getString("year");
                                
                                
                                %>
                                <tr>
                                    <td><%=rs.getInt("slno")%></td>
                                    <td><%=rs.getString("batchname")%></td>
                                    <td><%=rs.getString("year")%></td>
                                    <td><a href="batchupdate.jsp?id1=<%=id%>">Edit</a></td>
                                    <td><a href="batchdelete.jsp?id2=<%=id%>">Delete</a></td>
                                </tr>
                            <%} %>    
                                
                            </tbody>
                        
                    </table>
                    
                </div>
                
                
            </div>
            
            
        </div>
        
        
        
    </body>
</html>
