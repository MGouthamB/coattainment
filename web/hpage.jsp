<%-- 
    Document   : hpage
    Created on : 3 Sep, 2018, 4:07:16 PM
    Author     : MY PC
--%>

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
                            document.getElementById("user").innerHTML="<%=session.getAttribute("uname")%>";
                    <%
                        }
                    %>
        });
        </script>
    </head>
    <body style="left:40%;" id="bd">
        <div id="navbar" style="z-index: 5">
            <ul id="topm" style="background:rgba(0, 0, 0, 0.34);">
                <li ><a href="#"><i class="fa fa-bars"></i></a></li>
                <li><a  href="#">Home</a></li>
                <li><a style="float: right;display: none" href="index_4.html" id="log">Login</a></li>
                <li><a id="sign2" style="float: right;" href="logout.jsp">SignOut</a></li>
                <li><a id="usern" style="float: right;" href="#"></a></li>
            </ul>
            <script>
                window.onscroll = function() {scrollFunction();};
                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("navbar").style.top = "0";
                    } 
                    else {
                        document.getElementById("navbar").style.top = "-50px";
                    }
                }
            </script>
        </div>
        <div id="main" >
            <ul id="topm" >
                <li ><a href="#"><i style="color:white;" class="fa fa-bars"></i></a></li>
                <li><a  href="#">Home</a></li>
                <li><a style="float: right;display: none" href="#" id="log">Login</a></li>
                <li><a  style="float: right;" href="logout.jsp">SignOut</a></li>
                <li><a id="user" style="float: right;" href="#" ></a></li>
            </ul>
        </div>
        <div>
            <form action="upload" method="post" enctype="multipart/form-data" >
                <div >
                    <h1>Details of CO attainment</h1>
                    <table style="margin-left:325px">
                        <tr><th><h2>Programme </h2></th></tr>
                        <tr><td><input type="text" name="11" required="" placeholder="B.Tech"></td></tr>
                        <tr><th><h2>Faculty Name</h2></th></tr>
                        <tr><td><input type="text" name="2" required="" placeholder="GOUTHAM"></td></tr>
                        <tr><th><h2>Subject Name & Code</h2></th></tr>
                        <tr><td><input type="text" name="3" required="" placeholder="WEB PROGRAMMING Lab  15CT1123"></td></tr>
                        <tr><th><h2>Academic Year</h2></th></tr>
                        <tr><td><input type="text" name="4" required="" placeholder="2015-16"></td></tr>
                        <tr><th><h2>Section</h2></th></tr><tr><td><input type="text" name="5" required="" placeholder="CSE-2"></td></tr>
                        <tr><th><h2>Semester</h2></th></tr>
                        <tr><td><input type="text" name="6" required="" placeholder="V"></td></tr>
                    </table>
                </div>
                <div id="frames">
                    <div id="s" style="position:relative;top:0px;z-index:2;">
                        <input  type="file" name="file" style="width: 100%;height:100%" onchange='getImg(event)' accept=".xlsx"/>
                        <script>
                            function defaul(){
                                $("#img").attr("src","images/upic_1.png");
                                document.getElementById("h").innerHTML='Drag here or <ha style="color:dodgerblue">Browse</ha> to Upload';
                            }
                            function getImg(e){
                                var files = e.target.files;
                                var file = files[0];
                                $("#img").attr("src","images/f1.gif");
                                setTimeout(function() {
                                    $("#img").attr("src","images/fp.png");
                                    document.getElementById("h").innerHTML=file.name;
                                }, 5000);
                            }
                        </script>
                    </div>
                    <div style=" position:relative; top:-251px;left:20.1%; z-index:0;background:rgba(0,0,0,0.6);background-color: white;" id='l'>
                        <img src="images/upic_1.png" width="100px" id="img" align="center"/>
                        <h2 id="h" align="center">Drag here or <ha style="color:dodgerblue">Browse</ha> to Upload</h2>
                    </div>
                    <div style=" position:relative; top:-210px; z-index:0;" align="center" >
                        <input type='submit' >
                        <input type='reset' onclick="defaul()">
                    </div>
                </div>
            </form>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
    </body>
</html>
