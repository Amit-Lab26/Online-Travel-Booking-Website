<%-- 
    Document   : changepassword
    Created on : Mar 16, 2020, 3:29:22 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
    <div class="col-sm-12">
        <div class="addbus">
            <form method="POST" action="ChangePassword">
                <div>
                    <input type="password" name="curpwd" required>
                    <label><span class="glyphicon glyphicon-lock"></span> Current Password</label>
                </div>
                <div>
                    <input type="password" name="newpwd" required>
                    <label><span class="glyphicon glyphicon-lock"></span> New Password</label>
                </div>
                <div>
                    <input type="password" name="conpwd" required>
                    <label><span class="glyphicon glyphicon-lock    "></span> Confirm Password</label>
                </div>
                <div class="errmsg"></div>
                <div>
                    <%HttpSession mysession = request.getSession();%>
                    <button class="login" name="idref" value="<%= mysession.getAttribute("userid")%>">
                        <span class="glyphicon glyphicon-log-in"></span> Change Password</button>
                </div>
            </form>
    </div>
</div>
</div>
    </body>
</html>
