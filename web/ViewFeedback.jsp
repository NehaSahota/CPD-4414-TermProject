<%-- 
    Document   : ViewFeedback
    Created on : 8-Apr-2015, 6:33:25 PM
    Author     : c0646567
--%>

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
        <title>View Feedback Page</title>
    </head>
    <body>
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

         <a href="EditDetails.jsp"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>Edit</button></a>


                </div>


                <br><br>
                <a href="Logout.jsp">Log Out</a>
                <br><br>
            </div>
            <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
        </div>

    </body>
</html>
