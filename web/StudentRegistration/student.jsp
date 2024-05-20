<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                          
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Student</title>
    </head>
    <body>
        <h1 style="text-align: center; color: red; background: powderblue">Student Registration</h1>
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Serial Number</label>
                        <input type="text" id="snum" name="snum" placeholder="Serial Number" class="form-control" required>
                     </div>
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" required>
                     </div>
                    <div>
                        <label class="form-label">Course</label>
                        <select name="course" id ="course" class="form-control">
                            <% 
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
                            String query="select * from sms_course";
                            Statement st=con.createStatement();
                            rs=st.executeQuery(query);
                            while(rs.next())
                            {
                             
                             String coursename = rs.getString("coursename");
                             %>
                             <option value="<%= coursename %>"> <%= coursename %></option>
                             <%
                            }
                            %>
                       </select>
                    </div>

                    <div>
                        <label class="form-label">Batch</label>
                        <select name="batch" id ="batch" class="form-control">
                            <% 
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
                            String query1="select * from sms_batch";
                            Statement st1=con.createStatement();
                            rs=st.executeQuery(query1);
                            while(rs.next())
                            {
                     
                             String batchname = rs.getString("batchname");
                             %>
                             <option value="<%= batchname %>"> <%= batchname %></option>
                             <%
                            }
                            %>
                            
                        </select>
                    </div>

                     <div>
                        <label class="form-label">Address</label>
                        <input type="text" id="address" name="address" placeholder="Address" class="form-control" required>
                     </div>
                     <div>
                        <label class="form-label">Phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" required>
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
                                <th>Student Name</th>
                                <th>Course</th>
                                <th>Batch</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Edit</th>
                                <th>Delete</th>
                                
                            </tr>
                            <tbody>
                                <%
                                
                             
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
                                String query2="select * from sms_student";
                                Statement st2 =con.createStatement();
                                rs = st2.executeQuery(query2);
                                while(rs.next()==true)
                                {
                                int id = rs.getInt("slno");
                                
                                %>
                                <tr>
                                    <td><%=rs.getInt("slno")%></td>
                                    <td><%=rs.getString("studentname")%></td>
                                     <td><%=rs.getString("course")%></td>
                                      <td><%=rs.getString("batch")%></td>
                                       <td><%=rs.getString("address")%></td>
                                        <td><%=rs.getString("phone")%></td>
                                      <td><a href="studentupdate.jsp?id1=<%=id%>">Edit</a></td>
                                    <td><a href="studentdelete.jsp?id2=<%=id%>">Delete</a></td>
                                </tr>
                              <% } %>
                                
                            </tbody>
                        
                    </table>

                   
                </div>
                
                
            </div>
            
            
        </div>
        
        
        
    </body>
</html>