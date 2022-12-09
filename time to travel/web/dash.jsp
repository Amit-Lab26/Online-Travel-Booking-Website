<%-- 
    Document   : dash.jsp
    Created on : Mar 16, 2020, 4:13:33 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   /* HttpSession mysession = request.getSession();
    if(mysession != null){
        if(mysession.getAttribute("fname") != null){
            System.out.print("Valid Authentication in Dash");
        }
        else{
            response.sendRedirect("logout.jsp");
        }
    }
    else{
        response.sendRedirect("logout.jsp");
    }*/
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>
  
 <body style="background-color:blanchedalmond">

      
          <div align="left" style=";background-color:whitesmoke;height:600px;width:200px;font-family:arial;font-weight: bold;">
         <table style="border-spacing:40px;list-style-type: none">
             <p>  <tr><td><a href="usr_profile.jsp">Profile</a></tr>
                  <tr><td><a href="user_bookings.jsp">Booking's</a></tr>
                  <tr><td><a href="logout.jsp" style="color:red">Logout</a></tr>
          </table>
          </div>
      

</body>
   
</html>
