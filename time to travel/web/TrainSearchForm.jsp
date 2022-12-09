<%-- 
    Document   : TrainSearchForm
    Created on : Feb 26, 2020, 4:18:52 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head><title>Train Search</title>
</head><header><jsp:include page="nav.jsp" /></header>
   
              <script type="text/javascript">


      
      function hide()
         {
             document.getElementById("d2").hidden=true;
             document.getElementById("d3").hidden=true;
             document.getElementById("ddate").disabled=true;
            
         }
      function show()
         {
            
             document.getElementById("d2").hidden=false;
             document.getElementById("d3").hidden=false;
             document.getElementById("ddate").disabled=false;
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
          document.getElementById("cdp").innerHTML="<font style='color:red'>Boarding & Arrival Station cannot be Same!</font>";
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
             
           <form  action="Train_sear" method="POST">
                
<div style="background-image: url(image/train.jpeg);margin-top:20px;width: 100%;height:500px;border-radius: 20px">
<h1 align="center"  style="color:white;font-family: arial;font-weight:bold"> TRAIN SEARCH</h1>

    <table style="font-family: arial;font-weight:bold;"><tr><td> <h3 style="color:white;margin-left:30px;">Book Type</h3></td>
                    </tr>  <tr><td style="color:yellow;margin-left:30px;">
        <input  type="radio" name="journey" value="one"   id="one"  checked onclick="hide()" />One Way
        <input  type="radio" name="journey" value="round" id="round"        onclick="show()" /> Round Trip </td>
                          </tr></table>
<div align="center">
<ul style="
    list-style-type: none;
    margin-top: 80px;
    margin-right: 10px;
    margin-left: 10px;
    border-radius: 20px;
    overflow: hidden;
    opacity: 0.7px;
    background-color: #0099cc;
    width:90%;
    height: 250px;">
      <center>
        <table  style="margin-left: -35px;margin-top: 10px;"> 
            <tr style="color: darkblue;font-size: 18px;font-family: arial;">
                <td align="center">From</td>
                <td align="center">To</td>
                <td align="center">Journey Date</td>
                <td align="center">Class</td>
                <td align="center" id="d2" hidden>Return Date</td>
            </tr>   
            
<tr> 
<td>     
<select required="true" name="tfrom" onchange="validate(this.id)" id="pcity"  style="border-radius:5px;
       font-size: 20px; 
       width:220px;height:100px;border-style:hidden;" >

<option  value="" disabled="" selected="">From</option>
<option value="dli">Delhi</option>
<option  value="ksh">Kashi</option>
<option  value="mum">Mumbai</option>
<option  value="ald">Allhabad</option>



</select>
        </td>

               
<td>        
<select required="true" name="tto"  id="dcity" onchange="validate(this.id)" style="border-radius:5px;
        font-size: 20px; 
        height:100px;width:220px;border-style:hidden;">

<option  value="" disabled="" selected="">To</option>
<option value="dli">Delhi</option>
<option  value="ksh">Kashi</option>
<option  value="mum">Mumbai</option>
<option  value="ald">Allhabad</option>

</select>
</td>
  <lable id="cdp"></lable>
<td>           
<input required="true" style="border-radius:5px;
       font-size: 20px; 
         width:200px; height:100px;border-style:hidden;" id="pdate" type="Date" name="tdate" placeholder="Date">

</td><td>

<select required="true" name="tclass" id="myList" style="border-radius:5px;
        font-size: 20px; 
      width:150px; height:100px;border-style:hidden;" >
    <option style=" color: black;font-size: 15px;" value="" disabled="" selected="">Class</option>
<option value="a">2-AC</option>
<option value="b">3-AC</option>
<option value="s">Sleeper</option>

</select>
</td>
<td id="d3" hidden>
  <input style="border-radius:5px;
        background-color:white;border-style:hidden;font-size: 20px; 
        color:black; width:190px; height:100px;" type="Date" onchange="datecheck()" id="ddate" name="trdate">
</td></tr></table></center>
  
        </ul>

<center style="margin-top:-20px;">
<input type="Submit" value="SEARCH" id="submit" 
style="border-radius: 20px;width: 15%;height: 40px;background-color: darkblue;
font-size: 24px;font-weight: bold;color: white;border-color: #ffffff">
</center>             


	
</div> 
          </div>
 </form>
               
<footer><jsp:include page="footer.jsp" /></footer>

