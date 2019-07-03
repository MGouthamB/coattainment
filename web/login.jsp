<%-- 
    Document   : login
    Created on : 31 Aug, 2018, 10:11:45 AM
    Author     : MY PC
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            h4{
                text-align: left;
                color: #FF0000;
                display: none;
            }
        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
        <link href="css/style_3.css" rel="stylesheet" type="text/css" media="all">
        <link href="//fonts.googleapis.com/css?family=Roboto+Slab:100,300,400,700Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900iSlabo+27px&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
        <script src="jq.js"></script>
        <script>
            $(document).ready(function(){
                <% 
                    int j=0;
                    String name=request.getParameter("usn");
                    String pwd=request.getParameter("psw");
                    if(name!=null)
                    {
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/16131a05e7","root","");
                            Statement st=c.createStatement();
                            ResultSet rs=st.executeQuery("select * from students where name='"+name+"'");
                            rs.next();
                            String p=rs.getString(2);
                            System.out.println(pwd);
                            if(p.equals(pwd)){
                                session.setAttribute("uname", name);
                                session.setAttribute("password", pwd);
                                response.sendRedirect("hpage.jsp");
                            }
                            else j=1;
                        }
                        catch(Exception e){j=2;System.out.println(e);}
                    }
                %>
                var j=<%=j%>;
                if(j===2){
                    document.getElementById("n").style.borderColor="#FF0000";
                    $("#iu").show();
                    $("#iu").fadeOut(4000);
                    setTimeout(function(){
                        document.getElementById("n").style.borderColor="white";
                    },4000);
                }
                if(j===1){
                    document.getElementById("n").value="<%=name%>";
                    document.getElementById("p").style.borderColor="#FF0000";
                    $("#ip").show();
                    $("#ip").fadeOut(4000);
                    setTimeout(function(){
                        document.getElementById("p").style.borderColor="white";
                    },4000);
                }
            });
        </script>
    </head>
    <body>
        <div class="agileheader">
            <h1>Login Form</h1>
        </div>
        <div class="main-w3l">
            <div class="w3layouts-main">
                <h2>Login Now</h2>
                <form action="login.jsp" method="post">
                    <input name="usn" type="text" id="n" required=""  />
                    <h4 id="iu">invalid username</h4>
                    <input name="psw" type="password" id="p" required="" />
                    <h4 id="ip">invalid password</h4>
                    <span><input type="checkbox" />Remember Me</span>
                    <h6><a href="#">Forgot Password?</a></h6>
                    <div class="clear"></div>
                    <input type="submit">
		</form>
                <p>Don't Have an Account ?<a href="reg.jsp">Register Now</a></p>
            </div>
        </div>
    </body>
</html>
