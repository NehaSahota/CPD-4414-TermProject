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
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <title>Register</title>
    </head>
    <body>
        <nav class="navbar navbar-default">
          <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="#">
                <img alt="Brand" src="...">
              </a>
            </div>
          </div>
        </nav>

<!--      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Register.jsp">Register <span class="sr-only">(current)</span></a></li>
        
        <li><a href="Login.jsp">Login</a></li>
        </ul>
        </div>-->

    <center><h1>Register Here</h1></center>
        <jsp:useBean id="student" scope="request" class="beans.Student"></jsp:useBean>
    
    
    <div class="panel panel-info">
            <div class="panel-heading">Panel heading</div>
            <div class="panel-body">
    
        <div class="container">
            <form name="registration_form" action="RegistrationServlet" method="POST">
           

<!--            <center>-->

<!--                <table border="0">
                    <thead>
                        <tr>-->
<!--                            <h1>Registration Form</h1>                        
                        </tr>
                    </thead>
                    <tbody>
                        <tr>-->
                    <div class="input-group">
                        <!--                        <td>First Name : </td>-->
                            <span class="input-group-addon" id="basic-addon1">First Name</span>
                            <!--<td><input type="text" name="firstName"></td>-->

                            <input type="text" class="form-control" 
                                   placeholder="Username" name="firstName" value="<jsp:getProperty name="student" property="firstName"/>" 
                            aria-describedby="basic-addon1">
                    </div> <br>           
<!--                </tr>
                <tr>
                    <td>Last Name :</td>-->
                     <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">Last Name</span>
                             <input type="text" class="form-control" 
                                   placeholder="Last Name" name="lastName" value="<jsp:getProperty name="student" property="lastName"/>"
                                     aria-describedby="basic-addon1">
<!--                </tr>
                <tr> 
                   
                    <td>Email : </td>-->
                    </div><br>   
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">Email</span>
                            <input type="text" class="form-control" 
                                   placeholder="Email" name="email" value="<jsp:getProperty name="student" property="email"/>"
                                     aria-describedby="basic-addon1">
<!--                </tr>
                <tr>
                    <td>Address :</td>-->
                    </div><br>   
                                     
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">Address</span>               
                            <input type="text" class="form-control" 
                                   placeholder="Address" name="address" value="<jsp:getProperty name = "student" property="email"/>"
                                     aria-describedby="basic-addon1">
<!--                </tr>
                <tr>
                    <td>Password : </td>-->
                    </div><br>   
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">Password</span>                     
                            <input type="password" class="form-control" 
                                   placeholder="Password" name="password" value="<jsp:getProperty name = "student" property="password"/>"
                            aria-describedby="basic-addon1">
<!--                </tr>

                </tbody>

            </table>-->
                     </div><br>  
                     
                     <center><input type="reset" value="Clear" name="Clear" class="btn btn-default" /></center>
                     <center><input type="submit" value="Register" name="Register" class="btn btn-default"  /></center>



<!--        </center>-->
                 <center><p>Already Registered?</p><a href="Login.jsp">Click here to Login</a></center>
        </form>
        </div>
    </div>
                            <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
    </div>
                           
</body>
</html>
