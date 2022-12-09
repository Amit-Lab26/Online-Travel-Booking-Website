<%-- 
    Document   : trainbook
    Created on : Mar 16, 2020, 1:45:13 AM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
         String book=request.getParameter("tbook");
         if(book.equals("Pay"))
         {
     %>
    <c:redirect url="/payment.jsp"></c:redirect>
     <%
         }
                  else{
      %>
                          <h1>Page cannot be forwarded!</h1>
                         <% }%>
    </body>
</html>
