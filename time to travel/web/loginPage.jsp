<%-- 
    Document   : loginPage
    Created on : Feb 26, 2020, 4:19:11 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<header>
    <jsp:include page="nav.jsp"/>
</header>
<body style="background-color:lightblue;">
<div id="Login"  style="">
    
  <div style="background-size:cover;">
       <center>
            <form action="login" method='POST' >
             <div style="padding-top: 30px;padding-bottom: 50px;margin-bottom: 40px ;;margin-top: 40px ;border-radius: 10px; height: 300px; width: 40%; background-color:whitesmoke; opacity: 0.8;">
		<p style="color: darkblue;font-size: 28px;margin-right: 300px; margin-top: 20px;font-family: arial;">User Login</p><br>
		<input style="border-radius: 5px; width: 80%;height: 40px;" type="text" name="username" placeholder="Email-Id" id="username"><br><br>
		<input style="border-radius: 5px; width: 80%;height: 40px;" type="password" name="password" placeholder="Password" id="password"><br>
		<p align="center">
                <input type="submit" style="color:white;border-radius: 20px;height: 30px;width: 40%;background-color: darkblue;font-size: 20px;">
                <a href="regPage.jsp" style="font-size: 14px;color: #176f98;font-family: arial;"> Create New Account</a></p>
            </div>
	   </form>
       </center>

        </div>
    </body>

    <footer>
        <jsp:include page="footer.jsp"/>
    </footer>
</html>