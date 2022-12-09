/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;


import bean.bus_stop;
import bean.fstop;
import bean.train_stop;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author admin
 */
public class stops {
    
  Connection con=null;
   public List<bus_stop> getbustp(String bid) throws SQLException, ClassNotFoundException {
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery(" select Bus_Stops from bus_stops where Bus_Id='"+bid+"'");
        
            List<bus_stop> out = new ArrayList<>();
            while (rs.next()){
            bus_stop obj = new bus_stop();
            obj.id=rs.getRow();
            obj.name = rs.getString("Bus_Stops");
            out.add(obj);
            
                       }
            return out;
      }
   public train_stop stname(String tid) throws SQLException, ClassNotFoundException {
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_train?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery(" select * from t_stations where T_station_id='"+tid+"'");
             train_stop out = new train_stop();
         if (rs.next()) {
            out.stid = rs.getString("T_station_id");
            out.stname = rs.getString("T_station_name");
        }
        return out;
      
   }
   
}
   