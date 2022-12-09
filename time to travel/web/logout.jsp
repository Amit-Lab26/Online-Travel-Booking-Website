<%-- 
    Document   : logout
    Created on : Apr 5, 2020, 1:50:46 AM
    Author     : admin
--%>
<%@page session="false" contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession mysession = request.getSession();
    mysession.invalidate();
    response.sendRedirect("./index.html");
%>
