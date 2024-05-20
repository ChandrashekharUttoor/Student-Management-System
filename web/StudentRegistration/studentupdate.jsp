<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Batch</h1>
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="studentdata.jsp">
                     <% 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
                               Class.forName("com.mysql.jdbc.Driver");
                               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
                               String id=request.getParameter("id1");
                               pst=con.prepareStatement("select * from sms_student where slno = ?");
                               pst.setString(1,id);
                               rs= pst.executeQuery();
                               
                               while(rs.next())
                               {
                            %>
 
                     <div>
                        <label class="form-label">Serial Number</label>
                        <input type="text" id="num" name="num" placeholder="Serial Number" class="form-control" value="<%=rs.getInt("slno")%>" required>
                     </div>
                    
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" value="<%=rs.getString("studentname")%>" required>
                     </div>
                    <div>
                        <label class="form-label">Course</label>
                        <input type="text" id="course" name="course" placeholder="Course" class="form-control" value="<%=rs.getString("course")%>" required>
                     </div>
                     <div>
                        <label class="form-label">Batch</label>
                        <input type="text" id="batch" name="batch" placeholder="Batch" class="form-control" value="<%=rs.getString("batch")%>" required>
                     </div>
                     <div>
                        <label class="form-label">Address</label>
                        <input type="text" id="adr" name="adr" placeholder="Address" class="form-control" value="<%=rs.getString("address")%>" required>
                     </div>
                     <div>
                        <label class="form-label">Phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" value="<%=rs.getString("phone")%>" required>
                     </div>
                  <div>
                      <input type="submit" name="submit" class="btn btn-info" value="submit">
                       <input type="reset" name="reset" class="btn btn-warning" value="reset">
                     </div>
                     <%}%>
                </form>
            </div>
            <div class="col-sm-8">
               
                
                
            </div>
            
            
        </div>
        
        
        
    </body>
</html>