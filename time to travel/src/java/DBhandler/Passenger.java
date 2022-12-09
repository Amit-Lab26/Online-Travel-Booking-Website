/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;
import bean.bspcont;
import bean.busp;
import java.sql.*;


/**
 *
 * @author admin
 */
public class Passenger {
   Connection con=null;
   
   public int addbusp(busp obj) throws ClassNotFoundException, SQLException
   {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
            PreparedStatement ps = con.prepareStatement("insert into bus_passenger values(?,?,?,?,?,?)");
            ps.setInt(1,obj.tid);
            ps.setString(2,obj.fname);
            ps.setString(3,obj.lname);
            ps.setInt(4,obj.age);
            ps.setString(5,obj.gender);
            ps.setString(6,obj.seat);
           int k=ps.executeUpdate();
           
           if(k==1)
           {
               return 1;
           }
           else
           {
               return 0;
           }
        
        
    }
    
    public int addpcontact(bspcont obj) throws ClassNotFoundException, SQLException
    {
        
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
            PreparedStatement ps = con.prepareStatement("insert into bus_pcontact values(?,?,?)");
            ps.setInt(1,obj.tid);
            ps.setInt(2,obj.pnum);
            ps.setString(3,obj.pemail);
            int q=ps.executeUpdate();
             if(q==1)
             {
                 return 1;
             }
             else
             {
                 return 0;
             }
          
    }
    public int addbkseats(int bid,String seat,Date jd,String bclass)throws ClassNotFoundException, SQLException
            {
              
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
            PreparedStatement ps = con.prepareStatement("insert into bus_bkseats values(?,?,?,?,?)");
            ps.setInt(1,bid);
            ps.setString(2,seat);
            ps.setString(3,"Ok");
            ps.setDate(4,jd);
            ps.setString(5,bclass);
            int q=ps.executeUpdate();
             if(q==1)
             {
                 return 1;
             }
             else
             {
                 return 0;
             }  
            }
}
