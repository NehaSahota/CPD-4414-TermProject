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
        <center><h1>Login Here<h1></center>
                
                <form name="login_form" action="loginServlet" method="POST">
<!--                    <table border="0">-->
<!--                       
                        <tbody>
                            <tr>
                                <td>Email : </td>-->
                            <div class="input-group">
                                 <span class="input-group-addon" id="basic-addon1">Email</span>
                                     <input type="text" class="form-control" 
                                            placeholder="Email" name="email" value="<jsp:getProperty name ="student" property="email"/>"
                                              aria-describedby="basic-addon1">
                            </div>
<!--                            </tr>
                            <tr>
                                <td>Password: </td>-->
                            <br>
                            <div class="input-group">
                                 <span class="input-group-addon" id="basic-addon1">Password</span>
                                    <input type="password" class="form-control" 
                                            placeholder="Password" name="password" value="<jsp:getProperty name="student" property="password"/>"
                                              aria-describedby="basic-addon1">
                            </div>
                            <br>
<!--                            </tr>
                            <tr>-->
                                
                                <center><input type="submit" value="Login" name="Login" class="btn btn-default"></center><br>
                                <center>New User? <a href="Register.jsp">Register Here</a></center>
<!--                            </tr>
                        </tbody>
                    </table>-->

                    
                </form>  
    </body>
</html>
