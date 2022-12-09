<%-- 
    Document   : nav
    Created on : Mar 3, 2020, 7:37:20 PM
    Author     : admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <style>
ul{
   list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: white;
    position: -webkit-sticky;
    top: 0;
    width:950px;
    border-radius: 40px;
    opacity: 0.9px;
    }
li{
    float:left;
    font-family: arial;color:purple;
}
li a{
 
    display:block ;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 24px;
    font-family: sans-serif;
    background-color:white;
}
li a:hover{
    margin-top: 1px;
    border-radius: 40px;
    background-color: blue;
    opacity: 0.5px;
}
.active{
    background-color:white;
}

   
</style>

<%
    HttpSession mysession=request.getSession();
    if(mysession.getAttribute("uname") != null){
    %>
    
<nav>
    <!-----header---->
  <div style="background-size:cover;background-image:url(image/bog.jpg);opacity:0.7px;height:250px;margin-top:-20px;margin-left: -10px;margin-right: -8px">
   <h2 style="float:left;margin-left: 20px;margin-top:35px;font-size:38px;color:white;font-family: sans-serif;">Time To Travel</h2>
         
      </div>
    
  <center>     
  <ul>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/plane.png);height:35px;width:35px;text-align-last:end;" href="FlightSearchForm.jsp"></a>Flight</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/train2.png);height:35px;width:35px;text-align-last:end" href="TrainSearchForm.jsp"></a>Train</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/bus1.png);height:35px;width:35px;text-align-last:end" href="BusSearchForm.jsp"></a>Bus</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/car2.png);height:35px;width:35px;text-align-last:end" href="CarSearchForm.jsp"></a>Car</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/hotel2.png);height:35px;width:35px;text-align-last:end" href="HotelSearchForm.jsp"></a>Hotel</li>
          <li style="float: right;margin-top: 10px;margin-right:20px"><a  class="active" href="aboutPage.jsp">About</a>
          <li style="float: right;margin-top: 10px;margin-right:20px" ><a  class="active" href="loginPage.jsp"><%=mysession.getAttribute("uname")%></a></li>
           <li style="float: right;margin-top: 10px;margin-right:20px" ><a  class="active" href="logout.jsp">Logout</a></li>
      </ul>
  </center>
</nav>
       <%
    }
    else{
    %>
    <nav>
    <!-----header---->
  <div style="background-size:cover;background-image:url(image/bog.jpg);opacity:0.7px;height:250px;margin-top:-20px;margin-left: -10px;margin-right: -8px">
   <h2 style="float:left;margin-left: 20px;margin-top:35px;font-size:38px;color:white;font-family: sans-serif;">Time To Travel</h2>
         
      </div>
    
  <center>     
  <ul>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/plane.png);height:35px;width:35px;text-align-last:end;" href="FlightSearchForm.jsp"></a>Flight</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/train2.png);height:35px;width:35px;text-align-last:end" href="TrainSearchForm.jsp"></a>Train</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/bus1.png);height:35px;width:35px;text-align-last:end" href="BusSearchForm.jsp"></a>Bus</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/car2.png);height:35px;width:35px;text-align-last:end" href="CarSearchForm.jsp"></a>Car</li>
          <li style="margin-left: 20px;"><a  class="active" style="background-image:url(image/hotel2.png);height:35px;width:35px;text-align-last:end" href="HotelSearchForm.jsp"></a>Hotel</li>
          <li style="float: right;margin-top: 10px;margin-right:20px"><a  class="active" href="aboutPage.jsp">About</a>
          <li style="float: right;margin-top: 10px;margin-right:20px" ><a  class="active" href="loginPage.jsp">Login & Register</a></li>
      </ul>
  </center>
</nav>
    <%}%>