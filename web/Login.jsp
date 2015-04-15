<%-- 
    Document   : Login
    Created on : 5-Apr-2015, 8:13:35 PM
    Author     : c0646567
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Student"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <title>Login</title>
    </head>
    <body>
        <jsp:useBean id="student" scope="request" class="beans.Student"></jsp:useBean>
        <div class="container">
        <nav class="navbar navbar-default" style="height: 6em;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                          <img alt="Brand" src="feed1.jpg" height="60px" >
                        </a>
                    </div>
                </div>
            </nav>
        
       
            
            
                    <div class="panel panel-info">
                        <div class="panel-heading"><center><b>Welcome to Feedback Collection System</b></center></div>
                        <div class="panel-body">
        <center><h1>Login Here<h1></center>
                
                    <center><form name="login_form" action="loginServlet" method="POST" style="width: 40%;">

                            <div class="input-group">
                                 <span class="input-group-addon" id="basic-addon1">Email</span>
                                     <input type="text" class="form-control" 
                                            placeholder="Email" name="email" value="<jsp:getProperty name ="student" property="email"/>"
                                              aria-describedby="basic-addon1">
                            </div>

                            <br>
                            <div class="input-group">
                                 <span class="input-group-addon" id="basic-addon1">Password</span>
                                    <input type="password" class="form-control" 
                                            placeholder="Password" name="password" value="<jsp:getProperty name="student" property="password"/>"
                                              aria-describedby="basic-addon1">
                            </div>
                            <br>

                                
<center><input type="submit" value="Login" name="Login" class="btn btn-default"></center><br>
                                <center>New User? <a href="Register.jsp">Register Here</a></center>

                    
                    </form>  </center>
           </div>
                                                     </div>
                
                    <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
                </div>
            </div>
       
    </body>
</html>
