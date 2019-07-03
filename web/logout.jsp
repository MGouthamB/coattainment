<%-- 
    Document   : logout
    Created on : 23 Sep, 2018, 8:05:55 AM
    Author     : MY PC
--%>
<%
                        session.invalidate();
                        response.sendRedirect("login.jsp");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged Out</title>
    </head>
    <body>
    </body>
</html>
