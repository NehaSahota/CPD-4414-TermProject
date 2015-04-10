<%-- 
    Document   : ViewFeedback
    Created on : 8-Apr-2015, 6:33:25 PM
    Author     : c0646567
--%>
<%@page import="java.util.List"%>
<%@page import="beans.Student"%>
<%@page import="beans.Feedback"%>
<%@page import="beans.FeedbackList"%>
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
        <jsp:useBean id="feedbackListBean" scope="request" class="beans.FeedbackList"></jsp:useBean>
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

                                <li role="presentation"><a href="Welcome.jsp">Personal Information</a></li>
                                <li role="presentation"><a href="AddFeedback.jsp">Add Feedback</a></li>
                                <li role="presentation" class="active"><a href="ViewFeedback.jsp">View Feedback</a></li>

                            </ul>

                        </div>

                        <div class="well" style="width: 70%;float: right;">

                            <center><h3>View your feedback here</h3></center>


                        <%

                            Student obj = (Student) session.getAttribute("curObj");
                            Feedback feed = new Feedback();
                            String currID = obj.getId();
                            //feed.setId(currID);

                            //feed.GetFeedback();
                            String query = "SELECT * from feedback where id=" + currID;
                            feedbackListBean.getFeedbackData(query);
                            List<Feedback> feedlist = feedbackListBean.getFeedbackList();
                            for (int i = 0; i < feedlist.size(); i += 1) {
                                Feedback f = feedlist.get(i);

                                out.print("<br>");
                                out.print("<ul>");
                                out.print("<li>Feedback ID : ");
                                out.print(f.getFeedback_id());
                                out.print("</li>");
                                out.print("<li>Student ID :");
                                out.print(f.getId());
                           
                                out.print("</li>");
                                out.print("<li>");
                                out.print("Date :");
                                out.print(f.getDate());
                                out.print("</ll>");
                                out.print("<li>");
                                out.print("Feedback :");
                                out.print(f.getFeedback());
                                out.print("<li>");
                                out.print("Category:");
                                out.print(f.getCategory());
                                out.print("</li>");
                                out.print("</ul>");
                           
                               
                                out.print("<a href='EditDetails.jsp'><button class='btn btn-default' style='margin-left:2em;'><span class='glyphicon glyphicon-edit'>Edit</button></span></a>");
                                 out.print("<br>");
                            }
                        %>



                        <!--              <div class="container"> -->


                    


                    </div>


                    <br><br>

                    <br><br>

                </div>
                <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
            </div>
        </div>
    </body>
</html>
