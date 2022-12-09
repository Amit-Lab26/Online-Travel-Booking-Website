<%-- 
    Document   : busbookform
    Created on : Feb 28, 2020, 6:29:02 PM
    Author     : admin
--%>


<%@page import="java.util.List"%>
<%@page import="bean.bus_stop"%>
<%@page import="DBhandler.stops"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
  
    

     <%
         HttpSession mysession=request.getSession();
        String bid=request.getParameter("busid");mysession.setAttribute("bid",bid);
        String bcmp=request.getParameter("buscmp");mysession.setAttribute("bcmp",bcmp);
        String bclass=request.getParameter("busclass");mysession.setAttribute("bclass",bclass);
        String baseat=request.getParameter("busseat");
        String bfare=request.getParameter("busfare");
        String bjt=request.getParameter("busjtime");mysession.setAttribute("bjt",bjt);
        String bat=request.getParameter("busatime");mysession.setAttribute("bat",bat);
        String btdis=request.getParameter("bustdis");mysession.setAttribute("btdis",btdis);
        String bfrm=request.getParameter("busfrm");mysession.setAttribute("bfrm",bfrm);
        String bto=request.getParameter("busto");mysession.setAttribute("bto",bto);
        String bdate=request.getParameter("busdate");mysession.setAttribute("bdate",bdate);
        String barrdate=request.getParameter("barrdate");mysession.setAttribute("barrdate",barrdate);
        String bano=(String)mysession.getAttribute("bano");
        String bcno=(String)mysession.getAttribute("bcno");
        String bcf=request.getParameter("bcf");
        int busi=Integer.parseInt(bid);
        int bfa = Integer.parseInt(bfare);
        int ba= Integer.parseInt(bano);
        int bc= Integer.parseInt(bcno);
        Date datej=Date.valueOf(bdate);
        String s;
        int bfc = Integer.parseInt(bcf);
        String bkdseat="";
        List<bus_stop> bstp=new stops().getbustp(bid);
        Connection con=null;
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
         Statement st=con.createStatement();
         ResultSet rs =st.executeQuery("Select Bus_seat from bus_bkseats where bs_id='"+busi+"' and Bus_jdate='"+datej+"' and seat_status='Ok'");
         while(rs.next())
                 {
                   bkdseat=rs.getString("Bus_seat");
                 }
       
     %>
    <head>
        <title>
        bus book form
        </title>
    </head>
<body style="background-color:purple;background-size: cover" >
   <link rel="stylesheet" href="formbutton.css">
        <div align='center'>
            <div>
                 <span>
                    <h3 style="color:white;font-size:38px ;font-family: Exo;">Fill User Details</h3>
                 </span>
                <br><br>
            </div>
        </div>
        <br>
    <!--bus details-->
 <div  style='margin-top: -30px;margin-bottom: 10px;
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
    
                     <thead align="center" style="background-color:whitesmoke;" >
                         <th style="border-top-left-radius:20px;border-bottom-left-radius:20px;">Company Name</th>
                         <th>From</th>
                         <th>Journey Date & Time</th>
                         <th></th>
                         <th>To</th>
                         <th>Arrival Date & Time</th>
                         <th>Class</th>
                         <th style="border-top-right-radius:20px;border-bottom-right-radius:20px;">Total Distance</th>
                         
                     </thead>
                   
                     <tr align="center" style="color:blue;font-weight: bold;font-variant: small-caps">
                         <td><%=bcmp%></td>
                        <td><%=bfrm%></td>
                        <td><%=bdate%><p><%=bjt%></td>
                        <td><img width="40px" height="40px" src="image/lrarrow.png"></td>
                        <td><%=bto%></td>
                        <td><%=barrdate%><p><%=bat%></p></td>
                        <td><%=bclass%></td>
                        <td><%=btdis%></td>
                      
                     </tr>
                        
         </table>
                     
</div> 
                        
        <!--fare details-->
     
<div style="margin-top: 30px;
    list-style-type: none;
    border-radius: 10px;
    overflow: hidden;
    opacity: 10px;
    background-color:whitesmoke;
    height:100%;
    color:purple;font-family: arial;font-size: 16px;">
 
        <H2>Bus Layout</H2>
        <center>
           <!--button selection-->
           <input type="button" value="Lower Deck &downarrow;" selected="true" id="ud" onclick="hide()" style="border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;width:100px;height:30px;">
           <input type="button" value="Upper Deck &uparrow;" onclick="show()" id="ld" style="border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;width:100px;height:30px;">
  
<!---seat selection type-->

<table style="background-color:white;margin-top:20px;">
    <tr>
        <th Style="color:grey">Available<hr></th>
        <th Style="color:red">Booked<hr></th>
        <th Style="color:green">Selected<hr></th>
    </tr>
    <tr>
    <td align="center"><Img WIDTH="40" HEIGHT="40"  SRC="imgjsp/avl1.png"></IMG></td>
    <td align="center"><IMG SRC="imgjsp/red.png" WIDTH="40" HEIGHT="40" BORDER="0" ALT=""></td>
    <td align="center"><IMG SRC="imgjsp/org1.png" WIDTH="40" HEIGHT="40" BORDER="0" ALT=""></td></tr>
</table>
<BR>
<BR>
<!---Lower Seat-->
<TABLE id="d2" style="background-color:white;border-radius:10px;margin-bottom:10px" >
    <tr><td></td><td></td><td></td><td><img src="imgjsp/han.png" ></td></tr>
<tr>

    <td>
      
            <SCRIPT LANGUAGE="JavaScript">

		var BookedSeats = "<%=bkdseat%>";
		//alert(BookedSeats);
		for(i=1;i<=11;i++){
			if(BookedSeats.indexOf("Q"+i)>-1){
			document.writeln("<br><input type=\"image\" SRC=\"imgjsp/red2.png\" style=\"cursor:hand\" alt='Q"+i+"' onclick=\"alert('seat already booked');\">");
			}
                        else{
			document.writeln("<br><input value='1' type=\"image\" SRC=\"imgjsp/sl.png\" Width=\"50\" HEIGHT=\"50\" style=\"cursor:hand\" alt='Q"+i+"' onclick='toggleSelection(this)'> ");
			}
		}
	
             </SCRIPT>    
    </td>
 
   
	
      <td width='40px'>      &nbsp;</td>
    <td>
        <SCRIPT LANGUAGE="JavaScript">
	
		var BookedSeats ="<%=bkdseat%>";
		//alert(BookedSeats);
		for(i=1;i<=5;i++){
			if(BookedSeats.indexOf("A"+i)>-1){
			document.writeln("<br><input type=\"image\" SRC=\"imgjsp/red.png\" style=\"cursor:hand\" Width=\"40\" HEIGHT=\"40\" alt='A"+i+"' onclick=\"alert('seat already booked');\">");
			}else{
			document.writeln("<br><input value='1' type=\"image\" SRC=\"imgjsp/avl1.png\" alt='A"+i+"' style=\"cursor:hand\" Width=\"40\" HEIGHT=\"40\" onclick='toggleSelection(this)'>");
			}
		}
	
             </script> 
	<SCRIPT LANGUAGE="JavaScript">

		var BookedSeats = "<%=bkdseat%>";
		//alert(BookedSeats);
		for(i=1;i<=6;i++){
			if(BookedSeats.indexOf("B"+i)>-1){
			document.writeln("<br><input type=\"image\" SRC=\"imgjsp/red2.png\" style=\"cursor:hand\" alt='B"+i+"' onclick=\"alert('seat already booked');\">");
			}
                        else{
			document.writeln("<br><input value='1' type=\"image\"  SRC=\"imgjsp/sl.png\" alt='B"+i+"' Width=\"50\" HEIGHT=\"50\"   style=\"cursor:hand\"  onclick='toggleSelection(this)'>");
			}
		}
	
        </SCRIPT>
    </td>
    <td>
        <SCRIPT LANGUAGE="JavaScript">
	
	var BookedSeats = "<%=bkdseat%>";
		//alert(BookedSeats);
		for(i=1;i<=5;i++){
			if(BookedSeats.indexOf("C"+i)>-1){
			document.writeln("<br><input type=\"image\" SRC=\"imgjsp/red.png\" style=\"cursor:hand\" alt='C"+i+"' onclick=\"alert('seat already booked');\">");
			}else{
			document.writeln("<br><input value='1' type=\"image\" SRC=\"imgjsp/avl1.png\" alt='C"+i+"' Width=\"40\" HEIGHT=\"40\" style=\"cursor:hand\"  onclick='toggleSelection(this)'>");
			}
		}
	
        </SCRIPT>
         

             
	<SCRIPT LANGUAGE="JavaScript">
	
	var BookedSeats = "<%=bkdseat%>";
		//alert(BookedSeats);
		for(i=1;i<=6;i++){
			if(BookedSeats.indexOf("D"+i)>-1){
			document.writeln("<br><input type=\"image\" SRC=\"imgjsp/red2.png\" style=\"cursor:hand\" alt='D"+i+"' onclick=\"alert('seat already booked');\">");
			}else{
			document.writeln("<br><input value='1' type=\"image\" SRC=\"imgjsp/sl.png\" Width=\"50\" HEIGHT=\"50\" alt='D"+i+"'  style=\"cursor:hand\"  onclick='toggleSelection(this)' >");
			}
		}
	
        </SCRIPT></td> 
</tr>
</TABLE>
 </center>
    
<!---Upper Seat-->
<center style="margin-top:20px">
<TABLE id="d3" hidden style="background-color:white;border-radius:10px;margin-bottom:10px" >
    <tr><td></td><td></td><td></td><td><img src="imgjsp/han.png" ></td></tr>
<tr>

    <td>
      
            <SCRIPT LANGUAGE="JavaScript">

		var BookedSeats = "";
		//alert(BookedSeats);
		for(i=1;i<=11;i++){
			if(BookedSeats.indexOf("P"+i)>-1){
			document.writeln("<br><input type=\"image\" type=\"image\" SRC=\"imgjsp/red2.png\" style=\"cursor:hand\" alt='P"+i+"' onclick=\"alert('seat already booked');\">");
			}
                        else{
			document.writeln("<br><input value='1' type=\"image\" SRC=\"imgjsp/sl.png\"   Width=\"50\" HEIGHT=\"50\" style=\"cursor:hand\" alt='P"+i+"' onclick='toggleSelection(this)'> ");
			}
		}
	
             </SCRIPT>    
    </td>
 
   
	
      <td width='40px'>      &nbsp;</td>
    <td>
        <SCRIPT LANGUAGE="JavaScript">
	
		var BookedSeats ="";
		//alert(BookedSeats);
		for(i=1;i<=11;i++){
			if(BookedSeats.indexOf("S"+i)>-1){
			document.writeln("<br><input type=\"image\" SRC=\"imgjsp/red.png\" style=\"cursor:hand\" Width=\"40\" HEIGHT=\"40\" alt='S"+i+"' onclick=\"alert('seat already booked');\">");
			}else{
			document.writeln("<br><input value='1' type=\"image\" SRC=\"imgjsp/sl.png\" Width=\"50\" HEIGHT=\"50\" alt='S"+i+"' style=\"cursor:hand\" Width=\"40\" HEIGHT=\"40\" onclick='toggleSelection(this)'>");
			}
		}
	
             </script> 
	
    </td>
    <td>
       <SCRIPT LANGUAGE="JavaScript">
	
	var BookedSeats = "";
		//alert(BookedSeats);
		for(i=1;i<=11;i++){
			if(BookedSeats.indexOf("T"+i)>-1){
			document.writeln("<br><input type=\"image\" SRC=\"imgjsp/red2.png\" style=\"cursor:hand\" alt='T"+i+"' onclick=\"alert('seat already booked');\">");
			}else{
			document.writeln("<br><input value='1' type=\"image\" SRC=\"imgjsp/sl.png\" alt='T"+i+"'Width=\"50\" HEIGHT=\"50\"   style=\"cursor:hand\"  onclick='toggleSelection(this)'>");
			     }
		}
	
        </SCRIPT>
    </td> 
</tr>
</TABLE>
</center>
  </div>

 <!---- passenger Details--->                   
 <div style="margin-top: 40px;
    list-style-type: none;
    border-radius: 20px;
    overflow: hidden;
    opacity: 10px;
    background-color: white;
    font-family: arial;
    
    width:100%;
    ">
     <form action="busbookform1.jsp"> 
    <div style="background-color:whitesmoke; margin-left: 10px;"> 
              <table>
                  <thead>
                  <th  align="center">Pick-Up Point</th>
                  <th align="center">Drop Point</th></thead>
              <tr><td align="center"> 
      <select name="bpp" id="pcity" required onchange="validate(this.id)" class="input" style="margin-left: 20px;background-color:white;margin-top:10px;width:150px;height:30px;">
          <option value="" selected="true" disabled="true">Select pick-up</option>  
                    <%
        for (bus_stop p : bstp) 
        {
         %>
         <option  value="<%=p.name%>"><%=p.name%></option>
      <%  }
      %>
      </select ></td>
                  <td align="center"> 
     <select name="bdp" id="dcity" required class="input" onchange="validate(this.id)" style="margin-left:20px;background-color:white;margin-top:10px;width:150px;height:30px;" align="left" >
               <option value="" selected="true" disabled="true">Select drop-up</option>
               <%
        for (bus_stop k : bstp) 
        {
         %>
         <option  value="<%=k.name%>"><%=k.name%></option>
      <%  }
      %>
     </select></td>
              </tr>
        </table>
        
    </div>
     <center>
         <h3 id="err"></h3>
     <h3 style="color:purple">Selected Seats:</h3>
     <table id="myTable">
     </table>
     <h3 style="color:purple">Total Amount:</h3>
     <h2 id="amount"></h2>
     <input type="submit" onclick="setaction(x.length)" id="submit" value="Confirm Seat's" style='margin-bottom: 10px;margin-top: 20px;border-radius:20px;width:200px;height:40px;color: white;background-color:darkblue;'>
     <input type="hidden" name="amount"  id="tamount">
     <input type="hidden" name="seatNumber0" id="s0"/>
     <input type="hidden" name="seatNumber1" id="s1"/>
     <input type="hidden" name="seatNumber2" id="s2"/>
     <input type="hidden" name="seatNumber3" id="s3"/>
     <input type="hidden" name="seatNumber4" id="s4"/>
     <input type="hidden" name="seatNumber5" id="s5"/>
     </center>
      
 </div>
     </form>
</body>
 <SCRIPT LANGUAGE="JavaScript">

var Scount=0;

var res1,infant_flag=false,child_flag=false,adult_flag=false; 
          var pdate_flag=false,ddate_flag=false,cardno_flag=false;
         function enable()
         {
              if( document.getElementById("submit").disabled ===true)
              {
                document.getElementById("submit").disabled = false;
                document.getElementById("flddiv").innerHTML="";
              }  
         }   
            
         function hide()
         {
             document.getElementById("d2").hidden=false;
             document.getElementById("d3").hidden=true;
             
             ddate_flag=true;
             
           
         }
         function show()
         {
             document.getElementById("d2").hidden=true;
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
          document.getElementById("err").innerHTML="<font style='color:red'>Pickup & Drop City cannot be Same!</font>";
       }
     
      else
       {
         document.getElementById("submit").disabled=false;
         document.getElementById("err").innerHTML="";
       }
      }
  }
function setaction(obj)
{
    if(obj>0)
    {
      
      document.getElementById("submit").disabled=false;  
    }
    else
    { 
      document.getElementById("submit").disabled=true;
      document.getElementById("err").innerHTML="<font style='color:red'>! You haven't Selected Any Seat! Please Select the Seat From Bus Layout.</font>";
    }
}
var x=[];
var u=0;
var t=[];
var sl=[];

function toggleSelection(Obj)

	{
      
		
	    if (Obj.src.indexOf("avl1.png")>-1)
		{
			if(u<<%=ba+bc%>)
                        {
                         Obj.src = 'imgjsp/org1.png';
                         x.push(Obj.alt);
                         t.push(Obj.alt);
                       u++;
                         }
                         else{
                             alert("no more seats can bookded");
                         }
                         
                }
		else if (Obj.src.indexOf("org1.png")>-1)
		{       
                      Obj.src = 'imgjsp/avl1.png';
                       var f=Obj.alt;
                       for(var i=0;i<x.length;i++)
                        {
                        if(x[i]===f)
                        {
			x.splice(i,1);
                        t.splice(i,1);
                        //SomeDeleteRowFunction(i);
                        u--;
                        }
                }
                       
		}
                else if (Obj.src.indexOf("sl.png")>-1)
		{
                    if(u<<%=ba+bc%>)
                        {
                         
			 Obj.src = 'imgjsp/org2.png';
                         x.push(Obj.alt);
                         sl.push(Obj.alt);
                     u++;
                 }
                 else{
                     alert("No more seat can booked");
                 }
                 
                }
                else if (Obj.src.indexOf("org2.png")>-1)
		{
                    Obj.src = 'imgjsp/sl.png';
                    var c=Obj.alt;
                       for(var i=0;i<x.length;i++)
                        {
                        if(x[i]===c)
                        {
			x.splice(i,1);
                        sl.splice(i,1);
                       // SomeDeleteRowFunction(i);
                        u--;
                        }
                }
                      
		}
            
                else{
			alert("seat already booked");
		    }
                     
                           
                            var table = document.getElementById("myTable");
                            table.innerHTML='';
                            var row = table.insertRow(-1);
                            var cell1 = row.insertCell(0);
                            cell1.innerHTML ='<h4>'+x+'</h4>';
                            var d='Rs.';
                            var p=<%=bfa%>;
                            var c=<%=bfc%>;
                            var s=sl.length*p;
                            var se=t.length*c;
                            var amount=s+se;
                            document.getElementById("amount").innerHTML = d+amount;
                            document.getElementById("tamount").value =amount;
                            document.getElementById("s0").value=x[0];
                            document.getElementById("s1").value=x[1];
                            document.getElementById("s2").value=x[2];
                            document.getElementById("s3").value=x[3];
                            document.getElementById("s4").value=x[4];
                            document.getElementById("s5").value=x[5];  
                            setaction(x.length);
                             }
                          
   </script> 
</html>

