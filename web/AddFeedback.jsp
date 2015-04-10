<%-- 
    Document   : AddFeedback
    Created on : 7-Apr-2015, 12:49:20 AM
    Author     : c0646567
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Feedback"%>
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
        <title>Add Feedback Page</title>
    </head>
    <body>
        <div class="container">


            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img alt="Brand" src="...">
                        </a>
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-log-out"></span><a href="Logout.jsp">Log Out</a></button>
                    </div>
                </div>
            </nav>


            <div class="panel panel-info">
                <div class="panel-heading">Panel Heading</div>
                <div class="panel-body">
                    <div class="container" style="width: 30%;float: left;">

                        <ul class="nav nav-pills nav-stacked">

                            <li role="presentation"><a href="Welcome.jsp">Personal Information</a></li>
                            <li role="presentation" class="active"><a href="AddFeedback.jsp">Add Feedback</a></li>
                            <li role="presentation"><a href="ViewFeedback.jsp">View Feedback</a></li>

                        </ul>

                    </div>


                    <!--              <div class="container"> -->
                    <div class="well" style="width: 70%;float: right;">
                        <center><h3>Add your feedback here</h3></center>


                        <div class="dropdown">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                                Category
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Faculty</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Cafe</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Course</a></li>

                            </ul>
                        </div>



                        <div class="input-group">

                            <span class="input-group-addon" id="basic-addon1">Feedback</span>


                            <input type="textarea" class="form-control" 
                                   placeholder="Feedback" name="feednack" value="" 
                                   aria-describedby="basic-addon1">
                        </div> <br> 








                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span>Add</button>


                    </div>


                    <br><br>
                
                    <br><br>
                </div>
                <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
            </div>

        </div>>

    </body>
</html>
