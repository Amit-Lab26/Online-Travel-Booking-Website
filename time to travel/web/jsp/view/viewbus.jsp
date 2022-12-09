<%-- 
    Document   : viewbus.jsp
    Created on : Mar 14, 2020, 12:43:52 AM
    Author     : admin
--%>

<%@page import="bean.ViewBus"%>
<%@page import="java.util.List" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="/nav.jsp" %>
<!DOCTYPE html>

<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view bus</title>
    </head>
   

     <% 
              String bano=(String)mysession.getAttribute("bano");
              String bcno=(String)mysession.getAttribute("bcno");
    %>
 
    <body style="background-color:purple">
        <header></header>
 <div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;">
    <form name="busbookform" action="./jsp/Bookform/busbookform.jsp">  
     <table  style="
    background-color: whitesmoke;
   
    width:100%;
    height: 20%;
    color:purple;
    font-family: arial;
    font-size: 16px;
    border-radius: 20px;">
       
           <thead align="center" >
                 <th>Company</th>
                <!-- <td>From</td>-->
                <!--<td>To</td>-->
                 <th>Travel Date & Time</th>
                 <th>Arrival Date & Time</th>
                 <th>Total Distance</th>
                 <th>Class</th>
                 <th>Available Seats</th>
                 <th>Adult Fare</th>
                 
                <!-- <td style="color: #ff0099">Child Fare</td>-->
            
    </thead>

   
<c:forEach items="${sessionScope.viewbus}" var="bus">
 
<tbody align="center" style="margin-top: 10px;
    background-color: white;
    margin-bottom: 10px;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;font-variant: small-caps">
  
        <tr  style="color:blueviolet;font-weight: bold;">
              <td style="margin-top: 10px;"><c:out value="${bus.bcmp}"/>
              
              <!--  </td><td style="margin-top: 10px;"><c:out value="${bus.bfrm}"/> -->
              <!-- <td style="margin-top: 10px;"><c:out value="${bus.bto}"/>-->
              
              </td><td style="margin-top: 10px;" ><c:out value="${bus.bdate}"/></br><c:out value="${bus.bjtime}"/>
              </td><td style="margin-top: 10px;" ><c:out value="${bus.barrdate}"/></br><c:out value="${bus.batime}"/>
              </td><td style="margin-top: 10px;" ><c:out value="${bus.btdis}"/>
              </td><td style="margin-top: 10px;" ><c:out value="${bus.bclass}"/>
              </td><td style="margin-top: 10px;" ><c:out value="${bus.baseat}"/>
              </td><td style="margin-top: 10px;" >Rs.<c:out value="${bus.bfare}"/>
            
              <!--</td><td style="margin-top: 10px;">Rs.<c:out value="${bus.bcf}"/>-->
        </td><td>
             <center>
              <input type="Submit"  value="Select Seat" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:100px;height:40px;color: white;background-color:darkblue;'>
              <input type="hidden" name="busid" value="${bus.busid}" />
              <input type="hidden" name="buscmp" value="${bus.bcmp}" />
              <input type="hidden" name="busclass" value="${bus.bclass}" />
              <input type="hidden" name="busseat" value="${bus.baseat}" />
              <input type="hidden" name="busfare" value="${bus.bfare}" />
              <input type="hidden" name="busjtime" value="${bus.bjtime}"/>
              <input type="hidden" name="busatime" value="${bus.batime}" />
              <input type="hidden" name="bustdis" value="${bus.btdis}" />
              <input type="hidden" name="busfrm" value="${bus.bfrm}" />
              <input type="hidden" name="busto" value="${bus.bto}" />
              <input type="hidden" name="busdate" value=${bus.bdate} />
              <input type="hidden" name="bano" value="<%=bano%>"/>
              <input type="hidden" name="bcno" value="<%=bcno%>"/>
              <input type="hidden" name="bcf" value="${bus.bcf}"/>
              <input type="hidden" name="barrdate" value="${bus.barrdate}"/>
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
