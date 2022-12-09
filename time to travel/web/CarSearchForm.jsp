<%-- 
    Document   : CarSearchForm
    Created on : Feb 26, 2020, 4:12:15 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head><title>Car Search</title>
</head>
<header><jsp:include page="nav.jsp" /></header>

<script type="text/javascript">
 
 window.onload=function(){
       if(document.getElementById('o').checked){
          document.getElementById("o").checked="true";
          document.getElementById("r").checked="false";
          document.getElementById("d1").hidden=true;
          document.getElementById("d2").hidden=true;
          document.getElementById("d3").hidden=true;
          document.getElementById("d4").hidden=true; 
          
           }
      else if(document.getElementById('r').checked){    
          
             document.getElementById('r').checked="true";
             document.getElementById("o").checked="false";
             document.getElementById("d1").hidden=false;
             document.getElementById("d2").hidden=false;
             document.getElementById("d3").hidden=false;
             document.getElementById("d4").hidden=false;
       
        }
        else{
        document.getElementById("o").checked="true";
          document.getElementById("d1").hidden=true;
          document.getElementById("d2").hidden=true;
          document.getElementById("d3").hidden=true;
          document.getElementById("d4").hidden=true; 
           }
  };
    function hide(){
     
       
   
          document.getElementById("d1").hidden=true;
          document.getElementById("d2").hidden=true;
          document.getElementById("d3").hidden=true;
          document.getElementById("d4").hidden=true; 
         
         }
      function show()
      {
        
       
             document.getElementById("d1").hidden=false;
             document.getElementById("d2").hidden=false;
             document.getElementById("d3").hidden=false;
             document.getElementById("d4").hidden=false;
      
        }
      
       
    
     
     function validate(id)
     {
       var p=document.getElementById("pcity").value; 
       var d=document.getElementById("dcity").value;
       if(id==='pcity'||id==='dcity')
       {
       if(p===d)
       {
          document.getElementById("submit").disabled=true; 
          document.getElementById("cdp").innerHTML="<font style='color:red'>Pickup & Drop City cannot be Same!</font>";
       }
      else
       {
         document.getElementById("submit").disabled=false;
         document.getElementById("cdp").innerHTML="";
       }
      }
  }
  function datecheck()
  {
        
           var pd=document.getElementById("pdate").value; 
           var dd=document.getElementById("ddate").value; 
           if(dd<pd)
              {
          document.getElementById("submit").disabled=true; 
          document.getElementById("cdp").innerHTML="<font style='color:red'>Please Enter Valid Date !</font>";
              }
              else
              {
            document.getElementById("submit").disabled=false; 
            document.getElementById("cdp").innerHTML="";    
              }
          }
         

   
  
   
              
  </script>
  
<body>
<form  action="ca_sear" method="POST">
<div style="background-image: url(image/car.jpeg);margin-top:20px;width: 100%;height:500px;border-radius: 20px">
<center>
<h1 align="center" style="margin-top:60px;color: white;font-family:arial;font-size:36px;font-weight:bolder"> CAR SEARCH </h1>
</center>
    
    <table  style="font-family: arial;font-weight:bold;"><tr><td> 
                <h3 style="color:#0099cc;margin-left:30px;">Book Type</h3></td>
                    </tr>
                        <tr>
                        <td style="color: #0099cc;margin-left:30px;" >
                       
                            <input  type="radio" name="jrtype"  value="one" id="o"  onclick="hide()">One Way
                            <input  type="radio" name="jrtype"  value="round" id="r" onclick="show()">Round Trip
                   
                        </td>
  
</tr>
    </table>

<div align="center">
  <ul style="
    list-style-type: none;
    margin-top:50px;
    border-radius: 20px;
    overflow: hidden;
    opacity: 0.7px;
    background-color: #0099cc;
    width:99%;
    height: 250px;">

      <center>                   
        <table  style="margin-left: 5px;margin-top: 10px;"> 
            
            <tr style="color: darkblue;font-size: 18px;font-family: arial;">
                <td align="center">Pick Up City</td>
                <td align="center">Drop off City</td>
                <td align="center">Pick Up Date</td>
                <td align="center">Pick Up Time</td>
                <td align="center"  id="d1">Drop Off Date</td>
                <td align="center"  id="d2">Drop Off time</td>
                <td align="center">Car Type</td>
            </tr>     
            
<!--- Pickup city-->            
<tr> 
   <td>     
       <select required="true" name="cpcity"  onchange="validate(this.id)" id="pcity"  style="border-radius:5px;
    font-size: 20px; 
        width:200px;height:100px;border-style:hidden;">
<option  value="" disabled="" selected="">From</option>
<option  value="Mumbai">Mumbai</option>
<option  value="Thane">Thane</option>
<option  value="Pune">Pune</option>
      </select>
</td>

        <!---Drop off city-->  
        <td>
            <select required="true" name="cdcity" id="dcity" onchange="validate(this.id)" style="border-radius:5px;
   font-size: 20px; 
width:200px;height:100px;border-style:hidden;">
<option  value="" disabled="" selected="">To</option>
<option  value="Mumbai">Mumbai</option>
<option  value="Thane">Thane</option>
<option  value="Pune">Pune</option>
           </select>
        </td> <label id="cdp"></label>
         <!---car pickup date-->  
        <td>          
<input required="true" style="border-radius:5px;
  font-size: 20px; 
width:200px; height:100px;border-style:hidden;"  id="pdate"  type="Date"  name="cpdate" placeholder="Date">
        </td>
     <!---car pickup time-->  
 <td><input style="border-radius:5px;
font-size: 20px; 
 width:150px; height:100px;border-style:hidden;" id="ptime" type="time" onchange="timeformat()" name="cptime"  required/>
  </td>
   <!---car return date-->  
  <td id="d3">
      <input style='border-radius:5px;font-size: 20px;width:200px;height:100px;border-style:hidden;' onchange="datecheck()"  id="ddate" type="Date"   name="crdate" >
  </td>
   <!---car return time--> 
  <td id="d4">
      <input style='border-radius:5px;font-size: 20px;width:150px; height:100px;border-style:hidden;' id="dtime" type="time"   name="crtime" >
  </td>
    <!---car Seats--> 
<td>
<select  name="cseat"  style="border-radius:5px;
        font-size: 20px; 
        width:150px; height:100px;border-style:hidden;">
    <option style=" color: black;font-size: 15px;" value="" disabled="" selected="">Car Type</option>
    <option value="4">Four-seater</option>
    <option value="7">Seven-seater</option>
    <option value="9">Luxury</option>
    </select>
</td>
</tr>
    </table> 
         </center>
                        
  
    </ul>
 <!---car search--> 
                   
<center style="margin-top:-20px;">
    <input type="submit" value="SEARCH" id="submit"
style="border-radius: 20px;width: 15%;height: 40px;background-color: darkblue;
font-size: 24px;font-weight: bold;color: white;border-color: #ffffff">
<div id="flddiv"></div>
</center> 
</div>            
</div>   
 </form>
           
<footer><jsp:include page="footer.jsp" /></footer>
 </body>  




































    


	

                  
                 
