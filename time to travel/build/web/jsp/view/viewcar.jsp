

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="DBhandler.*" %>
<%@page import="bean.ViewCar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view car</title>
    </head>
    <body style="background-color:purple">
<%
HttpSession mysession=request.getSession();
String dcity=(String)mysession.getAttribute("cdcity");
String pcity=(String)mysession.getAttribute("cpcity");
String cjrtype=(String)mysession.getAttribute("cjrtype");
String cptime=(String)mysession.getAttribute("cptime");
int dist=(Integer)mysession.getAttribute("dist");


%>

  <%=cptime%>
    <div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;">
  
<form name="carbookform" action="./jsp/Bookform/carbookform.jsp">
  <table  style="
    background-color:skyblue;
    width:100%;
    height: 20%;
    color:purple;
    font-family: arial;
    font-size: 16px;
    border-radius: 20px;">
       
           <thead align="center" >
              
                 <th>Car Company</th>
                 <th>Car Seats</th>
                 <th>Total Distance</th>
                 <th>Car Fare</th>
                 <th></th>
            </thead>
           
 <c:forEach items="${sessionScope.viewcar}" var="car">
     <tbody align="center" style="margin-top: 10px;
    background-color: white;
    margin-bottom: 10px;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;font-variant: small-caps">
  
        <tr  style="color:blueviolet;font-weight: bold;">
              
        <td style="margin-top: 10px;">
            <c:out value="${car.cmp}"/>
        </td><td style="margin-top: 10px;">
            <c:out value="${car.typ}"/>   
        </td><td style="margin-top: 10px;">
            <c:out value="${dist}"/> Km
        </td><td style="margin-top: 10px;">
            Rs.<c:out value="${car.cfare*dist}"/>
        </td><td>
             <center>
              <input type="Submit"  value="Make Booking" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:100px;height:40px;color: white;background-color:darkblue;'>
              <input type="hidden" name="carid" value=${car.cid} />
              <input type="hidden" name="carcmp" value=${car.cmp} />
              <input type="hidden" name="carseats" value=${car.typ} />
              <input type="hidden" name="dist" value=${dist} />
              <input type="hidden" name="cfare" value=${car.cfare*dist} />
              <input type="hidden" name="cfar" value=${car.cfare} />
            </center>
             </td>
        </tr>
     </tbody>
      </c:forEach>
        </form>
   
          </table> 
       
            </div>
        
    </body>
</html>
