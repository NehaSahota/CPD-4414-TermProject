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
        <title>Login</title>
    </head>
    <body>
        <jsp:useBean id="student" scope="request" class="beans.Student"></jsp:useBean>
        <h1>Login Here<h1>
                
                <form name="login_form" action="loginServlet" method="POST">
                    <table border="0">
                        <thead>
                            <tr>
                                <th> Login Here</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Email : </td>
                                <td><input type="text" name="email" value="<jsp:getProperty name ="email" property="email"/>"></td>
                            </tr>
                            <tr>
                                <td>Password: </td>
                                <td><input type="password" name="password" value="<jsp:getProperty name="password" property="password"/>"></td>
                            </tr>
                            <tr>
                                <td><center><a href="Register.jsp">Register</a></center>></td>
                                <td><input type="submit" value="Login" name="Login" /></td>
                            </tr>
                        </tbody>
                    </table>

                    
                </form>  
    </body>
</html>
