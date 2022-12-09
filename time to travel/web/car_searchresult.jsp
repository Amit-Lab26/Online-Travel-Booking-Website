<%-- 
    Document   : car_searchresult
    Created on : Feb 25, 2020, 2:24:09 PM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h1>Data found Successfully!!!</h1>


<% 
    
    String cs = request.getParameter("cseat");
    String cc = request.getParameter("ccity");
     
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car","root","1234");
PreparedStatement ps=con.prepareStatement("Select Car_Cmp,Car_Seats,Car_Availabilty,Car_Type,Car_CityName,Car_State,Car_Fare from car_availabilty natural join Car_details natural join car_fare where Car_CityName='"+cc+"' and Car_Availabilty='"+cs+"'");
ResultSet rs=ps.executeQuery();
 
%>
<table>
   
            <td>Car company</td>
            <td>Car seats</td>
            <td>availability</td>
            <td>type</td>
            <td>city</td>
            <td>state</td>
            <td>fare</td>
    
   
        <%
            while(rs.next())
        
        {%>
            <tr>
              <td><%= rs.getString(1)%></td>
              <td><%= rs.getString(2)%></td>
              <td><%= rs.getString(3)%></td>
              <td><%= rs.getString(4)%></td>
              <td><%= rs.getString(5)%></td>
              <td><%= rs.getString(6)%></td>
              <td><%= rs.getString(7)%></td>
            </tr>
      <%}%>
  
</table>
<%
    }
            catch(Exception e) 
                    {
                    out.println("something went wrong");
                    
}  %>

</body>
</html>





