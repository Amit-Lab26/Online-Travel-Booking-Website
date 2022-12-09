/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;

import bean.ViewFlight2;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class f2 {
    Connection con=null;
    int v;
    public int set2(Date frdate,String ffrm,String fto,String ftyp)
            
           
    {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_flight?useSSL=false","root","1234");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("SELECT F_dep_date,F_flight_num,F_dep_airp_code,f_arr_airp_code,F_airline_cmp,F_weeks,F_flight_typ,F_flight_avl_ecomomy_seats,F_fare,F_fare_typ,F_fare_restrictions,F_flight_date ,F_shed_dep_time,F_shed_arr_time,F_Flight_dirc from F_fare natural join F_flight_instance natural join F_flight WHERE f_flight_date='"+frdate+"' and F_dep_airp_code='"+fto+"' and F_arr_airp_code='"+ffrm+"'and F_fare_typ='"+ftyp+"'");
            ArrayList viewflight2 = new ArrayList();
            
            while(rs.next())
            {
                viewflight2.add(new ViewFlight2(
                        rs.getInt("F_flight_num"),
                        rs.getString("F_airline_cmp"),
                        rs.getString("F_dep_airp_code"),
                        rs.getString("f_arr_airp_code"),
                        rs.getString("F_weeks"),
                        rs.getDate("F_flight_date"),
                        rs.getString("F_fare"),
                        rs.getString("F_fare_restrictions"),
                        rs.getString("F_Flight_dirc"),
                        rs.getString("F_shed_dep_time"),
                        rs.getString("F_shed_arr_time"),
                        rs.getString("F_fare_typ"),
                        rs.getString("F_flight_avl_ecomomy_seats"),
                        rs.getDate("F_dep_date")
                        
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
