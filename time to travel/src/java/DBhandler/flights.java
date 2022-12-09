/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;


import bean.fstop;
import java.sql.*;


/**
 *
 * @author admin
 */
public class flights {
    Connection con=null;
    public fstop stopname(String stopid) throws ClassNotFoundException, SQLException
    {
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_flight?useSSL=false","root","1234");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select F_airport_name,F_city,F_state,F_country from f_airport where F_Airport_code='"+stopid+"'");
         fstop fs=new fstop();
         while(rs.next())
                 {
                  
                   fs.airportname=rs.getString("F_airport_name");
                   fs.city=rs.getString("F_city");
                   fs.state=rs.getString("F_state");
                   fs.country=rs.getString("F_country");
                   
                 }
              return fs;
        
    }
    
    public void freservation() throws ClassNotFoundException, SQLException
    {
        
    }
}
