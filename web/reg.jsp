<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>user profile form Responsive Widget Template :: W3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="User Profile Form A Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="css/style_2.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<script src="jq.js"></script>
<script>
    $(document).ready(function(){
                <% 
                    String name=request.getParameter("un");
                    String pwd=request.getParameter("ps");
                    String email=request.getParameter("em");
                    String phno=request.getParameter("pn");
                    if(name!=null)
                    {
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/16131a05e7","root","");
                            PreparedStatement st=c.prepareStatement("insert into students values(?,?,?,?)");
                            st.setString(1, name);
                            st.setString(2, pwd);
                            st.setString(3, email);
                            st.setString(4, phno);
                            st.executeUpdate();  
                            %>
                                    alert("Successfully Registered");
                                    <%
                            response.sendRedirect("login.jsp");
                        }
                        catch(Exception e){System.out.println(e);%>alert("user already exist with that detais");<%}
                    }
%>
                    });
</script>
<!--//online-fonts -->
</head>
<body>
<div class="header">
	<h1>user profile form</h1>
</div>
<div class="w3-main">
		<div class="form-w3l">
			<div class="img">
                            <img src="images/pro.png" alt="image" height="100px">
				<h2>signup here</h2>
			</div>	
			<form action="reg.jsp" method="post">
				<div class="w3l-user">
					<span><i class="fa fa-user-circle-o w3l-1" aria-hidden="true"></i></span>
					<input type="text" name="un" placeholder="username" required=""/>
					<div class="clear"></div>
				</div>
				
				<div class="w3l-password">
					<span><i class="fa fa-lock w3l-2" aria-hidden="true"></i></span>
					<input type="password" name="ps" placeholder="password" required=""/>
					<div class="clear"></div>
				</div>
				
				<div class="w3l-email">
					<span><i class="fa fa-envelope-o w3l-3" aria-hidden="true"></i></span>
					<input type="email" name="em" placeholder="info@example.com" required=""/>
					<div class="clear"></div>
				</div>
				
				<div class="w3l-phone">	
					<span><i class="fa fa-mobile w3l-4" aria-hidden="true"></i></span>
					<input type="text" name="pn" placeholder="+001" required=""/>
					<div class="clear"></div>
				</div>
				
				<div class="w3l-btn">
					<input type="submit" name="button" value="sign up"/>
				</div>
			</form>
		</div>
	</div>
	


</body>
</html>