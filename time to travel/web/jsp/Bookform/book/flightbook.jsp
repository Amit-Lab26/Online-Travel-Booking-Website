<%-- 
    Document   : flightbook
    Created on : Mar 16, 2020, 1:45:35 AM
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
        HttpSession mysession=request.getSession();
        String book=request.getParameter("book");
        String booktyp=request.getParameter("booktyp");
        String tfare=request.getParameter("tfare1");
        mysession.setAttribute("booktyp",booktyp);
        mysession.setAttribute("tfare",tfare);
        if(book.equals("Pay")){
     %>
    <c:redirect url="/payment.jsp"></c:redirect>
     <%
         }
                  else{
      %>
           <h1 style="color:red">Some thing Went Wrong Page cannot be forwarded!</h1>
                         <% }%>
    </body>
</html>
