<%-- 
    Document   : feedAdded
    Created on : 14-Apr-2015, 4:45:34 PM
    Author     : c0646567
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>Feedback Added</title>
    </head>
    <body>
        <div class="container">


            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img alt="Brand" src="feed1.jpg" height="60px" >
                        </a>
                        <button type="button" class="btn btn-default" style="margin-left: 70em;"><span class="glyphicon glyphicon-log-out"></span><a href="Logout.jsp">Log Out</a></button>
                    </div>
                </div>
            </nav>


            <div class="panel panel-info">
                <div class="panel-heading"><center><b>Welcome to Feedback Collection System</b></center></div>
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

                        <center><h3>Feedback Added Successfully </h3></center><br>
                        
                         <center><a href="ViewFeedback.jsp"><button type="button" id="viewFeedback" class="btn btn-default"><span class="glyphicon glyphicon-eye-open"></span>View Your Feedback</button></a></center>


                    </div>


                    <br><br>

                    <br><br>
                </div>
                <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
            </div>

        </div>
    </body>
</html>
