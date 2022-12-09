<%-- 
    Document   : viewtrain
    Created on : Mar 14, 2020, 12:44:43 AM
    Author     : admin
--%>
<%@page import="java.sql.Date"%>
<%@page import="bean.train_stop"%>
<%@page import="DBhandler.stops"%>
<%@page import="bean.ViewTrain"%>
<%@page import="java.util.List" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/nav.jsp"/>
    <%  HttpSession mysession = request.getSession();
     String tjrtyp=(String)mysession.getAttribute("tjrtyp");
     Date trdate=(Date)mysession.getAttribute("trdate");
       String cl;
       String tclass=(String)mysession.getAttribute("tclass");
       if(tclass.equals("a"))
       {
           cl="2-Tier Ac";
       }
       else if(tclass.equals("b"))
       {
           cl="3-Tier Ac";
       }
       else
       {
           cl="Sleeper";
       }
       
   %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>train view</title>
    </head>
   
     <body style="background-color:purple"> 
                 
    <center>
                     <lable align="center" size="24" style="margin-top:60px;color: white ;font-family: arial;font-size:36px;font-weight: bolder">Available Trains</lable>
                    </center> 
      <div style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    font-family: arial;
    width:100%;
      ">
            <form name="trainbookform" action="train2" method="Post">
             <table  style="
    background-color: whitesmoke;
    width:100%;
    height: 20%;
    color:purple;
    font-family: arial;
    font-size: 16px;
    border-radius: 20px;">


            
            <thead align="center" >
                 <th>Train Number/Name</th>
                 <th>From</th>
                 <th>To</th>
                 <th>Travel Date & Time</th>
                 <th>Arrival Date & Time</th>
                 <th>Class</th>
                 <th>Available Seats</th>
                 <th>Fare</th>
            </thead>
          <c:forEach items="${sessionScope.viewtrain}" var="train">    
 <tbody align="center" style="margin-top: 10px;
    background-color: white;
    margin-bottom: 10px;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;font-variant: small-caps">

        <tr  style="color:blueviolet;font-weight: bold;">
    <tr align="center" style="color:blueviolet;font-weight: bold;font-variant: small-caps">
            <td style="margin-top: 5px;">#<c:out value="${train.trainid}"/> / <c:out value="${train.tname}"/></td>
            <td style="margin-top: 10px;"><c:out value="${train.tfrm}"/></td>
            <td style="margin-top: 10px;"><c:out value="${train.tto}"/></td>
            <td style="margin-top: 10px;"><c:out value="${train.avldate}"/><br>&<br><c:out value="${train.deptime}"/></td>
            <td style="margin-top: 10px;"><c:out value="${train.arrdate}"/><br>&<br><c:out value="${train.artime}"/> </td>
            <td style="margin-top: 10px;"><%=cl%></td>
            <td style="margin-top: 10px;"><c:out value="${train.aseats}"/></td>
            <td style="margin-top: 10px;">Rs.<c:out value="${train.tfare*train.usrdis/10}"/></td>
                 
               
            <td style="margin-top: 10px;">
           
             <center>
              <input type="Submit"  value="Book Now" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:100px;height:40px;color: white;background-color:darkblue;'>
              <input type="hidden" name="trainid" value="${train.trainid}"/>
              <input type="hidden" name="tname"    value="${train.tname}"/>
              <input type="hidden" name="tfrm"      value="${train.tfrm}"/>
              <input type="hidden" name="tto"       value="${train.tto}"/>
              <input type="hidden" name="deptime"  value="${train.deptime}"/>
              <input type="hidden" name="artime" value="${train.artime}"/>
              <input type="hidden" name="avldate" value="${train.avldate}"/>
              <input type="hidden" name="arrdate" value="${train.arrdate}"/>
              <input type="hidden" name="usrsrc" value="${train.usrsrc}"/>
              <input type="hidden" name="usrdes" value="${train.usrdes}"/>
              <input type="hidden" name="usrdis" value="${train.usrdis}"/>
              <input type="hidden" name="usrstt" value="${train.usrstt}"/>
              <input type="hidden" name="usrstd" value="${train.usrstd}"/>
              <input type="hidden" name="tfare" value="${train.tfare}"/>
              <input type="hidden" name="tclas" value="<%=cl%>"/>
              <input type="hidden" name="tfs" value="${train.fSenior}" />
              <input type="hidden" name="tfc" value="${train.fSenior}" />
               <input type="hidden" name="ttax" value="${train.ttax}" />
             </center></td>
  </tr>
 
                           </tbody>
 


                 </c:forEach>
             </table>
          </form>
        </div>
    </body>
</html>
