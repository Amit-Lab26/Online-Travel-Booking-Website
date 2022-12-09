<%-- 
    Document   : HotelSearchForm
    Created on : Feb 26, 2020, 4:18:36 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>
        Hotel Search
    </title>
</head>
<header><jsp:include page="nav.jsp" /></header>
<body >
<form  action="Hotel_sear" method="POST">
                
                 <div style="background-image: url(image/Hotel.jpeg);margin-top:50px;width: 100%;height:500px;border-radius: 20px">
                    <center>
                     <lable align="center" size="24" style="margin-top:60px;color:white;font-family: arial;font-size:36px;font-weight: bolder"> HOTEL SEARCH </lable>
                    </center>

 <ul align="center" style="
    list-style-type: none;
    margin-top: 80px;
    border-radius: 20px;
    overflow: hidden;
    opacity: 1;
    background-color: #0099cc;
    width:100%;
    height: 250px;border">
     <center>              
        <table  style="margin-top: 10px;"> 
            <tr style="color: darkblue;font-size: 18px;font-family: arial;">
            <td align="center" >Location</td>
            <td align="center">Check-In Date</td>
            <td align="center">Expected Check-Out Date</td>
            <td align="center">Number of Person's</td>
            <td align="center">Room-Type</td>
            <td align="center">Number of Room</td>
            </tr>     
            
            
            <tr> 
<td>     
<select name="hloc"  style="border-radius:5px;
      font-size: 20px; 
        width:220px;height:100px;border-style:hidden;" id="myList">

<option style="color: black;font-size: 15px;" value="Select Location" disabled="" selected="">Select Location</option>

<option  value="Thane">Thane</option>

<option  value="Pune">Pune</option>

<option  value="panji">Panji</option>

<option  value="agra">Agra</option>

<option value="varanasi">Varanasi</option>

<option  value="khalsa">Khalsa</option>



</select>
        </td>


               
<td>        
<input type="date" name="checkin"  placeholder="Check-In Date" id="myList" style="border-radius:5px;
       font-size: 20px; 
        height:100px;width:220px;border-style:hidden;">


</td>
<td>           
<input style="border-radius:5px;
        font-size: 20px; 
        width:250px; height:100px;border-style:hidden;" type="Date" name="checkout" placeholder="Date">

</td><td>
    <select name="hano" style="border-radius:5px;
        font-size: 20px; 
        width:200px; height:100px;border-style:hidden;" placeholder="Select person's">
        <option disabled="" selected="">Select Person's</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
      
        <select>
</td>
<td>

 <select style="border-radius:5px;
        font-size: 20px; 
        width:200px; height:100px;border-style:hidden;" name="roomtyp">
<option style="color: black;font-size: 15px;" value="Select Room Type" disabled="" selected="">Room Type</option>
        
<option  value="Non-Ac">Non-Ac</option>

<option  value="Ac">Ac</option>

<option value="Delux">Delux</option>
</select>
    </td>
<td>


 <select style="border-radius:5px;
        font-size: 20px; 
        width:190px; height:100px;border-style:hidden;"name="noroom">
<option value="No of Room" disabled="" selected="">No of Room's</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
          
</td>
</tr>
</table>
</center> 
   
</ul>
  
    
  <center style="margin-top:-20px;">
<input type="Submit" value="SEARCH"
style="border-radius: 20px;width: 15%;height: 40px;background-color: darkblue;
font-size: 24px;font-weight: bold;color: white;border-color: #ffffff">
</center>
               
</div>	

</form>
</body>
<footer><jsp:include page="footer.jsp" /></footer>


