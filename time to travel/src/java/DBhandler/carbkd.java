/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;


import bean.carbkdusr;
import bean.carbking;
import bean.carbkroute;
import java.sql.*;


/**
 *
 * @author admin
 */
public class carbkd {
    
    Connection con=null;
    int drid;
    int p;
    public int SearchDriver(int cid) throws ClassNotFoundException, SQLException
    {
        
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("Select Driver_Id from car_driver where Car_Id='"+cid+"'");
            if(rs.next())
                    {
                       drid=rs.getInt("Driver_Id");
                       p=rs.getRow();
                    }
            if(p>0)
            {
                return drid;
            }
           else
             {
                 return 0;
             }
          
    }
    
    public int carbooking(carbking obj) throws ClassNotFoundException, SQLException

    {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
            Statement st=con.createStatement();
            PreparedStatement ps = con.prepareStatement("insert into car_bookings values(?,?,?,?,?,?,?,?,?)");
            ps.setInt(1,obj.cbkid);
            ps.setInt(2,obj.cid);
            ps.setInt(3,obj.cdrid);
            ps.setDate(4,obj.cpd);
            ps.setTime(5,obj.cpt);
            ps.setDate(6,obj.cdd);
            ps.setTime(7,obj.cdt);
            ps.setString(8,obj.jrtyp);
            ps.setString(9,obj.ccmp);
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
    
    public int carbkroute(carbkroute obj) throws ClassNotFoundException, SQLException
    {
         Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
            Statement st=con.createStatement();
            PreparedStatement ps = con.prepareStatement("insert into car_bk_route values(?,?,?,?,?,?,?,?,?)");
            ps.setInt(1,obj.cbki);
            ps.setString(2,obj.cfrm);
            ps.setString(3,obj.cto);
            ps.setInt(4,obj.cdist);
            ps.setFloat(5,obj.ctfare);
            ps.setInt(6,obj.transcid);
            ps.setString(7,obj.cstatus);
            ps.setDate(8,obj.cbkdate);
            ps.setTime(9,obj.cbktime);
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
    
    public int carbkduser(carbkdusr obj) throws ClassNotFoundException, SQLException
    {
       Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_car?useSSL=false","root","1234");
            Statement st=con.createStatement();
            PreparedStatement ps = con.prepareStatement("insert into car_booked_user values(?,?,?,?,?)");
            ps.setInt(1,obj.cbkid);
            ps.setString(2,obj.usrname);
            ps.setString(3,obj.usremail);
            ps.setInt(4,obj.usrphn);
            ps.setString(5,obj.usradd);
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
