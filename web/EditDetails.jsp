<%-- 
    Document   : EditDetails.jsp
    Created on : 8-Apr-2015, 3:45:03 PM
    Author     : c0646567
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Student"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <title>Edit Details Page</title>
    </head>
    <body>
        <jsp:useBean id="student" scope="request" class="beans.Student"></jsp:useBean>

            <div class="panel panel-info">
                <div class="panel-heading">Panel Heading</div>
                <div class="panel-body">
                    <div class="container" style="width: 50%;float: left;">

                        <ul class="nav nav-pills nav-stacked">

                            <li role="presentation" class="active"><a href="#">Personal Information</a></li>
                            <li role="presentation"><a href="AddFeedback.jsp">Add Feedback</a></li>
                            <li role="presentation"><a href="#">View Feedback</a></li>

                        </ul>

                    </div>

                    <!--              <div class="container"> -->
                    <div class="well" style="width: 50%;float: right;">

                        <div class="container">
                            <form name="edit_form" action="#" method="POST">
                            <%
                                Student st1 = (Student) session.getAttribute("curObj");
                                String firstname = st1.getFirstName();
                                String lastname = st1.getLastName();
                                String email = st1.getEmail();
                                String address = st1.getAddress();
                                String password = st1.getPassword();
                            %>

                            <div class="input-group">

                                <span class="input-group-addon" id="basic-addon1">First Name</span>


                                <input type="text" class="form-control" 
                                       placeholder="First Name" name="firstName" value="<%=firstname%>" 
                                       aria-describedby="basic-addon1">
                            </div> <br>           

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1">Last Name</span>
                                <input type="text" class="form-control" 
                                       placeholder="Last Name" name="lastName" value="<%=lastname%>"
                                       aria-describedby="basic-addon1">

                            </div><br>   
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1">Email</span>
                                <input type="text" class="form-control" 
                                       placeholder="Email" name="email" value="<%=email%>"
                                       aria-describedby="basic-addon1">

                            </div><br>   

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1">Address</span>               
                                <input type="text" class="form-control" 
                                       placeholder="Address" name="address" value="<%=address%>"
                                       aria-describedby="basic-addon1">

                            </div><br>   
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1">Password</span>                     
                                <input type="password" class="form-control" 
                                       placeholder="Password" name="password" value="<%=password%>"
                                       aria-describedby="basic-addon1">

                            </div><br>  

                            <center><input type="reset" value="Clear" name="Clear" class="btn btn-default" /></center>
                            <center><input type="submit" value="Save" name="Save" class="btn btn-default"  /></center>





                        </form>
                    </div>

                    <!--                    <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>Edit</button>-->


                </div>

                </body>
                </html>
