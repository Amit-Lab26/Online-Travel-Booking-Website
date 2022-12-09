<%-- 
    Document   : FlightSearchForm
    Created on : Feb 26, 2020, 4:18:14 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head><title>Flight Search</title>
</head><header><jsp:include page="nav.jsp" /></header>
<script>
      var res1,infant_flag=false,child_flag=false,adult_flag=false; 
          var pdate_flag=false,ddate_flag=false,cardno_flag=false;
          window.onload=function(){
       if(document.getElementById('one').checked){
          document.getElementById("one").checked="true";
          document.getElementById("round").checked="false";
          document.getElementById("d1").hidden=true;
          document.getElementById("d2").hidden=true;
      
          
           }
      else if(document.getElementById('round').checked){    
          
             document.getElementById('round').checked="true";
             document.getElementById("one").checked="false";
             document.getElementById("d1").hidden=false;
             document.getElementById("d2").hidden=false;
         
       
        }
        else{
          document.getElementById("one").checked="true";
          document.getElementById("d1").hidden=true;
          document.getElementById("d2").hidden=true;
         
           }
  };
         function pvalidate()
         {
            var na=Number(document.getElementById("na").value);
            var nc=Number(document.getElementById("nc").value);
            var t=na+nc;
             
             if(t>9)
             {
                  document.getElementById("submit").disabled=true; 
                  document.getElementById("fdp").innerHTML="<font style='color:red'>Only 9 passenger's can be Selected!</font>";
      
             }
             else
             {
                 document.getElementById("submit").disabled=false;
                 document.getElementById("fdp").innerHTML="";
             }
           
         }
         
         function hide()
         {
             document.getElementById("d2").hidden=true;
             document.getElementById("d3").hidden=true;
             ddate_flag=true;
             
           
         }
         function show()
         {
             document.getElementById("d2").hidden=false;
             document.getElementById("d3").hidden=false;
                ddate_flag=false;  
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
          document.getElementById("fdp").innerHTML="<font style='color:red'>Pickup & Drop City cannot be Same!</font>";
       }
      else
       {
         document.getElementById("submit").disabled=false;
         document.getElementById("fdp").innerHTML="";
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
          document.getElementById("fdp").innerHTML="<font style='color:red'>Please Enter Valid Date !</font>";
              }
              else
              {
            document.getElementById("submit").disabled=false; 
            document.getElementById("fdp").innerHTML="";    
              }
          }
    </script>
<form  action="Flight_sear" method="POST">
                
                <div style="background-image: url(image/flight.jpeg);margin-top:20px;width: 100%;height:500px;border-radius: 20px">
                    <center>
                     <label align="center" size="24" style="margin-top:60px;color: white ;font-family: arial;font-size:36px;font-weight: bolder"> FLIGHT SEARCH </label>
          </center>
                    
                    <table style="font-family: arial;font-weight:bold;"><tr><td> <h3 style="color:yellow;margin-left:30px;">Book Type</h3></td>
                       </tr><tr><td style="color:#0099cc;margin-left:30px;">
        <input  type="radio" name="jrtyp" value="one" id="one"  checked onclick="hide()" />One Way  &nbsp;&nbsp;&nbsp;&nbsp;
        <input  type="radio" name="jrtyp" value="round" id="round" checked onclick="show()" /> Round Trip </td>
                        <td></td></tr></table>
                  
                    <div align="center">
<ul style="
    list-style-type: none;
    margin-top: 80px;
    border-radius: 20px;
    overflow: hidden;
    background-color: #0099cc;
    width:99%;
    height: 250px;">
        <table style="margin-top: 10px;border-radius:5px;"> 
            <tr style="color: #00008B;font-size: 18px;font-family: arial;font-weight: normal">
                <td align="center">From</td>
                <td align="center">To</td>
                <td align="center">Journey Date</td>
                <td align="center">No. of Adult</td>
                <td align="center">No. of Child</td>
                <td align="center">Class</td>
                <td align="center" id="d2" hidden>Return Date</td>
            </tr>     
            
           
            <tr> 
<td style="margin-top: 10px;">     
<select onchange="validate(this.id)" name="ffrom"  style="border-radius:5px;font-size: 20px; 
       width:220px;height:100px;border-style:hidden;" id="pcity" required>

<option  value="" disabled="" selected="">From</option>

<option  value="Amd">Ahemdabad</option>

<option  value="mum">Mumbai</option>

<option  value="bsb">Varanasi</option>

<option  value="hyd">Hydrabad</option>


</select>
        </td>

         <lable id="fdp"></lable>         
<td>        
<select onchange="validate(this.id)"  name="fto"  id="dcity" style="border-radius:5px;font-size: 20px; 
       height:100px;width:220px;border-style:hidden;" required>

<option value="" disabled="" selected="">To</option>
<option  value="Amd">Ahemdabad</option>

<option  value="mum">Mumbai</option>

<option  value="bsb">Varanasi</option>

<option  value="hyd">Hydrabad</option>

</select>
</td>
<td>           
<input style="border-radius:5px;font-size: 20px; 
     width:200px; height:100px;border-style:hidden;" id="pdate" type="Date" name="fdate" placeholder="Date" required>

</td><td>
    <select type="number" name="fadult" style="border-radius:5px;font-size: 20px; 
  width:150px; height:100px;border-style:hidden;" onchange="pvalidate();" id="na" min="0" max="9" placeholder="Adult" required>
        <option  value="" 
                 >Adult</option>
        <option  value="1">1</option>
        <option  value="2">2</option>
        <option  value="3">3</option>
        <option  value="4">4</option>
        <option  value="5">5</option>
        <option  value="6">6</option>
        <option  value="7">7</option>
        <option  value="8">8</option>
        <option  value="9">9</option>
    </select>
    
    </td>
<td>
 <select  name="fchild" style="border-radius:5px;
    font-size: 20px; 
  width:150px; height:100px;border-style:hidden;" onchange="pvalidate();" id="nc" min="0" max="6" placeholder="Child">
        <option type="number" value="" disabled="" selected="">Child</option>
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
 </select>
 </td><td>

<select name="fType" style="border-radius:5px;
   font-size: 20px;width:150px; height:100px;border-style:hidden;" required>
<option value=""  selected="" disabled="true">Class</option>
<option  value="Business">Business</option>
<option  value="Ecomomy">Economy</option>
</select>
</td>
<td id="d3" hidden >
  <input  style="border-radius:5px;background-color:white;border-style:hidden;font-size: 20px; 
        color:black; width:190px; height:100px;" onchange="datecheck()" id="ddate" type="Date" name="frdate">
</td>
            </tr></table> 
    <legend style="margin-top:20px;font-family: arial;font-size:18px;color:#ffffff;"><input  type="checkbox" name="fdirect" value="direcflight">Select to view only direct Flight</legend>    

               
              
</ul>

<center style="margin-top:-25px;">
<input type="Submit" value="SEARCH" id="submit"
style="border-radius: 20px;width: 15%;height: 40px;background-color: darkblue;
font-size: 24px;font-weight: bold;color: white;border-color: #ffffff">
</center> 
</div>	
                 
</div>  

 </form>
               
<footer><jsp:include page="footer.jsp" /></footer>

