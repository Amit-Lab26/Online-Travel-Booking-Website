<%-- 
    Document   : hotelbook
    Created on : Mar 16, 2020, 1:45:54 AM
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
        <%
        HttpSession mysession=request.getSession();
        String hname=request.getParameter("hfname"); mysession.setAttribute("hname",hname);
        String hgen=request.getParameter("hgen"); mysession.setAttribute("hgen",hgen);
        String hage=request.getParameter("hage"); mysession.setAttribute("hage",hage);
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
                          <h1>Page cannot be forwarded!</h1>
                         <% }%>
    </body>
</html>
