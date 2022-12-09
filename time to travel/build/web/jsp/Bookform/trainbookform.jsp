<%-- 
    Document   : trainbookform
    Created on : Feb 28, 2020, 6:28:48 PM
    Author     : admin
--%>

<%@page import="bean.train_stop"%>
<%@page import="DBhandler.stops"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page session="true" %>
<!DOCTYPE html>

<html>
  
    <%
        HttpSession mysession=request.getSession();
         String tjrtyp=(String)mysession.getAttribute("tjrtyp");
        //1st
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
    
            
         stops st= new stops();
         train_stop  f = st.stname(tfrm.trim());
         train_stop  t = st.stname(tto.trim());
         train_stop  fr= st.stname(brat.trim());
         train_stop  tr= st.stname(rupt.trim()); 
         String tfrom=f.stname;
         String trto=t.stname;
         String boardat=fr.stname;
         String resvupto=tr.stname;
        //2nd
    
        String trainid2=request.getParameter("trainid2");
        String tname2=request.getParameter("tname2");
        String tfrm2=request.getParameter("tfrm2");
        String tto2=request.getParameter("tto2");
        String deptime2=request.getParameter("deptime2");
        String artime2=request.getParameter("artime2");
        String avldate2=request.getParameter("avldate2");
        String arrdate2=request.getParameter("arrdate2");
        String tfare2=request.getParameter("tfare2");
        String taa2=request.getParameter("taa2");
        String clas2=request.getParameter("tclass2");
        String usrsrc2=request.getParameter("usrsrc2");
        String usrstd2=request.getParameter("usrstd2");
        String usrdes2=request.getParameter("usrdes2");
        String usrdis2=request.getParameter("usrdis2");
        String usrstt2=request.getParameter("usrstt2");
        String ttax2=request.getParameter("ttax2");
        String brat2=(String)mysession.getAttribute("brat");
        String rupt2=(String)mysession.getAttribute("rupt");
        String tfs2=request.getParameter("tfs2");
        String tfc2=request.getParameter("tfc2");
   
   
         mysession.setAttribute("trainid2",trainid2);
         mysession.setAttribute("tname2",tname2);
         mysession.setAttribute("tfrm2",tfrm2);
         mysession.setAttribute("tto2",tto2);
         mysession.setAttribute("deptime2",deptime2);
         mysession.setAttribute("artime2",artime2);
         mysession.setAttribute("avldate2",avldate2);
         mysession.setAttribute("arrdate2",arrdate2);
         mysession.setAttribute("tfare2",tfare2);
         mysession.setAttribute("taa2",taa2);
         mysession.setAttribute("clas2",clas2);
         mysession.setAttribute("usrsrc2",usrsrc2);
         mysession.setAttribute("usrstd2",usrstd2);
         mysession.setAttribute("usrdes2",usrdes2);
         mysession.setAttribute("usrdis2",usrdis2);
         mysession.setAttribute("usrstt2",usrstt2);
         mysession.setAttribute("tfs2",tfs2);
         mysession.setAttribute("tfc2",tfc2);
         mysession.setAttribute("ttax2",ttax2);
        
        //type of booking
       
     
       
        
         
        %>
        <head><title>Book form</title></head>
  <body style="background-color:purple">
    

    <link rel="stylesheet" href="formbutton.css">
        <div align='center'>
            <div><span><h3 style="color:white;font-size:38px ;font-family: Exo;">Train Booking User Details</h3></span><br><br>
            </div>
        </div>
        <br>
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
                <td>To:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=trto%></font></td>
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
                    <!--Return train details-->
<%      
         if(tjrtyp=="round"){ 
         train_stop  f2 = st.stname(tfrm2.trim());
         train_stop  t2 = st.stname(tto2.trim());
         train_stop  f3= st.stname(rupt2.trim());
         train_stop  t3= st.stname(brat2.trim()); 
         String tfrom2=f2.stname;
         String trto2=t2.stname;
         String boardat2=f3.stname;
         String resvupto2=t3.stname;
         
%>

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
        
     <p style="color:purple;font-family: arial;font-size: 16px;font-weight:bold">Return Train Details:</p>  
<table  align="center" style="
       
    list-style-type: none;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    width:100%;
    
    color:darkslateblue;font-family: arial;font-size: 16px;margin-bottom: 10px;">
  
           <tr>
                <td align="center">&nbsp;<font style="color:black;font-weight:bold;"><%=trainid2%>/<%=tname2%></font></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
      
    
            <tr>
                <td></td>
                <td height="40px">From:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"><%=tfrom2%></font></td>
                <td align="center">
                <td></td>
                <td>To:&nbsp;<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;font-size:24px"> <%=trto2%></font></td>
            </tr>
            <tr>
                <td align="center"><img src="image/t1.png"></td>
                <td>Journey Date:&nbsp;<font style="color:black;font-weight:bold;"><%=avldate2%></font></td>
                <td align="center"><img  width="40px" height="40px" src="image/lrarrow.png"><br><font style="color: #cccccc;"><%=clas2%>&nbsp;/&nbsp;<%=usrdis2%>Km</font></td>
                <td></td>
                <td>Arrival Date:&nbsp;<font style="color:black;font-weight:bold;"><%=arrdate2%></td>
            </tr>
               <tr>
                <td align="center"></td>
                <td>Boarding At:<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;">&nbsp;<%=boardat2%>&nbsp;(<%=brat2%>)</font></td>
                <td></td>
                <td></td>
                <td>Resv. Upto:<font style="color:black;font-weight:bold;font-variant-caps: all-petite-caps;">&nbsp;<%=resvupto2%>&nbsp;(<%=rupt2%>)</font>
                </td>
               </tr>
            <tr>
                <td align="center"><font style="color:black;font-weight:bold;"></font>
                <font style="color:black;font-weight:bold;"></font></td>
                <td>Journey Time:&nbsp;<font style="color:black;font-weight:bold;"><%=deptime2%></td>
                <td></td>
                <td width="200px"></td>
                <td height="80px">Arrival Time:&nbsp;<font style="color:black;font-weight:bold;"><%=artime2%></font></td>
            </tr>
       </table>
   </div>
           <%}%>        
                    
                    <!--Number Of Passengers-->
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
      <h2 style="margin-left: 10px;color:purple">Fill the Number Of Passengers:</h2> 
      <h4 style="color:orange;margin-left: 10px">!Total 6 passengers can be Selected</h4>
      <div  align="center" id="fdp"></div>
<form action="trainbookform2.jsp" name="people">
    <table align='center'>
         <td><select class="input" onchange="pvalidate()" type="number" id="ta" name="tna">
                 <option readonly selected="true" value="0">Adult</option>
                 <option value="0">0</option>
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                 <option value="5">5</option>
                 <option value="6">6</option>
             </select></td>
         <td><select  class="input" onchange="pvalidate()" type="number" id="tc" name="tnc">
               <option readonly selected="true" value="0">Child</option>
                 <option value="0">0</option>
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                 <option value="5">5</option>
                 <option value="6">6</option>
             </select>
         </td>
         <td><select class="input" onchange="pvalidate()" type="number" id="ts" name="tns">
                 <option readonly selected="true" value="0">Senior Citizen</option>
                 <option value="0">0</option>
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                 <option value="5">5</option>
                 <option value="6">6</option>
             </select>
         </td>
         <td><input  type="submit" onclick="pvalidate()" value="Submit" id="submit" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'></td>
    </table>
    
    <!-- Number of Return Passengers-->
  <!---  <% if(tjrtyp=="round"){%>
      <table align='center'>
         <td><select class="input" onchange="pvalidate()" type="number" id="ta" name="tna">
                 <option readonly selected="true" value="0">Adult</option>
                 <option value="0">0</option>
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                 <option value="5">5</option>
                 <option value="6">6</option>
             </select></td>
         <td><select  class="input" onchange="pvalidate()" type="number" id="tc" name="tnc">
               <option readonly selected="true" value="0">Child</option>
                 <option value="0">0</option>
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                 <option value="5">5</option>
                 <option value="6">6</option>
             </select>
         </td>
         <td><select class="input" onchange="pvalidate()" type="number" id="ts" name="tns">
                 <option readonly selected="true" value="0">Senior Citizen</option>
                 <option value="0">0</option>
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                 <option value="5">5</option>
                 <option value="6">6</option>
             </select>
         </td>
         <td><input  type="submit" onclick="pvalidate()" value="Submit" id="submit" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'></td>
    </table><%}%> -->
</form>
      <script>
    function pvalidate()
         {
            var na=Number(document.getElementById("ta").value);
            var nc=Number(document.getElementById("tc").value);
            var ns=Number(document.getElementById("ts").value);
            
            var t=na+nc+ns;
            var q=0;
             if(t>6)
             {
         
                  document.getElementById("submit").disabled=true; 
                  document.getElementById("fdp").innerHTML="<font style='color:red;font-weight:bold'>Only 6 passenger's can be Selected!</font>";
      
             }
             else if(t===0)
             {
                  document.getElementById("submit").disabled=true; 
                  document.getElementById("fdp").innerHTML="<font style='color:red;font-weight:bold'>0 Passenger Selected !</font>";
       
             }
         
          
          
             else{
             
                 document.getElementById("submit").disabled=false;
                 document.getElementById("fdp").innerHTML="";
                  }
         
           
         }
      </script>
  </div>
  </body>
</html>
                    
                
                