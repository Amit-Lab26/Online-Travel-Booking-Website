/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;

import bean.ViewTrain;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class trainservice {
    
  
   Connection con=null;
    int v;
     public int train2(Date trdate,String tfrm,String tto,String ttyp,ArrayList returntrain)
   {
        try {
            
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_train?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs = st.executeQuery("select T_train_id,T_train_name,T_source_stn_id,T_destination_stn_id,T_dep_time,T_ar_time,T_available_date,T_arr_date,src_stn_id,dest_stn_id,T_stn_dis_Km,T_stn_time,T_stn_day,Adult,Child,Senior,"+ttyp+",T_service_tax from t_train_status natural join t_station_distance natural join t_train natural join t_train_fare where T_t_id=Train_id and T_train_id=Train_id and src_stn_id='"+tto+"' and dest_stn_id='"+tfrm+"' and T_available_date='"+trdate+"' and T_coach_fare='"+ttyp+"'");
             while(rs.next())
            {
               returntrain.add(new ViewTrain(
                    rs.getInt("T_train_id"),
                    rs.getString("T_train_name"),
                    rs.getString("T_source_stn_id"),
                    rs.getString("T_destination_stn_id"),
                    rs.getString("T_dep_time"),
                    rs.getString("T_ar_time"),
                    rs.getDate("T_available_date"),
                    rs.getDate("T_arr_date"), 
                    rs.getString(ttyp),
                    rs.getString("src_stn_id"),
                    rs.getString("dest_stn_id"),
                    rs.getString("T_stn_dis_Km"),
                    rs.getString("T_stn_time"),
                    rs.getString("T_stn_day"),
                    rs.getString("Adult"),
                    rs.getString("Child"),
                    rs.getString("Senior"),
                    rs.getFloat("T_service_tax")
                 ));
               v=rs.getRow();
            }
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(f2.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(v>0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
    }
    
}
