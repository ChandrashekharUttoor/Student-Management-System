<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title> Edit Page </title>
    </head>
    <body>
        <h1>Edit Batch</h1>
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="batchdata.jsp">
                     <% 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
                                Class.forName("com.mysql.jdbc.Driver");
                               con = DriverManager.getConnection("jdbc:mysql://localhost/projects","root","1996");
                               String id =request.getParameter("id1");
                               pst=con.prepareStatement("select * from sms_batch where slno = ?");
                               pst.setString(1,id);
                               rs= pst.executeQuery();
                               
                               while(rs.next())
                               {
                            %>
 
                     <div>
                        <label class="form-label">Serial Number</label>
                        <input type="text" id="id" name="id" placeholder="Course ID" class="form-control" value="<%=rs.getInt("slno")%>" required>
                     </div>
                    
                    <div>
                        <label class="form-label">Batch Name</label>
                        <input type="text" id="bname" name="bname" placeholder="Batch Name" class="form-control" value="<%=rs.getString("batchname")%>" required>
                     </div>
                    <div>
                        <label class="form-label">Year</label>
                        <input type="text" id="year" name="year" placeholder="Year" class="form-control" value="<%=rs.getString("year")%>" required>
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