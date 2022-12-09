/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;

import bean.ViewCar;
import java.sql.*;

import java.util.ArrayList;


/**
 *
 * @author admin
 */
public class car_search {
    int k;
    Connection con=null;
   public int oneway(String csea,Date td,String cty,ArrayList viewcar)throws ClassNotFoundException,  SQLException
 {
  
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("Select Car_Travel_cmp,Car_Cmp,Car_Seats,Car_Id,Car_'"+csea+"' from car_bookings natural join car_details natural join car_availabilty natural join car_fare where car_pickup_date!='"+td+"' and car_drop_date!='"+td+"' and car_cityName='"+cty+"' and Car_availabilty='B' and Car_Seats='"+csea+"' and Travel_cmp=Car_Travel_cmp");
            
          while(rs.next())
            {
                   viewcar.add(new ViewCar(
                         
                         rs.getString("Car_Cmp"),
                         rs.getString("Car_Seats"),
                         rs.getInt("Car_"+csea+""),
                         rs.getInt("Car_Id")
                         
                 ));
                   k=rs.getRow();  
           
            }
           if(rs.getRow()>1)
          {
              return 1;
          }
          else
          {
              return 0;
          }
        
         
             
              
     
   
 }
   public int round(String cse,Date td,Date rd,String ct,ArrayList viewcar)throws ClassNotFoundException,  SQLException
{
       Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("Select Car_Travel_cmp,Car_Cmp,Car_Seats,Car_Id,Car_"+cse+" from car_bookings natural join car_details natural join car_availabilty natural join car_fare where car_pickup_date!='"+td+"' and car_drop_date!='"+td+"' and car_pickup_date!='"+rd+"' and car_drop_date!='"+rd+"' and car_cityName='"+ct+"' and Car_availabilty='B' and Car_Seats='"+cse+"'  and Travel_cmp=Car_Travel_cmp");
   
           while(rs.next())
            {
                viewcar.add(new ViewCar(
                         
                         rs.getString("Car_Cmp"),
                         rs.getString("Car_Seats"),
                         rs.getInt("Car_"+cse+""),
                         rs.getInt("Car_Id")
                         
                     
                 ));
                 k=rs.getRow();  
            }
           if(rs.getRow()>1)
          {
              return 1;
          }
          else
          {
              return 0;
          }
 }
    public int one(String cseat,String pp,ArrayList viewcar)throws ClassNotFoundException,  SQLException
{
    
           Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("Select Car_Cmp,Car_Seats,Car_4,Car_Id from car_details natural join car_fare natural join car_availabilty where car_cityName='"+pp+"' and Car_Seats='"+cseat+"' and Car_availabilty='A' and Travel_cmp=Car_Travel_cmp;");
           
            while(rs.next())
            {
                viewcar.add(new ViewCar(
                        
                        rs.getString("Car_Cmp"),
                        rs.getString("Car_Seats"),
                        rs.getInt("Car_"+cseat+""),
                        rs.getInt("Car_Id")
                        
                ));
              k=rs.getRow();
                
            }
          
        
          if(k>1)
            {
                return 1;
            }
            else
            {
                return 0;
            }

}

 
}
