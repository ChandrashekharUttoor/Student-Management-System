<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title> Edite Page</title>
    </head>
    <body>
        <h1>Course</h1>
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="coursedata.jsp">
                     <% 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
                               Class.forName("com.mysql.jdbc.Driver");
                               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","1996");
                               String id = request.getParameter("id1");
                               pst=con.prepareStatement("select * from sms_course where slno = ?");
                               pst.setString(1,id);
                               rs= pst.executeQuery();
                               
                               while(rs.next())
                               {
                            %>
 
                     <div>
                        <label class="form-label"> Serial Number </label>
                        <input type="text" id="num1" name="num1" placeholder="Course ID" class="form-control" value="<%=rs.getInt("slno")%>" required>
                     </div>
                    
                    <div>
                        <label class="form-label">Course Name</label>
                        <input type="text" id="cname" name="cname" placeholder="Course Name" class="form-control" value="<%=rs.getString("coursename")%>" required>
                     </div>
                    <div>
                        <label class="form-label">Duration</label>
                        <input type="text" id="duration" name="duration" placeholder="duration" class="form-control" value="<%=rs.getString("duration")%>" required>
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
