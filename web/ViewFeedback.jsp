<%-- 
    Document   : ViewFeedback
    Created on : 8-Apr-2015, 6:33:25 PM
    Author     : c0646567
--%>
<%@page import="beans.Student"%>
<%@page import="beans.Feedback"%>
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
                        //HttpSession sessionUser = request.getSession(false);
                        Student obj = (Student) session.getAttribute("curObj");
                        
                        Feedback feed = new Feedback();
                        feed.setId(obj.getId());
                        feed.GetFeedback();

                        //session.setAttribute("curObj", feed);
                        
                      
                        out.print("<br>");
                        out.print("Feedback ID :");
                        out.print(feed.getFeedback_id());
                        out.print("<br>");
                        out.print("Student ID :");
                        out.print(feed.getId());

                        out.print("<br>");
                        out.print("Date :");
                        out.print(feed.getDate());
                        out.print("<br>");
                        out.print("Feedback :");
                        out.print(feed.getFeedback());
                        out.print("<br>");
                        out.print("Category:");
                        out.print(feed.getCategory());
                        out.print("<br>");

                    %>

         
                
                <!--              <div class="container"> -->
        

         <a href="EditDetails.jsp"><button type="button" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>Edit</button></a>


                </div>


                <br><br>
          
                <br><br>
                  
            </div>
                                 <div class="panel-footer"><center>Copyright &copy; Neha</center></div>
      </div>
</div>
    </body>
</html>
