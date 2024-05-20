<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title> Login Page </title>
    </head>
    <body>
        <h1>Login</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" action="loginv.jsp"> 
                    <div align="left">
                        <label class="form-label">Username</label>
                        <input type="text" id="uname" name="uname" class="form-control" placeholder="Username" size="30px" required>    
                    </div>
                    <div align="left">
                        <label class="form-label">Password</label>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Password" size="30px" required>    
                    </div>
                    </br>
                    <div align="left">
                        <input type="submit" id="submit" name="submit" value="submit" class="btn btn-info">
                        <input type="reset" id="reset" name="reset" value="reset" class="btn btn-warning">    
                    </div>
                </form>      
            </div>
            <div class="col-sm-8">
                <img src="Images/students.jpg" alt=""/>
            </div>
    </body>
</html>

