<%-- 
    Document   : BookingSucsess
    Created on : May 24, 2020, 1:10:12 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="nav.jsp"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking success</title>
    </head>
    <body style="color:darkblue">
        <% 
                HttpSession mysession=request.getSession();
                int bki=(Integer)mysession.getAttribute("bkid");
               
        %>
    <center>
        <h1>Your Booking Has Been Done Successfully</h1>
        <h2>Booking ID is:<font style="color:lightskyblue"><%=bki%></font></h2>
        <h2>Check Your Email for more Details</h2>
    </center>
    </body>
    <div style="margin-bottom:0;margin-top:500px;">
    <jsp:include page="footer.jsp"/>
    </div>
</html>

