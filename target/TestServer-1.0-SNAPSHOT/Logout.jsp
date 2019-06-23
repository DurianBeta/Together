<%-- 
    Document   : Logout
    Created on : Oct 30, 2018, 7:16:55 PM
    Author     : Dell64
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
       <%
    session.invalidate(); //session destroy
    response.sendRedirect("Homestay"); //after destroy redirect to index.jsp page
%>
    </body>
</html>
