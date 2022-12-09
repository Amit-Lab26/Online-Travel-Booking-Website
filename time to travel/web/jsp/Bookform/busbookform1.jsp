<%-- 
    Document   : busbookform1
    Created on : Apr 6, 2020, 2:49:09 AM
    Author     : admin
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="java.sql.*"%>

<%@page import="java.text.SimpleDateFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="nav.jsp" %>
<!DOCTYPE html>
<html>
      <link rel="stylesheet" href="formbutton.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seat Select</title>
    </head>
    
    <body style='background-color:purple;'>
 <%
     
       String busid=(String)mysession.getAttribute("bid");
       String bcmp=(String)mysession.getAttribute("bcmp");
       String bclass=(String)mysession.getAttribute("bclass");
       String bjt=(String)mysession.getAttribute("bjt");
       String bat=(String)mysession.getAttribute("bat");
       String btdis=(String)mysession.getAttribute("btdis");
       String bfrm=(String)mysession.getAttribute("bfrm");
       String bto=(String)mysession.getAttribute("bto");
       String bdate=(String)mysession.getAttribute("bdate");
       String ban=(String)mysession.getAttribute("bano");
       String bcn=(String)mysession.getAttribute("bcno");
       String barrdate=(String)mysession.getAttribute("barrdate");
                String bpp= request.getParameter("bpp");mysession.setAttribute("bpp",bpp);
                String bdp = request.getParameter("bdp");mysession.setAttribute("bdp",bdp);
                String bName0 = request.getParameter("seatNumber0");
                String bName1 = request.getParameter("seatNumber1");
                String bName2 = request.getParameter("seatNumber2");
                String bName3 = request.getParameter("seatNumber3");
                String bName4 = request.getParameter("seatNumber4");
                String bName5 = request.getParameter("seatNumber5");

   String arr[];
   arr=new String[6];
   arr[0]=bName0;
   arr[1]=bName1;
   arr[2]=bName2;
   arr[3]=bName3;
   arr[4]=bName4;
   arr[5]=bName5;
   Arrays.sort(arr);

        String tfare = request.getParameter("amount");mysession.setAttribute("tfare",tfare);
        int ba=Integer.parseInt(ban);
        int bc=Integer.parseInt(bcn);
       
        
     %>       

  <!--- Bus Details-->
   <div  style='margin-top:20px;margin-bottom: 10px;
    list-style-type: none;
    border-radius: 10px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;

    width:100%;
    font-family: arial;font-size: 16px;
    '>
       <p style="color:purple;font-family: arial;font-size: 16px;font-weight:bold">Bus Details:</p>  
<table  align="center" style="
       
    list-style-type: none;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    
    color:darkslateblue;font-family: arial;font-size: 16px;margin-bottom: 10px;">
  
  
    
                     
              
            
            <tr>
                <td align="center">Company:&nbsp;<font style="color:black;font-weight:bold;"><%=bcmp%></font></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
      
    
            <tr>
                    <td></td>
                <td height="40px">From:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=bfrm%></font></td>
            
                <td align="center">
                   </td>
                <td></td>
                <td>To:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"> <%=bto%></font></td>
            </tr>
            <tr>
                <td align="center"><img src="image/bus1.png"></td>
            
                <td>Journey Date:&nbsp;<font style="color:black;font-weight:bold;"><%=bdate%></font></td>
                <td align="center"><img  width="40px" height="40px" src="image/lrarrow.png"><br><font style="color: #cccccc;"><%=bclass%>&nbsp;/&nbsp;<%=btdis%></font></td>
                <td></td>
                
                <td>Arrival Date:&nbsp;<font style="color:black;font-weight:bold;"><%=barrdate%></td>
                
            </tr>
              <tr>
                <td align="center"> <%  for(int i=0;i<bc+ba;i++)
          {
%><font style="color:black;font-weight:bold;"><%=arr[i]%>,</font><%}%></td>
                <td>Pickup Point:<font style="color:black;font-weight:bold;"><%=bpp%></font></td>
                <td></td>
                <td></td>
                <td>Drop Point:<font style="color:black;font-weight:bold;"><%=bdp%></font>
                </td>
                
            </tr>
            <tr>
                <td align="center">Adult:<font style="color:black;font-weight:bold;"><%=ba%></font>
                Child:<font style="color:black;font-weight:bold;"><%=bc%></font></td>
                <td>Journey Time:&nbsp;<font style="color:black;font-weight:bold;"> <%=bjt%></td>
                <td></td>
                <td width="200px"></td>
             
                <td height="80px">Arrival Time:&nbsp;<font style="color:black;font-weight:bold;"><%=bat%></font></td>
                
            </tr>


    </table>
                     
</div>  
  <!--- Passenger Details-->
 <div style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color:white;
    font-family: arial;
    width:100%;
    ">

<h2 style="margin-left: 10px;color:purple">Enter Passenger's Details:</h2>
 <form action="busbookform2.jsp">
 <h2 align="left" style="margin-left:20px;color:blue">Contact Details</h2>
    <td><input  style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" type="number" placeholder=" Phone number" maxlength="10" name="custnum"></td>
    <input type="text" name="custemail"required="true" style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" placeholder="Email Id"> 

    <h4 align="left" style="margin-left:20px;color:purple">Your Booking details Will be sent to this email address.</h4>
 <%  for(int i=0;i<bc+ba;i++)
          {
%>
<p><input type="text" name="pseat<%=i%>" readonly="true" style="font-size: large;font-weight:bold;font-family:arial;border:none;background-color:white;margin-left: 20px;margin-top: 10px;height: 30px;" value="<%=arr[i]%>"></p>
<p>  <tr>
     <td><input required="true" style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" type="text" placeholder=" First Name"name="bfname<%=i%>"></td>
          <td><input required="true" style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" type="text" placeholder=" Last Name"name="blname<%=i%>"></td>
          <td><input required="true"  style="margin-left: 20px;margin-top: 10px;width:60px;height: 30px;" class="input" type="number" min="13" max="120" selected="0" placeholder=" Age"name="bage<%=i%>"></td>
           <td><select required="true"  style="margin-left: 20px;margin-top:10px;width:150px;height:30px;" class="input" type="select" name="bgen<%=i%>">
          <option value="" selected="" disabled="true">Select Gender</option>
          <option value="Female">Female</option>
          <option value="Male">Male</option></select></td>
          
</tr></p>
 </table>       
<%   
}
%>


          <center>
            <input type="Submit" value="Continue"  style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'>
          </center>      
   </form> 
   
</div>
</body>

<%@include  file="footer.jsp" %>
</html>
