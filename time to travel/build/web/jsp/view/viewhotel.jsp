<%-- 
    Document   : viewhotel
    Created on : Mar 14, 2020, 12:44:11 AM
    Author     : admin
--%>

<%@page import="bean.ViewHotel"%>
<%@page import="java.util.List" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/nav.jsp" />
   <%
        HttpSession mysession = request.getSession();
        String hnoroom=(String)mysession.getAttribute("noroom");
        String hcin=(String)mysession.getAttribute("hcin");
        String hcout=(String)mysession.getAttribute("hcout");
   %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view hotel</title>
    </head>
    <body style="background-color:purple">
       
    <center>
                     <lable align="center" size="24" style="margin-top:60px;color: white ;font-family: arial;font-size:36px;font-weight: bolder">Available Hotels</lable>
                    </center> 
 <div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;">
<form name="hotelbookform" action="./jsp/Bookform/hotelbookform.jsp">
    <table  style="
    background-color: whitesmoke;
    width:100%;
    height: 20%;
    color:purple;
    font-family: arial;
    font-size: 16px;
    border-radius: 20px;">
             <thead align="center" >
                 
                 <th>Hotel Name</th>
                 <th>Ratings</th>
                 <th>Hotel City</th>
                 <th>Hotel State</th>
                 <th>Room Type</th>
                 <th>Room Price</th>
                 
             </thead>
   <c:forEach items="${sessionScope.viewhotel}" var="hotel">
        <tbody align="center" style="margin-top: 10px;
    background-color: white;
    margin-bottom: 10px;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;font-variant: small-caps">

        <tr  style="color:blueviolet;font-weight: bold;">
       
            <td>
                <c:out value="${hotel.honame}"/>
        </td><td>
            <c:out value="${hotel.horating}"/>&starf;
        </td><td> 
                <c:out value="${hotel.hocity}"/>
        </td><td>
                <c:out value="${hotel.hostate}"/>
        </td><td>
                <c:out value="${hotel.horoomtyp}"/>
        </td><td>
                Rs. <c:out value="${hotel.roomprice}"/>
        </td><td>
           <center>
              <input type="Submit"  value="Book Now" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:100px;height:40px;color: white;background-color:darkblue;'>
              <input type="hidden" name="honame" value="${hotel.honame}">
              <input type="hidden" name="horating" value="${hotel.horating}">
              <input type="hidden" name="hocity" value="${hotel.hocity}">
              <input type="hidden" name="hostate" value="${hotel.hostate}">
              <input type="hidden" name="horoomtyp" value="${hotel.horoomtyp}">
              <input type="hidden" name="roomprice" value="${hotel.roomprice}">
              <input type="hidden" name="hid" value="${hotel.hoid}">
              <input type="hidden" name="hnoroom" value="<%=hnoroom%>">
              <input type="hidden" name="hcin" value="<%=hcin%>">
              <input type="hidden" name="hcout" value="<%=hcout%>">
             </center>
            </td>
        </tr>
     
       
      
                           </tbody>
 


                 </c:forEach>
             </table>
          </form>
        </div>
    </body>
</html>
