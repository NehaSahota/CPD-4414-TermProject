<%-- 
    Document   : Welcome
    Created on : 5-Apr-2015, 7:06:57 PM
    Author     : c0646567
--%>

<%@page import="beans.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Welcome Page</title>
    </head>
    <body>

        <div class="container">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img alt="Brand" src="...">
                        </a>
                        <button type="button" class="btn btn-default" style="margin-left: 70em;"><span class="glyphicon glyphicon-log-out"></span><a href="Logout.jsp">Log Out</a></button>
                    </div>
                </div>
            </nav>
            <div class="panel panel-info">
                <div class="panel-heading">Panel Heading</div>
                <div class="panel-body">
                    <div class="container" style="width: 30%;float: left;">

                        <ul class="nav nav-pills nav-stacked">

                            <li role="presentation" class="active"><a href="#">Personal Information</a></li>
                            <li role="presentation"><a href="AddFeedback.jsp">Add Feedback</a></li>
                            <li role="presentation"><a href="ViewFeedback.jsp">View Feedback</a></li>

                        </ul>

                    </div>

                    <!--              <div class="container"> -->
                    <div class="well" style="width: 70%;float: right;">

                        <%
                            HttpSession sessionUser = request.getSession(false);
                            String us = (String) sessionUser.getAttribute("email");

                            Student std1 = new Student();
                            std1.setEmail(us);
                            std1.GetUser();

                            session.setAttribute("curObj", std1);

                            out.print("<center><h3>Welcome to your profile page</h3></center>");
                            out.print("<br>");
                            out.print("<ul>");
                            out.print("<li>");
                            out.print("First Name :");
                            out.print(std1.getFirstName());
                            out.print("</li>");
                            out.print("<li>");
                            out.print("Last Name :");
                            out.print(std1.getLastName());

                            out.print("</li>");
                            out.print("<li>");
                            out.print("Email :");
                            out.print(std1.getEmail());
                            out.print("</li>");
                            out.print("<li>");
                            out.print("Address :");
                            out.print(std1.getAddress());
                            out.print("</li>");
                            out.print("<li>");
                            out.print("Password :");
                            out.print(std1.getPassword());
                            out.print("</li>");

                            out.print("</ul>");

                        %>

                        <a href="EditDetails.jsp"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>Edit</button></a>
                        <a href="#"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span>Delete</button></a>


                    </div>


                    <br><br>

                    <br><br>
                </div>
                <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
            </div>
        </div>

    </body>
</html>
