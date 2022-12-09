<%-- 
    Document   : registrationPage
    Created on : Feb 26, 2020, 4:19:28 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
   </head>
   <header><%@include file="./nav.jsp" %></header>
<body style="background-color: dodgerblue;
             ">
             <h1 align="center" size="24"  style="color:darkblue">Time To Travel Register</h1>
             <form  action="Registerusr" method="POST">
                 <center>
                     <div align='center' style="background-color:whitesmoke;width:750px;height: 100%;border-radius: 20px;">
             <table>
             <tr>
          <!--- first name--->  
            <td>
             <p>
                <input style="border-color:darkblue;border-radius: 20px;width:250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 5px;color: green;"type="text" 
    name="usrfname" placeholder="First Name"></p>
            </td>
            
            <!--- last name--->       
            <td>
             <p>
                <input align='right' style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    ;margin-top: 5px;color: green;"type="text" 
    name="usrlname" placeholder="Last Name"></p>
            </td>
            
            </tr>
            <tr>
            <!--- Email--->
            <td>
                <p>
            <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left:5px;margin-top: 5px;color: green;"type="text" 
    name="usremail" placeholder="Type Your Email address"></p>
            </td>
            <!---AGE-->
            <td>
                <p>
                <input style="border-color:darkblue;border-radius: 20px;width:250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 5px;color: black;" type="number" min="18" max="100"
    name="usrage" placeholder="Age"></p>
            </td>
            </tr>
            <tr>
          <!---gender-->
          <td>
              <p>
                <select style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left:5px;margin-top: 10px;color: black;" type="text" 
                    name="usrgen">
<option style="color: black;font-size: 15px;" value="" disabled="true" selected="">Select Gender</option>
<option style="color: black;font-size: 15px;" value="Female">Female</option>
<option style="color: black;font-size: 15px;" value="Male">Male</option>
<option style="color: black;font-size: 15px;" value="oth">other</option>
                </select></p>
            </td>
          <!---DOB-->
            
           
          <td>
              <p>
            <input  style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 10px;color: black;" type="date" 
    name="usrdob"></p>
          </td>
           </tr>
           <tr>
           <!--phone-->
           <td>
               <p>
                <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 5px;color: black;" type="text" 
    name="usrphn" placeholder="Type Your Phone Number"></p>
          </td>
           
            <!--add-->
        
            <td>
                <p>
                <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 5px;color: black;" type="text" 
    name="usradd" placeholder="Type Your address"></p>
            </td>
            
            </tr>
        <tr>
             <!--city-->
             <td><p>
        
                <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 5px;color: black;" type="text" 
    name="usrcity" placeholder="Type Your City name"></p>
            </td>
            
           <!--state-->
           
            <td>
                <p>
                <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left:5px;margin-top: 5px;color: black;" type="text" 
    name="usrstate" placeholder="Type Your State name"></p>
            </td>
            
            </tr>
            <tr>
            <td>
            <!--pin-code-->
            <p>
                <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 5px;color: black;" type="number" 
    name="usrpinc" placeholder="Type Your Pincode"></p>
            </td>
            </tr>
            

           
            <tr>
            <td>
                <p>
            <!--password-->
                <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left:5px;margin-top: 5px;color: black;" type="text" 
    name="usrpwd" placeholder="Type Password"></p>
            </td>
            <td>
                <P>
           <!--confirm password-->
         
                <input style="border-color:darkblue;border-radius: 20px;width: 250px;height: 40px;
    background-color: white;opacity: 0.8;font-size: 20px; 
    margin-left: 5px;margin-top: 5px;color: black;" type="text" 
    name="usrcnfpwd" placeholder="Type Password again"></p>
            </td>
         
            </tr>
            
            </table>
        
           <!-- <input type="checkbox" name="regpolc">You have to agree the of time to travel before register.</p> -->
<center>
<input type="Submit"  value="Register" style="border-color:dodgerblue;margin-bottom: 10px;border-radius: 20px;width: 20%;height: 40px;background-color:darkblue;opacity: 0.8;font-size: 20px; margin-top: 5px;color:white;">
</center>
	
            
        </form>
</div>
                 </center>
        </div>
        </body>       

   
    <%@include file="./footer.jsp" %>

             </html>