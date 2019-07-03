<%-- 
    Document   : newjsp
    Created on : 8 Sep, 2018, 11:53:10 AM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String s=session.getAttribute("uname").toString();session.invalidate();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 id="9">Hello World!</h1>
        <script>
            var t="<%=s%>";
            alert(t);
        </script>
        
    </body>
</html>
