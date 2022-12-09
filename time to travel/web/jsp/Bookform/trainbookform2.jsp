<%-- 
    Document   : trainbookform2
    Created on : Mar 23, 2020, 3:14:55 AM
    Author     : admin
--%>
<%@page import="DBhandler.fareCalculator"%>
<%@page import="bean.train_stop"%>
<%@page import="DBhandler.stops"%>
<%@page import="java.lang.Object"%>
<%@page import="java.util.*" %>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page session="true" %>
<!DOCTYPE html>
<html>
     <head><title>Book form</title></head>
  <body style="background-color:purple;background-size: cover">
   
     <%
         HttpSession mysession=request.getSession();       
         String trainid=(String)mysession.getAttribute("trainid");
         String tname=(String)mysession.getAttribute("tname");
         String tfrm=(String)mysession.getAttribute("tfrm");
         String tto=(String)mysession.getAttribute("tto");
         String deptime=(String)mysession.getAttribute("deptime");
         String artime=(String)mysession.getAttribute("artime");
         String avldate=(String)mysession.getAttribute("avldate");
         String arrdate=(String)mysession.getAttribute("arrdate");
         String tfare=(String)mysession.getAttribute("tfare");
         String taa=(String)mysession.getAttribute("taa");
         String clas=(String)mysession.getAttribute("clas");
         String usrsrc=(String)mysession.getAttribute("usrsrc");
         String usrstd=(String)mysession.getAttribute("usrstd");
         String usrdes=(String)mysession.getAttribute("usrdes");
         String usrdis=(String)mysession.getAttribute("usrdis");
         String usrstt=(String)mysession.getAttribute("usrstt");
         String ttax=(String)mysession.getAttribute("ttax");
         String brat=(String)mysession.getAttribute("brat");
         String rupt=(String)mysession.getAttribute("rupt");
         String tfs=(String)mysession.getAttribute("tfs");
         String tfc=(String)mysession.getAttribute("tfc");
         
         stops st = new stops();
         train_stop  f = st.stname(tfrm.trim());
         train_stop  t1 = st.stname(tto.trim());
         train_stop  f2= st.stname(brat.trim());
         train_stop  t2= st.stname(rupt.trim()); 
         String tfrom=f.stname;
         String trto=t1.stname;
         String boardat=f2.stname;
         String resvupto=t2.stname;
        String tna=request.getParameter("tna");mysession.setAttribute("tna",tna);
        String tnc=request.getParameter("tnc");mysession.setAttribute("tnc",tnc);
        String tns=request.getParameter("tns");mysession.setAttribute("tns",tns);
        Float tfar= Float.parseFloat(tfare);
        double tax=Double.parseDouble(ttax);
        int ta=Integer.parseInt(tna);
        int tc=Integer.parseInt(tnc);
        int ts=Integer.parseInt(tns);
        double tfa= fareCalculator.Onewayfare(Double.parseDouble(usrdis),Integer.parseInt(tfare));
        double tfch= fareCalculator.Onewayfare(Double.parseDouble(usrdis),Integer.parseInt(tfc));
        double tfse= fareCalculator.Onewayfare(Double.parseDouble(usrdis),Integer.parseInt(tfs));
        int tdis=Integer.parseInt(usrdis);
        int n=6;
        double z=ta+tc+ts;
        int t;
        int i=0;
        int j=0;
        int k=0;
        if(z>n)
       {
           
           out.println("<h2 align='center' style='color:darkred'>Sorry!</h2>");
           out.println("<h2 align='center' style='color:darkred'>You have Selected "+z+" Passenger--Go Back And Select only 6 Passenger's</h2>");
           n++; 
       }
     
        else
        {
           n=1;
         
        }
                %>
    <link rel="stylesheet" href="formbutton.css">
        <div align='center'>
            <div><span><h3 style="color:white;font-size:38px ;font-family: Exo;">Train Booking User Details</h3></span><br><br>
            </div>
        </div>
    
    <!--train details-->
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
    color:purple;font-family: arial;font-size: 16px;margin-bottom: 10px;">
        
     <p style="color:purple;font-family: arial;font-size: 16px;font-weight:bold">Train Details:</p>  
<table  align="center" style="
       
    list-style-type: none;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    
    color:darkslateblue;font-family: arial;font-size: 16px;margin-bottom: 10px;">
  
           <tr>
                <td align="center">&nbsp;<font style="color:black;font-weight:bold;"><%=trainid%>/<%=tname%></font></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
      
    
            <tr>
                <td></td>
                <td height="40px">From:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=tfrom%></font></td>
            
                <td align="center">
                   
                <td></td>
                <td>To:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"> <%=trto%></font></td>
            </tr>
            <tr>
                <td align="center"><img src="image/t1.png"></td>
            
                <td>Journey Date:&nbsp;<font style="color:black;font-weight:bold;"><%=avldate%></font></td>
                <td align="center"><img  width="40px" height="40px" src="image/lrarrow.png"><br><font style="color: #cccccc;"><%=clas%>&nbsp;/&nbsp;<%=usrdis%>Km</font></td>
                <td></td>
                
                <td>Arrival Date:&nbsp;<font style="color:black;font-weight:bold;"><%=arrdate%></td>
                
            </tr>
              <tr>
                <td align="center"></td>
                <td>Boarding At:<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;">&nbsp;<%=boardat%>&nbsp;(<%=brat%>)</font></td>
                <td></td>
                <td></td>
                <td>Resv. Upto:<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;">&nbsp;<%=resvupto%>&nbsp;(<%=rupt%>)</font>
                </td>
                
            </tr>
            <tr>
                <td align="center"><font style="color:black;font-weight:bold;"></font>
                <font style="color:black;font-weight:bold;"></font></td>
                <td>Journey Time:&nbsp;<font style="color:black;font-weight:bold;"><%=deptime%></td>
                <td></td>
                <td width="200px"></td>
             
                <td height="80px">Arrival Time:&nbsp;<font style="color:black;font-weight:bold;"><%=artime%></font></td>
                
            </tr>


    </table>
          
       </div>
                
        <br>
<!--passenger details--> 
<form action="book/trainbook.jsp" method="post" align='center'> 
  

<div style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    font-family: arial;
    width:100%;
height: 100%;
    ">
    <% if(n==1){%><%}%>
 

<h2 style="margin-left: 10px;color:purple">Fill the details Of Passengers:</h2>
   <%
        if(n==1){
         for(i=0;i<ta;i++)
          {
%>


<table style="
  
    list-style-type: none;

    overflow: hidden;
    background-color: white;

    height: 100%
">
  
    <tr>  <td><h4 align="left">Adult:<%=i+1%></h4></td>        
       <td><input style="margin-left:10px;height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none"  class="input" type="text" placeholder=" First Name" name="tfname<%=i%>"></td>
       <td><input style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="text" placeholder=" Last Name" name="tlname<%=i%>"></td>
       <td><input style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="number" placeholder="Age"  min="5" max="59"  name="hage<%=i%>"></td>
       <td><select style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" name="tgender<%=i%>" style="height: 45px">
              <option vlaue="" disabled="" selected="">Select Gender</option>
              <option value="male">Male</option>
              <option value="female">Female</option></select></td>




</tr>                                   
</table>
        <% }
}
else{
out.println("");
}

        %>

            
     <% if(n==1){
         for(j=0;j<tc;j++)
          {
        
     %>
        

     
<table style="
    list-style-type: none;

    overflow: hidden;
    background-color: white;
  
    height: 100%
   
    ">
    <tr >    <td><h4 align="left">Child:<%=j+1%></h4></td>  
                   <td ><input  style="margin-left:10px;height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="text" placeholder=" First Name" name="tfname<%=j%>"></td>
                    <td><input style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="text" placeholder=" Last Name" name="tlname<%=j%>"></td>
                    <td><input style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="number" placeholder=" Age" min="5" max="12" name="hage<%=j%>"></td>
                    <td ><select style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" name="tgender<%=j%>" style="margin-top:20px;height: 45px">
                                    <option vlaue="" disabled="" selected="">Select Gender</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option></select>
                    </td>
                   </table>
<% 
}

}
else{
out.println("");
}
%>

<% if(n==1){
          for(k=0;k<ts;k++)
          {
        
        %>

     
    <table style="
    list-style-type: none;

    overflow: hidden;
    background-color: white;

    height: 100%
   
    ">

        <tr>   <td> <h4 align="left">Senior:<%=k+1%></h4></td>
         <td><input style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="text" placeholder=" First Name" name="tfname<%=k%>"></td>
                    <td><input style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="text" placeholder=" Last Name" name="tlname<%=k%>"></td>
                    <td><input style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none" class="input" type="number" min="60" max="106" placeholder=" Age" name="hage<%=k%>"></td>
                
            <td><select style="height:30px;width:200px;background-color:whitesmoke;border-radius:0;border-top:none;border-right:none;border-left:none;" class="input" name="tgender<%=k%>" >
                                    <option vlaue="" disabled="" selected="">Select Gender</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option> </select>
                </td>             
                        </tr>
                   </table>
                 
<% 

}
}
else{
out.println("");
}
%>
</div>
                
                 
          
 <!--fare details-->

 
 
    <%  
       
        if(n==1){
          double a=i*tfa;
          double c=j*tfch;
          double s=k*tfse;
          double x=a+c+s;
        %>
  <br>
  <div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    height: 20%;
    color:purple;font-family: arial;font-size: 16px;
    font-family: arial;font-size: 16px;
    border-style:solid;
    border-color:black;
    border-width: thin;">
      <h2 align="left" style="margin-left:30px;">Fare details:</h2>
                       
                         <table style="margin-left:50px;margin-bottom: 10px;width:93%;margin-right:50px;height:100%;border-spacing:20px">
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td align="left" style="color:darkblue"> Ticket Fare:</td><td style="text-align: right">Rs.<%=x%></td></tr>
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td align="left" style="color:darkblue">Service Tax (Inc. of Service Tax)</td><td style="text-align: right">Rs.<%=tax%></td></tr>
                            <tr style="font-family:arial;font-weight:bold;color: blue;"><td align="left" style="color:darkblue">Total Fare:</td><td style="text-align: right">Rs.<%=x+tax%></td></tr>
                        </table>
                       <center>
       <input align="center" type="submit" value="Pay" name="tbook" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'></center>
       <input type="hidden" name="booktyp" value="busbook">            
   </div>
    
    <%}%>

  
         </form>
        
       
</body>
</html>




