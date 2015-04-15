<%-- 
    Document   : EditFeedback
    Created on : 10-Apr-2015, 3:44:50 AM
    Author     : c0646567
--%>

<%@page import="java.util.List"%>
<%@page import="beans.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Feedback"%>
<%@page import="beans.FeedbackList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                var url = window.location.href;
                var res = url.split("=");
                var feed = res[1];
                $('#editPagefeedbackId').val(feed);
            });
        </script>
        <script src="js/updatefeed.js"></script>


        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="feedbackListBean" scope="request" class="beans.FeedbackList"></jsp:useBean>
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
                                <li role="presentation"><a href="AddFeedback.jsp">Add Feedback</a></li>
                                <li role="presentation"><a href="ViewFeedback.jsp">View Feedback</a></li>

                            </ul>

                        </div>

                    <%

                        Student obj = (Student) session.getAttribute("curObj");
                        Feedback feed = new Feedback();
                        String currID = obj.getId();

                    %>



                    <div class="well" style="width: 70%;float: right;">
                        <span class="glyphicon glyphicon-hand-left"></span><a href="ViewFeedback.jsp">Back</a>
                        <center><h3>Edit your feedback here</h3></center>

                        <div class="container" style="width: 70%;">

                            <div class="input-group">                 
                                <input type="hidden" id="studentId" value="<%=currID%>" >
                                <input type="hidden" id="editPagefeedbackId" name="feedbackId" >
                            </div><br>

                            <div class="input-group">                 
                                <select id="categ" name="categ" style="width:06.3em; height: 02.2em;">
                                    <option value="Faculty">Faculty</option>
                                    <option value="Cafe">Cafe</option>
                                    <option value="Course">Course</option>
                                </select>
                            </div><br>

                            <div class="input-group">

                                <span class="input-group-addon" id="basic-addon1">Feedback</span>


                                <input type="textarea" id ="editedFeedback" class="form-control" 
                                       placeholder="Feedback" name="feedback"  
                                       aria-describedby="basic-addon1">
                            </div> <br>           




                            <button type="button" id="updatfeedbackId" class="btn btn-default feedbackUpdate"><span class="glyphicon glyphicon-edit"></span>Update</button>



                        </div>

                        <!--                    <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>Edit</button>-->


                    </div>
                </div>

                <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
            </div>
        </div>                  
    </body>
</html>
