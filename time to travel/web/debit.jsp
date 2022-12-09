<%-- 
    Document   : debit
    Created on : Mar 15, 2020, 12:39:13 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <body>
        <h1 align="center" size="24"  style="color:darkblue">Debit Payment</h1>
        <form action="payserv" method="POST">
                    
              
        <div align="center"> 
          
            <table  style="background-color:whitesmoke; opacity: 0.7;
              width: 450px;margin-top:40px">

                                 
<tr align="center"><td> <p style="color: darkblue;opacity: 0.9;font-size: 25px;margin-top: 5%;">Please Fill the Following Details</p></td>
</tr><tr  align="center"> <td>  <Select name="paymode" type=number rows="10"cols="10" style=" margin-left: 5px;
                         border-radius: 5px;margin-right:10px ;height:40px;width: 85%;
                         background-color: white;opacity: 0.8;font-size: 20px;margin-top: 5%;
                         color: black;" >
                    <option  value="0" selected="" disabled="">Select debit-card type</option>
                    <option value="Rupay">Rupay</option>
                    <option value="MasterCard">Master-Card</option>
                    <option value="Visa">Visa</option>
                    
        </select></td></tr>
<tr  align="center"><td><input align="center" type="tel" name="ppnh" placeholder="Enter your debit number" style="height:30px;width:80%;
                      border-radius: 5px; background-color: white;opacity: 0.8;font-size: 20px;margin-top: 5%;
                      color: black;"></td></tr>
<tr  align="center"><td><input align="center" type="text" name="pname" placeholder="Enter your paytm name" style="height:30px;width:80%;
                      border-radius: 5px; background-color: white;opacity: 0.8;font-size: 20px;margin-top: 5%;
                      color: black;"></td></tr>
<tr align="center"><td><input align="center" type="password" name="ppass" placeholder="Enter your paytm password" style="height:30px;width:80%;
                      border-radius: 5px; background-color: white;opacity: 0.8;font-size: 20px;margin-top: 5%;
                      color: black;"></td></tr>
              
<tr  align="center"><td><input type="Submit" value="Pay" align="center" 
style="border-radius: 5px;width: 40%;height: 40px;background-color: darkblue;
opacity: 0.8;font-size: 20px; margin-top: 10%;margin-bottom:10% ;color: white;">
</td></tr>
           
            </table>
          
          </div>
	
             </div>
        </form>
    </body>
              

</html>


