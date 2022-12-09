<%-- 
    Document   : payment
    Created on : Feb 29, 2020, 1:03:22 AM
    Author     : admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@page import="bean.LoginBean"%>
<!DOCTYPE html>
<html>
  <body>
      <h1 align="center" size="24"  style="color:darkblue">Payment</h1>
    
    <% 
         HttpSession mysession=request.getSession();
         
         
         if (mysession.getAttribute("userid")==null) {
            out.println("<center>"
            +"<form action='login' method='POST' >"
            +"<div style='padding-top: 30px;padding-bottom: 50px;margin-bottom: 40px ;;margin-top: 40px ;border-radius: 10px; height: 300px; width: 40%; background-color:whitesmoke; opacity: 0.8;'>"
		+"<p style='color: darkblue;font-size: 28px;margin-right: 300px; margin-top: 20px;font-family: arial;'>First Login</p><br>"
		+"<input style='border-radius: 5px; width: 80%;height: 40px;' type='text' name='username' placeholder='Email-Id' id='username'><br><br>"
		+"<input style='border-radius: 5px; width: 80%;height: 40px;' type='password' name='password' placeholder='Password' id='password'><br>"
		+"<p align='center'>"
                +"<input type='submit' style='color:white;border-radius: 20px;height: 30px;width: 40%;background-color: darkblue;font-size: 20px;'>"
                +"<input type='hidden' name='logintype' value='buslogin'>"
                +"<a href='regPage.jsp' style='font-size: 14px;color: #176f98;font-family: arial;'> Create New Account</a></p>"
                +"</div>"
	        +"</form>");
                    }
        else {
     %>           
        <form action="payment_sear" method="POST">    
            <div align="center">   
          <div style="background-color:skyblue; opacity: 0.7;
             height:450px; width: 450px;margin-top:50px"align="center">
            <br><p style="color: darkblue;opacity: 0.9;font-size: 25px;margin-top: 20%;">Select Payment Mode</p>
                <Select name="paymode"  rows="10"cols="10" style=" margin-left: 5px;
                         border-radius: 5px;margin-right:10px ;height:40px;width: 85%;
                         background-color: white;opacity: 0.8;font-size: 20px;margin-top: 50px;
                         color: black;" required="true" >
                    <option value="0" selected="" disabled="" >Select payment mode</option>
                    <option value="paytm">Paytm</option>
                    <option value="debit">Debit Card</option>
                    <option value="credit">Credit Card</option>
           </select>
          
            
              <center>
<input type="Submit" value="Pay" style="border-radius: 5px;width: 40%;height: 40px;background-color: darkblue;
       opacity: 0.8;font-size: 20px; margin-top: 20%;color: white;">

</center>
	</div>
            </div>
         
        </form>
<% }%>

  </body>
 </body>
</html>
