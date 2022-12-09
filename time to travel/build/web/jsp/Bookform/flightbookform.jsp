<%-- 
    Document   : flightbookform
    Created on : Feb 28, 2020, 6:28:30 PM
    Author     : admin
--%>


<%@page import="java.sql.Time"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@page import="bean.fstop"%>
<%@page import="DBhandler.flights"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
       <jsp:include page="/nav.jsp" />
      <%
        HttpSession mysession=request.getSession();
        String jrtyp=(String)mysession.getAttribute("fjrtyp");
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
        String fdepdate=(String)mysession.getAttribute("fdepdate");
        String fano=(String)mysession.getAttribute("fano");
        String fcno=(String)mysession.getAttribute("fcno");
       if(jrtyp=="round")
       {
        String fid2=request.getParameter("fid2");mysession.setAttribute("fid2",fid2);
        String fcmp2=request.getParameter("fcmp2");mysession.setAttribute("fcmp2",fcmp2);
        String ftyp2=request.getParameter("ftyp2");mysession.setAttribute("ftyp2",ftyp2);
        String favl2=request.getParameter("favl2");mysession.setAttribute("favl2",favl2);
        String ffare2=request.getParameter("ffare2");mysession.setAttribute("ffare2",ffare2);
        String fdate2=request.getParameter("fdate2");mysession.setAttribute("fdate2",fdate2);
        String fsht2=request.getParameter("fsht2");mysession.setAttribute("fsht2",fsht2);
        String ftar2=request.getParameter("ftar2");mysession.setAttribute("ftar2",ftar2);
        String ffrm2=request.getParameter("ffrm2");mysession.setAttribute("ffrm2",ffrm2);
        String fto2=request.getParameter("fto2");mysession.setAttribute("fto2",fto2);
        String fdepdate2=request.getParameter("fdepdate2");mysession.setAttribute("fdepdate2",fdepdate2);
       }
        flights fs=new flights();
        fstop frm=fs.stopname(ffrm.trim());
        fstop ft=fs.stopname(fto.trim());
        String frmairp=frm.airportname;mysession.setAttribute("frmairp",frmairp);
        String frmcity=frm.city;mysession.setAttribute("frmcity",frmairp);
        String frmstate=frm.state;mysession.setAttribute("frmstate",frmstate);
        String frmcountry=frm.country;mysession.setAttribute("frmcountry",frmcountry);
        
        
        String ftoairp=ft.airportname;mysession.setAttribute("ftoairp",ftoairp);
        String ftocity=ft.city;mysession.setAttribute("ftocity",ftocity);
        String ftostate=ft.state;mysession.setAttribute("ftostate",ftostate);
        String ftocountry=ft.country;mysession.setAttribute("ftocountry",ftocountry);
        
     %>
  <body style="background-color:purple;background-size: cover;">
  <link rel="stylesheet" href="formbutton.css">
   <div align='center'>
            <div><span><h3 style="color:white;font-size:38px ;font-family: Exo;">Flight Booking User Details</h3></span><br><br>
            </div>
        </div>
        <br>
   
        <script>
            window.onload=function()
            {
              var a=<%=fcno%>
              if(a===0) 
              {
                  document.getElementById("nc").hidden=true;
                   document.getElementById("nct").hidden=true;
              }
              else
              {
                  document.getElementById("nc").hidden=false;
                   document.getElementById("nct").hidden=false;
              }
              
            };
            </script>
            
        <!--flight details-->
        
    <div  style='margin-bottom: 10px;
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
                
                <td>Arrival Date:&nbsp;<font style="color:black;font-weight:bold;"><%=fdepdate%></td>
                
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
       <%
          int fa=Integer.parseInt(fano);
          int fc=Integer.parseInt(fcno);
          int ff=Integer.parseInt(ffare);
       %>
  
                          <!--fare details-->
   <div style="
    margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    font-family: arial;
    font-weight: bold;
    width:100%;
    ">
        <h2 style="margin-left: 10px;color:purple">FARE DETAILS:</h2>
        <ul style="margin-left: 10px;color:blueviolet">    
        <li style="margin-bottom:20px;">Adult Fare : <a style="color:Blue">Rs.<%=fa*ff%></a></li>
        <li>Child Fare :  <a style="color: #ff0099">Rs<%=ff/2*fc%></li>
        </ul>
</div>
                    <!--passenger details--> 
<form action="flightbookform1.jsp" method="post">
<div style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    font-family: arial;
    width:100%;
    ">
  <h2 style="margin-left: 10px;color:purple">Fill the details Of Passenger</h2>
   <h2 align="left" style="margin-left:20px;color:blue">Contact Details</h2>
  
    <td><input  style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" type="number" placeholder=" Phone number" maxlength="10" name="custnum"></td>
    <input type="text" name="custemail"required="true" style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" placeholder="Email Id"> 

    <h4 align="left" style="margin-left:20px;color:purple">Your Booking details Will be sent to this email address.</h4>
  <h2 align="left" style="margin-left:20px;color:blue">Adult:</h2>
<% for(int i=0;i<fa;i++)
{
%>

<table>
    <tr style="color:green">
        <th></th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Disability</th>
    </tr>
    <tr>
        <td style="color:green;font-weight:bold;"><%=i+1%></td>
            
      <td><input required="true" style="border-color:blue;margin-left: 20px;margin-top: 10px;height: 30px;" class="input" type="text" placeholder=" First Name"name="bfname<%=i%>"></td>
          <td><input required="true" style="border-color:blue;margin-left: 20px;margin-top: 10px;height: 30px;" class="input" type="text" placeholder=" Last Name"name="blname<%=i%>"></td>
          <td><input required="true"  style="border-color:blue;margin-left: 20px;margin-top: 10px;width:60px;height: 30px;" class="input" type="number" min="13" max="120" selected="0" placeholder=" Age"name="bage<%=i%>"></td>
           <td><select required="true"  style="border-color:blue;margin-left: 20px;margin-top:10px;width:150px;height:30px;" class="input" type="select" name="bgen<%=i%>">
          <option value="0" selected="" diabled="">Select Gender</option>
          <option value="Female">Female</option>
          <option value="Male">Male</option></select></td>
          <td><select  required="true"  style="border-color:blue;margin-left: 20px;margin-top: 10px;width:150px;height:30px;" class="input" type="select" placeholder="Disable"name="bdis<%=i%>">
                             <option value="0" selected="" diabled="">Any Disability</option>
                             <option value="Yes">Yes</option>
                             <option value="No">No</option></select></td>
    </tr>
</table>       
<%}%>

<h2 align="left" id="nc" style="margin-left:20px;color: #ff0099">Child:</h2> 
<% for(int i=0;i<fc;i++)
{
%>

<table id="nct">
          
          <tr>
              <td style="color:green;font-weight:bold;margin-left:10px;"><%=i+1%></td>
          <td style="border: none;"><input  required="true" style="border-color: #ff0099;margin-left: 20px;margin-top: 10px;height:30px;" class="input" type="text" placeholder=" First Name"name="bcfname<%=i%>"></td>
          <td style="border:none"><input required="true" style="border-color: #ff0099;margin-left: 20px;margin-top: 10px;height:30px;" class="input" type="text" placeholder=" Last Name"name="bclname<%=i%>"></td>
          <td style="border:none"><input required="true" style="border-color: #ff0099;margin-left: 20px;margin-top: 10px;width:60px;height:30px;font-variant-caps: normal" class="input" type="number" min="1" max="12" placeholder=" Age"name="bcage<%=i%>"></td>
          <td style="border:none"><select required="true" style="border-color: #ff0099;margin-left: 20px;margin-top:10px;width:150px;height:30px;" class="input" type="select" name="bcgen<%=i%>">
          <option value="0" selected="" diabled="">Select Gender</option>
          <option value="Female">Female</option>
          <option value="Male">Male</option></select></td>
          <td style="border:none"><select required="true" style="border-color: #ff0099;margin-left:  20px;margin-top: 10px;width:150px;height:30px;" class="input" type="select" name="bcdis<%=i%>">
                            <option value="0" selected="" diabled="">Any Disability</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option></select></td>
          </tr>   
</table>
<%}%>

          <center>
            <input type="Submit" name="flightbook" value="Book"  style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'>
            <input type="hidden" name="" value="">
            </center>      
   </form>
   
</body>

</html>

