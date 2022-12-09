 <%-- 
    Document   : BusSearchForm
    Created on : Feb 26, 2020, 4:17:33 PM
    Author     : admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head><title>Bus Search</title>
</head>
<header><jsp:include page="nav.jsp" /></header>
<form  action="Bu_sear" method="POST">
                
                <div style="background-image: url(image/bus.jpg);margin-top:20px;width: 100%;height:500px;border-radius: 20px">
                    <center>
                     <lable align="center" size="24" style="margin-top:60px;color: white ;font-family: arial;font-size:36px;font-weight: bolder"> BUS SEARCH </lable>
                    </center>
<center> 
<ul style="
    list-style-type: none;
    margin-top: 80px;
    border-radius: 20px;
    overflow: hidden;
    opacity: 0.7px;
    background-color: #0099cc;
    width:99%;
    height: 250px;">
        <table  style="margin-top: 10px;"> 
            <tr style="color: darkblue;font-size: 18px;font-family: arial;">
                <td align="center" >From</td>
                <td align="center">To</td>
                <td align="center">Journey Date</td>
                <td align="center">No of Adult</td>
                <td align="center">No of Child</td>
                <td align="center">Class</td>
                
            </tr>     
            
            
            <tr> 
<td>     
<select name="bFrom"  style="border-radius:5px;
    font-size: 20px; 
      width:220px;height:100px;border-style:hidden;" id="myList">

<option value="" disabled="" selected="">From</option>
<option  value="Mumbai">Mumbai</option>
<option  value="Thane">Thane</option>
<option  value="Goa">Goa</option>
<option  value="Kalyan">Kalyan</option>
<option  value="Nalasopara">Nalasopara</option>
<option  value="Vashi">Vashi</option>
<option value="Vasai">Vasai</option>


</select>
        </td>

               
<td>        
<select  name="bTo"  id="myList" style="border-radius:5px;
        font-size: 20px; 
      height:100px;width:220px;border-style:hidden;font-family: arial;">

<option  value="" disabled="" selected="">To</option>
<option  value="Mumbai">Mumbai</option>
<option  value="Thane">Thane</option>
<option  value="Goa">Goa</option>
<option  value="Kalyan">Kalyan</option>
<option  value="Nalasopara">Nalasopara</option>
<option  value="Vashi">Vashi</option>
<option value="Vasai">Vasai</option>
</select>
</td>
<td>           
<input style="border-radius:5px;
       font-size: 20px; 
       width:200px; height:100px;border-style:hidden;" type="Date" name="bjdate" placeholder="Date">

</td><td>
    <input type="number" name="bano" style="border-radius:5px;
        font-size: 20px; 
        width:150px; height:100px;border-style:hidden;" placeholder="Adult"  min="0" max="6" required="true">
</td>
<td>
 <input type="number" name="bcno" style="border-radius:5px;
        font-size: 20px; 
        width:150px; height:100px;border-style:hidden;" placeholder="Child" min="0" max="6" required="true">
    </td><td>

<select name="bclass" id="myList" style="border-radius:5px;
        font-size: 20px; 
        width:150px; height:100px;border-style:hidden;" >
    <option  vlue="" disabled="" selected="">Bus Type</option>
<option  value="A-C">AC</option>
<option  value="Non-AC">Non-AC</option>
</select>
</td>

            </tr>
        </table> 
 </ul>
                   
<center style="margin-top:-20px;">
<input type="Submit" value="SEARCH"
style="border-radius: 20px;width: 15%;height: 40px;background-color: darkblue;
font-size: 24px;font-weight: bold;color: white;border-color: #ffffff">
</center> 
</center>           
</div> 

 </form>
 <footer><jsp:include page="footer.jsp" /></footer>              


