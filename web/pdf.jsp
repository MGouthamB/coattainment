<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/top.css">
        <link rel="stylesheet" type="text/css" href="css/lp.css">
        <link rel="stylesheet" type="text/css" href="css/hpage.css">
        <script src="jq.js"></script>
        <script>
            $(document).ready(function(){
                    <%
                        if(session.getAttribute("uname")==null){
                        session.invalidate();
                        response.sendRedirect("login.jsp");
                        }
                        else{
                    %>
                            document.getElementById("usern").innerHTML="<%=session.getAttribute("uname")%>";
                    <%
                        }
                    %>
        });
        </script>
    </head>
    <body style="left:40%;background: none;background-color: #525659;" id="bd">
        <div id="navbar" style="z-index: 0">
            <ul id="topm" style="background:rgba(0, 0, 0, 0.34);">
                <li ><a href="#"><i class="fa fa-bars"></i></a></li>
                <li><a  href="hpage.jsp">Home</a></li>
                <li><a style="float: right;display: none" href="index_4.html" id="log">Login</a></li>
                <li><a id="sign2" style="float: right;" href="logout.jsp">SignOut</a></li>
                <li><a id="usern" style="float: right;" href="#"></a></li>
            </ul>
        </div>
        <div style="position: relative;top:49px"><iframe src="output1.pdf" width="100%" height="900px" /></div>
        </body>
</html>
