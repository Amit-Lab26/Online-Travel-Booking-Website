<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="bean.LoginBean"%>

<%
    HttpSession mysession = request.getSession();
    int userid=(Integer)mysession.getAttribute("userid");
    String uname=(String)mysession.getAttribute("uname");
    String uemail=(String)mysession.getAttribute("uemail");
    String logintyp=(String)mysession.getAttribute("logintyp");
  
if(mysession != null)
         {
            if(uemail!=null && uname!=null && logintyp==null){
                 response.sendRedirect("home.jsp");
             }
      else if(uemail!=null && uname!=null && logintyp!=null)
      {
          response.sendRedirect("payment.jsp");
      }
    
         }
    else{
        response.sendRedirect("index.html");
        }
%>
