<%-- 
    Document   : Register
    Created on : 5-Apr-2015, 6:18:45 PM
    Author     : c0646567
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Student"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Register Here</h1>
        <jsp:useBean id="student" scope="request" class="beans.Student"></jsp:useBean>
        <form name="registration_form" action="RegistrationServlet" method="POST">
            
            <center>
                
                <table border="0">
                    <thead>
                        <tr>
                            <th>Registration Form</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>First Name : </td>
                            <td><input type="text" name="firstName" value="<jsp:getProperty name="firstName" property="firstName"/>"></td>
                        </tr>
                        <tr>
                            <td>Last Name :</td>
                            <td><input type="text" name="lastName" value="<jsp:getProperty name="lastName" property="lastName"/>" /></td>
                        </tr>
                        <tr>
                            <td>Email : </td>
                            <td><input type="text" name="email" value="<jsp:getProperty name="email" property="email"/>" /></td>
                        </tr>
                        <tr>
                            <td>Address :</td>
                            <td><input type="text" name="address" value="<jsp:getProperty name = "email" property="email"/>" /></td>
                        </tr>
                        <tr>
                            <td>Password : </td>
                            <td><input type="password" name="password" value="<jsp:getProperty name = "password" property="password"/>" /></td>
                        </tr>
                     
                    </tbody>
                    <input type="reset" value="Clear" name="Clear" />
                    <input type="submit" value="Register" name="Register" />
                </table>

                
                
            </center>
            
        </form>
        
    </body>
</html>
