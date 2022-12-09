<%-- 
    Document   : hotelbookform
    Created on : Feb 28, 2020, 6:29:16 PM
    Author     : admin
--%>

<%@page import="java.lang.Object"%>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        HttpSession mysession = request.getSession();
        String hnoroom=(String)mysession.getAttribute("noroom");
        String hid=request.getParameter("hid");mysession.setAttribute("hid",hid);
        String honame=request.getParameter("honame");
        String hocity=request.getParameter("hocity");
        String horating=request.getParameter("horating");
        String hostate=request.getParameter("hostate");
        String hocheckin=request.getParameter("hocheckin");mysession.setAttribute("hcin",hocheckin);
        String hocheckout=request.getParameter("hocheckout");mysession.setAttribute("cout",hocheckout);
        String hroomtyp=request.getParameter("horoomtyp");mysession.setAttribute("rtyp",hroomtyp);
        String roomprice=request.getParameter("roomprice");
        int roomf=Integer.parseInt(roomprice);
        String hcin=request.getParameter("hcin");
        String hcout=request.getParameter("hcout");
      
    %>
    <link rel="stylesheet" href="formbutton.css">
    <header>
        <title>hotel book form</title>
    </header>
  <body style="background-color:purple">
        <div align='center'>
            <div><span><h3 style="color:white;font-size:38px ;font-family: Exo;">Hotel Booking User Details</h3></span><br><br>
            </div>
        </div>
        <br>
        <!--Hotel details-->
  <div  style='margin-bottom: 10px;
    list-style-type: none;
    border-radius: 10px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    font-family: arial;font-size: 16px;
    '>
      
         <p style="color:purple;font-family: arial;font-size: 16px;font-weight:bold">Hotel Details:</p>
<table  align="center" style="
    list-style-type: none;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    color:purple;font-family: arial;font-size: 16px;margin-bottom: 10px;margin-top:10px">
          
      
    
            <tr>
                <td></td>
                <td height="40px">Hotel Name:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=honame%></font></td>
                 <td align="center"></td>
                <td></td>
                <td>Location:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=hocity%>,<%=hostate%></font></td>
            </tr>
            
            <tr>
                <td align="center"><img src="image/h.png"></td>
                <td>Check-In Date:&nbsp;<font style="color:black;font-weight:bold;"><%=hcin%></font></td>
                <td align="center"><img  width="40px" height="40px" src="image/lrarrow.png"><br><font style="color: #cccccc;"></font></td>
                <td></td>
                <td>Check-Out date:&nbsp;<font style="color:black;font-weight:bold;"><%=hcout%></td>
                
            </tr>
           
            <tr>
                <td align="center"><font style="color:black;font-weight:bold;"><%=horating%>&starf;</font>
                
                <td>Room Type:&nbsp;<font style="color:black;font-weight:bold;"><%=hroomtyp%></td>
                <td></td>
                <td width="200px"></td>
                <td>Number Of Room:&nbsp;<font style="color:black;font-weight:bold;"><%=hnoroom%></font></td>
                
            </tr>
              
                
      
                
                
         </table>
                    
        </div>
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
    <ul style="margin-left: 10px;color:blueviolet">    
        <li style="margin-bottom:20px;">Fare Per Night: <a style="color:Blue">Rs.<%=roomf%></a></li>
       
   </ul>
</div>
        
                    
                    <!--Customer details-->           
<div style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    font-family: arial;
    width:100%;
    ">
  <h2 style="margin-left: 10px;color:purple">Fill the Following Details:</h2>
    <table style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    background-color: whitesmoke;
    width:100%;
   
    ">
        <form action="" method="post" align='center'>
          <h2 align="left" style="margin-left:20px;color:blue">Contact Details</h2>
    <input  style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" type="number" placeholder=" Phone number" maxlength="10" name="custnum">
    <input type="text" name="custemail"required="true" style="margin-left: 20px;margin-top: 10px;height: 30px;" class="input" placeholder="Email Id"> 

    <h4 align="left" style="margin-left:20px;color:purple">Your Booking details Will be sent to this email address.</h4>
         <table>
            <thead style="color:green">
            <th >First Name</th>
            <th>Last Name</th>
            <th>Age</th>
             <th></th>
             </thead>
                <tr>
                    <td><input  class="input" style="margin-left: 20px;margin-top: 10px;margin-left: 20px;margin-top: 10px;height:30px;" type="text" placeholder="Full Name" name="hfname" required="true"></td>
                    <td><input  class="input" style="margin-left: 20px;margin-top: 10px;margin-left: 20px;margin-top: 10px;height:30px;" type="text" placeholder="Gender" name="hgen" required="true"></td>
                    <td><input  class="input" style="margin-left: 20px;margin-top: 10px;margin-left: 20px;margin-top: 10px;height:30px;width: 60px;" type="number" min='18' max='100' placeholder=" Age"name="hage" required="true"></td>
       
               </tr>
                
            </table> 
                        
            <center>
            
                <input type="Submit" value="Pay" align="center" style='margin-bottom: 10px;margin-top:10px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'>
                <input type="hidden" value="hotelbook" name="booktyp">
                <input type="hidden" value="<%=roomf%>" name="tfare1">
            </center>
                </div>
                    
        </form>
</body>
</html>
