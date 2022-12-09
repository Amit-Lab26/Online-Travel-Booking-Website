<%-- 
    Document   : busbookform2
    Created on : Mar 25, 2020, 11:56:26 AM
    Author     : admin
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="bean.ViewBus"%>
<%@page import="java.util.List" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Form</title>
    </head>
  
    <body style="background-color:purple;">
        
        
        <%
       HttpSession mysession=request.getSession();     
       String custnum=request.getParameter("custnum");mysession.setAttribute("custnum",custnum);
       String custemail=request.getParameter("custemail");mysession.setAttribute("custemail",custemail);
  
       String busid=(String)mysession.getAttribute("bid");
       String bcmp=(String)mysession.getAttribute("bcmp");
       String bclass=(String)mysession.getAttribute("bclass");
       String bjt=(String)mysession.getAttribute("bjt");
       String bat=(String)mysession.getAttribute("bat");
       String btdis=(String)mysession.getAttribute("btdis");
       String bfrm=(String)mysession.getAttribute("bfrm");
       String bto=(String)mysession.getAttribute("bto");
       String bdate=(String)mysession.getAttribute("bdate");
     
       String barrdate=(String)mysession.getAttribute("barrdate");
       String bpp=(String)mysession.getAttribute("bpp");
       String bdp=(String)mysession.getAttribute("bdp");  
       String ban=(String)mysession.getAttribute("bano");
       String bcn=(String)mysession.getAttribute("bcno");
        int bc=Integer.parseInt(bcn);
        int ba=Integer.parseInt(ban);
  

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
    border-style:solid;
    border-color:black;
    border-width: thin;
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
                <td align="center">
    <% for(int k=0;k<bc+ba;k++)
          {
              String ps=request.getParameter("pseat"+k);
           
    %>
    <font style="color:black;font-weight:bold;"><%=ps%>,</font>
    <%}%>
         </td>
                <td>Pickup Point:<font style="color:black;font-weight:bold;"><%=bpp%></font></td>
                <td></td>
                <td></td>
                <td>Drop Point:<font style="color:black;font-weight:bold;"><%=bdp%></font></td>
              
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
                     
<form action="book/busbook.jsp" method="post">      
<div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;
    font-family: arial;font-size: 16px;
    border-style:solid;
    border-color:black;
    border-width: thin;">
            
            <h2 style="margin-left:30px;">Passenger Details:</h2>
<center>
   <table  style="font-family:arial;font-weight:bold;margin-left:50px;margin-bottom: 10px;width:93%;margin-right:50px;height:100%;background-color:white">
        <tr align="center" style="font-family:arial;font-weight:bold;color:purple;background-color:wheat;height:50px;">
            <th >Name</th><th>Surname</th><th>Age</th><th>Gender</th><th>Seat Number</th>
                         
    <%
     
         String btfare=(String)mysession.getAttribute("tfare");
for(int i=0;i<bc+ba;i++)
      {
       
        String bfname=request.getParameter("bfname"+i);mysession.setAttribute("bfname"+i,bfname);
        String blname=request.getParameter("blname"+i);mysession.setAttribute("blname"+i,blname);
        String bage=request.getParameter("bage"+i);mysession.setAttribute("bage"+i,bage);
        String bgen=request.getParameter("bgen"+i);mysession.setAttribute("bgen"+i,bgen);
        String pseat=request.getParameter("pseat"+i);mysession.setAttribute("pseat"+i,pseat);
     %>
        <tr align="center" style="font-family: monospace;font-weight: normal;background-color: #cccccc;height:50px;color:blue" >
          
                
              <td><%=bfname%></td> 
              <td><%=blname%></td>
              <td><%=bage%></td>
              <td><%=bgen%></td>
              <td><%=pseat%></td>
             
             </tr>  
            
                 <%}%>
            </table>
   
            </center> 
     
        </div>
   
   <!--- fare Details--->
   <div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;
    font-family: arial;font-size: 16px;
    border-style:solid;
    border-color:black;
    border-width: thin;">
                        <h2 style="margin-left:30px;">Fare details:</h2>
                       
                         <table  style="margin-left:50px;margin-bottom: 10px;width:93%;margin-right:50px;height:100%;border-spacing:20px">
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td style="color:darkblue">Ticket Fare:</td><td style="text-align: right">Rs.<%=btfare%></td></tr>
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td style="color:darkblue">Service Tax (Inc. of Service Tax)</td><td style="text-align: right">Rs.0.0</td></tr>
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td style="color:darkblue">Total Fare:</td><td style="text-align: right">Rs.<%=btfare%></td></tr>
                         </table>
                       <center>
       <input align="center" type="submit" value="Pay" name="book" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'></center>
       <input type="hidden" name="booktyp" value="busbook">   
       <input type="hidden" name="tfare1" value="<%=btfare%>">
   </div>                 
     </form>
    </body>
</html>
