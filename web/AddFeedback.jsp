<%-- 
    Document   : AddFeedback
    Created on : 7-Apr-2015, 12:49:20 AM
    Author     : c0646567
--%>

<%@page import="beans.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Feedback"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="js/editFeed.js"></script>
        <!--         Latest compiled and minified CSS 
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        
                 Optional theme 
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        
                 Latest compiled and minified JavaScript 
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>-->
        <title>Add Feedback Page</title>
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

                        <center><h3>Add your feedback here</h3></center>
                        
                        
                        
                        <%
                            Student obj = (Student) session.getAttribute("curObj");
                            Feedback feed = new Feedback();
                            String currID = obj.getId();
 
                       %>
                        


                            <div class="input-group">                 
                                <input type="hidden" id="studentId" value="<%=currID%>" >
                            </div><br>
                            <div class="input-group">                 
                                <select id="categ" name="categ" style="width:06.3em; height: 02.2em;">
                                    <option value="Faculty">Faculty</option>
                                    <option value="Cafe">Cafe</option>
                                    <option value="Course">Course</option>
                                     <option value="Library">Library</option>
                                </select>
                            </div><br>

                           


                            <div class="input-group">

                                <span class="input-group-addon" id="basic-addon1">Feedback</span>


                                <input type="textarea" id="feedback"  class="form-control" 
                                       placeholder="Feedback" name="feedback" 
                                       aria-describedby="basic-addon1">
                            </div> <br> 

                            <button type="button" id="saveFeedback" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span>Add</button>
                     

                    </div>


                    <br><br>

                    <br><br>
                </div>
                <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
            </div>

        </div>

    </body>
</html>
