<%-- 
    Document   : paytm
    Created on : Mar 15, 2020, 12:38:54 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <body>
      <%
          HttpSession mysession=request.getSession();
             String tfare=(String)mysession.getAttribute("tfare");
             String booktyp=(String)mysession.getAttribute("booktyp");
      %>
        <h1 align="center" size="24"  style="color:darkblue">Paytm Payment</h1>
<form action="Paytm1" method="Post">
         <div align="center">   
          <div style="background-color:whitesmoke; opacity: 0.7;
             height:500px; width: 450px;margin-top:40px">
             <br>  
              <p style="color: darkblue;opacity: 0.9;font-size: 25px;margin-top: 5%;">Please Fill the Following Details</p>
              <p align="left" style="margin-left:40px;font-family: arial;color: blue;font-weight:bold">Enter 10-digit Paytm number</p>
            
              <p><input type="tel" name="pphn" minlength="10" maxlength="10" required="true" placeholder="1234*****" style="height:30px;width:80%;
                      border-radius: 5px; background-color: white;opacity: 0.8;font-size: 20px;margin-top: 5px;
                      color: black;"></p>
                 <p align="left" style="margin-left:40px;font-family: arial;color: blue;font-weight:bold">Paytm holder's Name</p>
              
             <p><input type="text" name="pname" required="true" placeholder="abc**" style="height:30px;width:80%;
                      border-radius: 5px; background-color: white;opacity: 0.8;font-size: 20px;margin-top: 5px;
                         color: black;"></p>
             <p align="left" style="margin-left:40px;font-family: arial;color: blue;font-weight:bold">Paytm Password</p>
             <input type="password" name="ppass" required="true" placeholder="Enter your paytm password" style="height:30px;width:80%;
                      border-radius: 5px; background-color: white;opacity: 0.8;font-size: 20px;margin-top: 5px;
                         color: black;"></p>
             <p style="font-family: arial;font-variant: traditional;color: blueviolet;font-weight:bold"><span>Amount to be Paid: </span>Rs.<%=tfare%></p>
              <center>
<input type="Submit" value="Pay" style="border-radius: 5px;width: 40%;height: 40px;background-color: darkblue;
opacity: 0.8;font-size: 20px; margin-top:10px;color: white;">
<input type="hidden" value="<%=tfare%>" name="payamount">
<input type="hidden" value="<%=booktyp%>" name="booktype">
<input type="hidden" value="Paytm" name="Paytype">
              </center>
	</div>
            </div>
        
         
        </form>

    </body>
              

</html>

