<%-- 
    Document   : index
    Created on : 5-Apr-2015, 4:28:14 PM
    Author     : c0646567
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        
        <form name="loginForm" action="RegistrationServlet" method="POST">
            
            <table border="0">
                
                <thead>
                    <tr>
                        <th> Registration Form </th>
                    </tr>
                    
                </thead>
               
                <tbody>
                    <tr>
                        <td>Email : </td>
                        <td><input type="text" name="email" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td></td>
                    </tr>
                    
                   
                </tbody>
            </table>
            <input type="reset" value="Clear" name="Clear" />
            <input type="submit" value="Login" name="Login" />
            
        </form>
        
        
    </body>
</html>
