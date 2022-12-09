<%-- 
    Document   : viewflight2
    Created on : May 17, 2020, 9:40:18 PM
    Author     : admin
--%>

<%@page import="bean.ViewFlight2"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="bean.ViewFlight"%>
<%@page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view flight</title>
    </head>
    <body style="background-color:white">
        
        
 <div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;
    border-style:solid;
    border-color: #666666;
    border-width:thin;">
 <form name="flightbookform1" action=".jsp/Bookform/flightbookform.jsp">
  <table  style="
    background-color: #cccccc;
    width:100%;
    height: 20%;
    color:purple;
    font-family: arial;
    font-size: 16px;
    border-radius: 20px;
    ">
       <thead align="center" >
              
                 <th>Company</th>
                 <th>Boarding Date</th>
                 <th>Boarding At</th>
                 <th>Arrival Date</th>
                 <th>Arrival At</th>
                 <th>Seat Left</th>
                 <th>Fare</th>
       </thead>

  <c:forEach items="${sessionScope.viewflight2}" var="flight">
 <tbody align="center" style="margin-top: 10px;
    background-color: white;
    margin-bottom: 10px;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;font-variant: small-caps">

        <tr  style="color:blueviolet;font-weight: bold;">
            
         <td>
            <c:out value="${flight.fcmp}"/>
        </td><td>
            <c:out value="${flight.fdate}"/> </td>
              <td>
            <c:out value="${flight.ffrm}"/><br><c:out value="${flight.fsht}"/>
        </td>
             <td>
             <c:out value="${flight.fdepdate}"/> </td>
        <td> <c:out value="${flight.fto}"/><br><c:out value="${flight.ftarr}"/>
        </td>
         <td>
             <c:out value="${flight.faseat}"/>
         </td>
        <td>
          Rs.<c:out value="${flight.ffare}"/>
            
        </td>
 <td>
             <center>
              <input type="Submit" value="Make Booking"  style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:100px;height:40px;color: white;background-color:darkblue;'>
              <input type="hidden" name="fid2"  value=${flight.fid}>
              <input type="hidden" name="fcmp2" value=${flight.fcmp} >
              <input type="hidden" name="ffrm2" value=${flight.ffrm} >
              <input type="hidden" name="fto2"  value=${flight.fto} >
              <input type="hidden" name="fdate2"value=${flight.fdate} >
              <input type="hidden" name="fsht2" value=${flight.fsht} >
              <input type="hidden" name="ftar2" value=${flight.ftarr} >
              <input type="hidden" name="faseat2" value=${flight.faseat} >
              <input type="hidden" name="ftyp2"   value=${flight.ftyp} >
              <input type="hidden" name="ffare2"  value=${flight.ffare} >
              <input type="hidden" name="fdepdate2" value=${flight.fdepdate} >
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
