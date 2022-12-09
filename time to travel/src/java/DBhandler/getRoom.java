/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;

import bean.fstop;
import bean.room;
import java.sql.*;


/**
 *
 * @author admin
 */
public class getRoom {
    Connection con;
      public room rooms(int hid) throws ClassNotFoundException, SQLException
    {
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_flight?useSSL=false","root","1234");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("Select * from h_avl where Hotel_Id='"+hid+"'");
         
         room fs=new room();
         while(rs.next())
                 {
                  
                   fs.hoid=rs.getInt("Hotel_Id");
                   fs.rid=rs.getString("Room_Id");
                   fs.rtyp=rs.getString("RoomType");
                }
              return fs;
        
    }
     
    
}
