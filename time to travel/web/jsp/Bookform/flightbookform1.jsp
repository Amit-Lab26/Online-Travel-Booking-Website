<%-- 
    Document   : flightbookform1
    Created on : Apr 28, 2020, 1:07:59 PM
    Author     : admin
--%>

<%@page import="DBhandler.fareCalculator"%>
<%@page import="DBhandler.flights"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm details</title>
    </head>
    <body style="background-color:purple">
            <center>
                     <lable align="center" size="24" style="margin-top:60px;color: white ;font-family: arial;font-size:36px;font-weight: bolder">Flight Review Form</lable>
                    </center>  
        <%
            HttpSession mysession=request.getSession();
        String fid=(String)mysession.getAttribute("fid");
        String fcmp=(String)mysession.getAttribute("fcmp");
        String ftyp=(String)mysession.getAttribute("ftyp");
        String favl=(String)mysession.getAttribute("favl");
        String ffare=(String)mysession.getAttribute("ffare");
        String fdate=(String)mysession.getAttribute("fdate");
        String fsht=(String)mysession.getAttribute("fsht");
        String ftar=(String)mysession.getAttribute("ftar");
        String ffrm=(String)mysession.getAttribute("ffrm");
        String fto=(String)mysession.getAttribute("fto");
        String fcno=(String)mysession.getAttribute("fcno");
        String fano=(String)mysession.getAttribute("fano");
        
        String frmairp=(String)mysession.getAttribute("frmairp");
        String frmcity=(String)mysession.getAttribute("frmcity");
        String frmstate=(String)mysession.getAttribute("frmstate");
        String frmcountry=(String)mysession.getAttribute("frmcountry");
        
        
        String ftoairp=(String)mysession.getAttribute("ftoairp");
        String ftocity=(String)mysession.getAttribute("ftocity");
        String ftostate=(String)mysession.getAttribute("ftostate");
        String ftocountry=(String)mysession.getAttribute("ftocountry");
        
int fa=Integer.parseInt(fano);
int fc=Integer.parseInt(fcno);
int fare=Integer.parseInt(ffare);
fareCalculator fct=new fareCalculator();
int ff=fct.oneflight(fare, fc, fa);mysession.setAttribute("ff",ff);


%>
   <div  style='margin-top:20px;margin-bottom: 10px;
    list-style-type: none;
    border-radius: 10px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;

    width:100%;
    font-family: arial;font-size: 16px;
    '>
       <p style="color:purple;font-family: arial;font-size: 16px;font-weight:bold">Flight Details:</p>  

     <table align="center" style="
    list-style-type: none;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    color:purple;font-family: arial;font-size: 16px;margin-bottom: 10px;margin-top:10px">
          <tr>
                <td align="center">Company:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps"><%=fcmp%></font></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
      
    
            <tr>
                    <td></td>
                <td height="40px">From:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=frmcity%>(<%=ffrm%>)</font></td>
            
                <td align="center">
                   </td>
                <td></td>
                <td>To:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=ftocity%>(<%=fto%>)</font></td>
            </tr>
            <tr>
                <td align="center"><img src="image/plane1.png"></td>
            
                <td>Journey Date:&nbsp;<font style="color:black;font-weight:bold;"><%=fdate%></font></td>
                <td align="center"><img  width="40px" height="40px" src="image/lrarrow.png"><br><font style="color: #cccccc;"><%=ftyp%>&nbsp;/&nbsp;<%=fid%></font></td>
                <td></td>
                
                <td>Arrival Date:&nbsp;<font style="color:black;font-weight:bold;"><%=fdate%></td>
                
            </tr>
            <tr>
                <td align="center">

    <font style="color:black;font-weight:bold;"></font>
    
         </td>
         <td>Boarding At:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps"><%=frmairp%>&nbsp;Airport</font></td>
                <td></td>
                <td></td>
                <td>Arrival At:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps"><%=ftoairp%>&nbsp;Airport</font></td>
              
            </tr>
            <tr>
                <td align="center">Adult:<font style="color:black;font-weight:bold;"><%=fano%></font>
                Child:<font style="color:black;font-weight:bold;"><%=fcno%></font></td>
                <td>Journey Time:&nbsp;<font style="color:black;font-weight:bold;"> <%=fsht%></td>
                <td></td>
                <td width="200px"></td>
             
                <td height="80px">Arrival Time:&nbsp;<font style="color:black;font-weight:bold;"><%=ftar%></font></td>
                
            </tr>
              
                
         </table>
                 
              
                

                     
</div>   
                     
<form action="book/flightbook.jsp" method="Post">      

  <div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;">
            
            <h2 style="margin-left:30px;">Passenger Details:</h2>
<center>
   <table  style="font-family:arial;font-weight:bold;margin-left:50px;margin-bottom: 10px;width:93%;margin-right:50px;height:100%;background-color:white">
        <tr align="center" style="font-family:arial;font-weight:bold;color:purple;background-color:wheat;height:50px;">
            <th >Name</th><th>Surname</th><th>Age</th><th>Gender</th><th>Disability</th>
            <tr align="center" style="font-family: monospace;font-weight: normal;background-color: #cccccc;height:50px;color:blue" >
                                
    <%
     
       
for(int i=0;i<fa;i++)
      {
       
        String bfname=request.getParameter("bfname"+i);mysession.setAttribute(bfname+i,bfname+i);
        String blname=request.getParameter("blname"+i);mysession.setAttribute(blname+i,bfname+i);
        String bage=request.getParameter("bage"+i);mysession.setAttribute(bage+i,bfname+i);
        String bgen=request.getParameter("bgen"+i);mysession.setAttribute(bgen+i,bfname+i);
        String bdis=request.getParameter("bdis"+i);mysession.setAttribute(bdis+i,bdis+i);
     %>
                
              <td><%=bfname%></td> 
              <td><%=blname%></td>
              <td><%=bage%></td>
              <td><%=bgen%></td>
              <td><%=bdis%>
             
             </tr>  
            
                 <%}%>
                 <tr align="center" style="font-family: monospace;font-weight: normal;background-color: #cccccc;height:50px;color:blue" >
                                
    <%
     
       
for(int i=0;i<fc;i++)
      {
       
        String bcfname=request.getParameter("bcfname"+i);mysession.setAttribute(bcfname+i,bcfname+i);
        String bclname=request.getParameter("bclname"+i);mysession.setAttribute(bclname+i,bcfname+i);
        String bcage=request.getParameter("bcage"+i);mysession.setAttribute(bcage+i,bcage+i);
        String bcgen=request.getParameter("bcgen"+i);mysession.setAttribute(bcgen+i,bcgen+i);
        String bcdis=request.getParameter("bdis"+i);mysession.setAttribute(bcdis+i,bcdis+i);
     %>
                
              <td><%=bcfname%></td> 
              <td><%=bclname%></td>
              <td><%=bcage%></td>
              <td><%=bcgen%></td>
              <td><%=bcdis%>
             
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
    color:purple;font-family: arial;font-size: 16px;">
                        <h2 style="margin-left:30px;">Fare details:</h2>
                       
                         <table  style="margin-left:50px;margin-bottom: 10px;width:93%;margin-right:50px;height:100%;border-spacing:20px">
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td >Ticket Fare:</td><td style="text-align: right">Rs.<%=ff%></td></tr>
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td >Service Tax (Inc. of Service Tax)</td><td style="text-align: right">Rs.0.0</td></tr>
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td >Total Fare:</td><td style="text-align: right">Rs.<%=ff%></td></tr>
                        </table>
                       <center>
       <input align="center" type="submit" value="Pay" name="book" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'></center>
       <input type="hidden" name="booktyp" value="flightbook" />  
       <input type="hidden" name="tfare1" value="<%=ff%>" />
   </div>                 
     </form>
    </body>
</html>
