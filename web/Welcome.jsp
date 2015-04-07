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
        <title>Welcome Page</title>
    </head>
    <body>
       <%   
       HttpSession sessionUser = request.getSession(false);
       String us = (String)sessionUser.getAttribute("email");
       
       Student std1 = new Student();
       std1.setEmail(us);
       std1.GetUser();
       
       out.print("Welcome ");
       out.print(std1.getFirstName());
       out.print(" ");
       out.print(std1.getLastName());
       out.print("!!!!");
       out.print("<br>");
       out.print(std1.getEmail());
       out.print("<br>");
       out.print(std1.getAddress());
       
 
       %>
       
       <br><br>
       <a href="Logout.jsp">Log Out</a>
       <br><br>
    </body>
</html>
