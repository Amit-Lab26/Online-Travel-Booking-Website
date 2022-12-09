<%@page import="java.sql.Time"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <%
        HttpSession mysession=request.getSession();
        
        String cid=request.getParameter("carid");mysession.setAttribute("cid",cid);
        String ccmp=request.getParameter("carcmp");mysession.setAttribute("cmp",ccmp);
        String ctyp=request.getParameter("carseats");mysession.setAttribute("ctyp",ctyp);
        String cfare=request.getParameter("cfare");
        String cfar=request.getParameter("cfar");
        String dist=request.getParameter("dist");
        String dcity=(String)mysession.getAttribute("cdcity");
        String pcity=(String)mysession.getAttribute("cpcity");
        String cjrtype=(String)mysession.getAttribute("cjrtype");
        Date jdate=(Date)mysession.getAttribute("jdate");
        
     
          String crdate=(String)mysession.getAttribute("crdate");
          String crtime=(String)mysession.getAttribute("crtime");
              
        
        
%>
 
    <script>
        var a='<%=cjrtype%>';
       window.onload=function(){
           if(a==='round')
        {
           
            document.getElementById("rd1").hidden=false;
            document.getElementById("rd2").hidden=false;
        }
        else
        {
            document.getElementById("rd1").hidden=true;
            document.getElementById("rd2").hidden=true; 
        }
    };
        </script>
   

  <body style="background-color:purple;background-size: cover;" >
     <link rel="stylesheet" href="formbutton.css">
     <div align='center'>
     <div><span><h3 style="color:white;font-size:38px ;font-family: Exo;">Car Booking User Details</h3></span><br><br>
     </div>
     </div>
        <br>
    <div  style='margin-bottom: 10px;
    list-style-type: none;
    border-radius: 10px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    font-family: arial;font-size: 16px;
    '>
      
<table align="center" style="
    list-style-type: none;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    color:purple;font-family: arial;font-size: 16px;margin-bottom: 10px;font-weight:bold;">
     
            <thead align="center" style="background-color:whitesmoke;" >
                 <th></th>
                        <th align="center">Company</th>
                        <th align="center">From</th>
                        <th align="center">To</th>
                        <th align="center">Journey Date</th>
                        <th align="center" id="rd1">Return Date</th>
                        <th align='center' style="border-top-right-radius:20px;border-bottom-right-radius:20px;">Fare</th>
                </thead>
                     <tr align="center" style="color: blue;font-weight:bold;font-variant-caps: small-caps">
                         <td><img src="image/car2.png"></td>
                        <td><%=ccmp%></td>
                        <td><%=pcity%></td>
                        <td><%=dcity%></td>
                        <td><%=jdate%></td>
                        <td id="rd2"><%=crdate%></td>
                        <td>Rs. <%=cfare%></td>
                       </tr>
                
                
                </table>
        </div>   
                        
   <div style="
    margin-top: 30px;
    list-style-type: none;
    border-radius:10px;
    background-color:white;
    overflow: hidden;
    width:100%;
    height:100%;
    color:purple;font-family: arial;font-size: 16px;">
    <h2 style="margin-left:10px;">Car details</h2>
                          <table>
                              <tr>
                                  <!-- Facilities-->
                                <td><div  style="border-radius:10px;border-width: thin;border-style: solid;border-color: #cccccc;background-color:white;margin-left:60px;width:400px;height:250px;">
                                    <h4 style="margin-left:10px;font-variant: all-petite-caps">Facilities</h4>
                                    <h4 style="margin-left:10px;color:blue"><img src="image/seat-1.png"><%=ctyp%>-Seats</h4>
                                    <h4 style="margin-left:10px;color:blue"><img src="image/bag.png">2-Bag</h4>
                                    <h4 style="margin-left:10px;color:blue"><img src="image/ac.png">Ac</h4>
                                  </div></td>
                                  <!--Inclusions-->
                                <td><div style="border-radius:10px;border-width: thin;border-style: solid;border-color:#cccccc;background-color:white;width:400px;height:250px">
                                        <h4 style="margin-left:10px;font-variant: all-petite-caps">Inclusions</h4> 
                                      
                                             <h4 style="margin-left:10px;color:blue"><c style="color:green">&check;</c> <%=dist%> Kms</h4> 
                                             <h4 style="margin-left:10px;color:blue"><c style="color:green">&check;</c>  Driver Allowance</h4> 
                                             <h4 style="margin-left:10px;color:blue"><c style="color:green">&check;</c>  Only One Pickup and Drop</h4> 
                                   <!-- Extra Fare-->
                                </div></td><td>
                                    <div style="border-radius:10px;border-width: thin;border-style: solid;border-color:#cccccc;background-color:white;width:400px;height:250px">
                                        <h4 style="margin-left:10px;font-variant: all-petite-caps">Extra Fare</h4>
                                        <table style="color:black;margin-top:-20px;font-weight:bold;font-size:15px;width:400px" >
                                                        <tr >
                                                             <td><ul><li style="color:green;margin-top:-5px;margin-bottom:-10px;"></li></ul></td>
                                                             <td><h5 style="color:blue;margin-top:-5px;margin-bottom:-10px;">Fare beyond <%=dist%> Kms</h5></td>
                                                             <td>Rs. <%=cfar%>/Km</h5></td>
                                                        </tr>
                                                        <tr>
                                                            <td><ul><li style="color:green;margin-top:-5px;margin-bottom:-10px;"></li></ul></td>
                                                            <td><h5 style="color:blue;margin-top:-5px;margin-bottom:-10px;">Toll Tax and State Tax</h5></td>
                                                            <td>As applicable</td>
                                                        </tr>
                                                     
                                                        <tr>
                                                            <td><ul><li style="color:green;margin-top:-5px;margin-bottom:-10px;"></li></ul></td>
                                                            <td><h5 style="color:blue;margin-top:-5px;margin-bottom:-10px;">Parking/Airport Entry Charges</h5></td>
                                                            <td>As applicable</td>
                                                        </tr>
                                             </table>




                                            
                                        

                                        
                                </div></td>
                              </tr></table>
                                                      
                      
    </div>
                                                       

<div style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    background-color: white;
    font-family: arial;
    width:100%;
  
    ">
  <h2 style="margin-left: 10px;color:purple">Confirm Pickup Details</h2>
  <h4 style="opacity:0.8">This will help driver to reach you on time.</h4>
  <form action="book/carbook.jsp" method="post">

      <legend style="margin-left: 20px;margin-top: 10px;color:green;font-family: arial;font-weight:bold;">Pickup Address</legend>
     <input required name="cadd" type="text" class="input" style=" margin-left: 5px;
                         border-radius: 5px;margin-right:10px ;height:40px;width:600px;"
        placeholder="Enter exact pick-up address /nearby location /building name"                >
    <table style="margin-top: 40px;
           margin-left: 20px;
    list-style-type: none;
    border-radius: 10px;
    overflow: hidden;
    background-color: whitesmoke;
    ">
        <thead style="font-family:arial;font-weight:bold;color:green;">
        <td>Name</td>
        <td>Email Id</td>
        <td>Contact Number</td>
        </thead>
                <tr>
                    <td><input required style="margin-top: 10px;" class="input" type="text" placeholder=" Full Name"name="cname"><br><br></td>
                    <td><input required style="margin-top: 10px;" class="input" type="text" placeholder=" Email"name="cemail"><br><br></td>
                    <td><input required style="margin-top: 10px;" class="input" type="number" placeholder="Phone number"name="cphn"><br><br></td>
                </tr>  
          </table>
          <center>
            <input type="Submit" value="Pay" name="book" align="center" style=' margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'>
            <input type="hidden" name="booktyp" value="carbook">   
            <input type="hidden" name="tfare1" value="<%=cfare%>">
           </center> 
    </form>
            </div>
        
</body>
</html>
           
                  
                 

                   
