<%-- 
    Document   : user_booking
    Created on : Feb 29, 2020, 12:39:32 AM
    Author     : admin
--%>
<%@page import="java.sql.*" import="test.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
    .addbus{
        height: 100%;
        max-width: 800px;
        margin: auto;
    }
    table {
        width: 100%;
    }
    thead {
        height: 50px;
        text-align: center;
        font-weight: bold;
        vertical-align: middle;
    }
    tbody{
        height: 40px;
        text-align: center;
        vertical-align: middle;
    }
    thead td{
        background: #101010;
        color: white;
    }
    tr{
        height: 40px;
    }
    td{
        /*width: 100px;*/
    }
    tr:hover {background-color: #f2f3ff;}
    /*tr:nth-child(even) {background-color: #f5f5f5;}*/
</style>

<%
    ResultSet rs;
    PreparedStatement ps;
    Connection con=null;
     
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
             Statement st=con.createStatement();
             
   
    HttpSession mysession = request.getSession();
    String usrid =mysession.getAttribute("userid").toString();
    int userid=Integer.parseInt(usrid);
    ResultSet resultset = st.executeQuery("SELECT bk_id,Bk_type,bk_price,pay_mode,tran_id,pay_status,usr_bk_date FROM usr_booking where usr_id = '"+userid+"'");
%>

<div class="row">
    <div class="col-sm-12">
        <div class="addbus" style="max-height:500px;overflow-y:auto;">
            <table>
                <thead>
                        <td>Booking_Id</td>
                        <td>Type</td>
                        <td>Price</td>
                        <td>Pay-Mode</td>
                        <td>Transaction Id</td>
                        <td>Booking Date</td>
                        <td>Status</td>
                        <td>Cancel Booking</td>
                </thead>
                <tbody>
                
                    <%
                        while(resultset.next()){
                          %><tr>
                              <td><%= resultset.getInt(1)%></td>
                              <td><%= resultset.getString(2)%></td>
                              <td><%= resultset.getString(3)%></td>
                              <td><%= resultset.getInt(4)%></td>
                              <td><%= resultset.getDate(5)%></td>
                              <td>
                                  <%
                                      
                                      String pays = resultset.getString(6);
                                      int Flag=Integer.parseInt(pays);
                                      String Bcolor = "color:green";
                                      String Ccolor = "color:red";
                                      if(Flag == 1)
                                      {
                                          out.println("<span style="+Bcolor+">Booked</span>");
                                      }
                                      else{
                                          out.println("<span style="+Ccolor+">Payment Left</span>");
                                      }
                                  %>
                              </td>
                              <td> <form action="/CanceBus" method="POST">
                                    <button value="<%= resultset.getInt(1)%>" name="bookid">Cancel</button>
                                    <input type="hidden" value="<%= resultset.getString(2)%>" name="bktyp">
                                  </form>
                
                    
                              </td>
                              
                            </tr>
                                  <%
                                  }
                                  %>
                </tbody>
            </table>
        </div>
    </div>
</div>