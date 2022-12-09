/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author admin
 */
public class Distance_Calculator {
    
     public int getDistance(String from, String to) throws SQLException, ClassNotFoundException {
         
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("Select distance from car_routes where Source_Route_name='"+from+"' and Des_Route_name='"+to+"' or Source_Route_name='"+to+"' and Des_Route_name='"+from+"'");
             if(rs.next())
             {
             int temp=rs.getInt("distance");
             return temp;
             }
              else 
             {
                return -1;
             }
         }
             
     }
     
        

     
