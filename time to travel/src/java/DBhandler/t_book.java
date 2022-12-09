/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class t_book {
     Connection con=null;
     int t;
     int row;
     int tid; 
     int bkid;
public int t_booked(int userid, String Paytype, int amount, String bktyp,Date d,Time ts)
{
   
         try {
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
             PreparedStatement pst=con.prepareStatement("insert into t_booked  values(null,?,?,?,null,'Progress',?,?,?)");
             pst.setInt(1,userid);
             pst.setString(2,bktyp);
             pst.setString(3,Paytype);
             pst.setInt(4,amount);
             pst.setDate(5,d);
             pst.setTime(6,ts);
             row = pst.executeUpdate();
             
               } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(t_book.class.getName()).log(Level.SEVERE, null, ex);
         }
         if(row==1)
             {
                 return 1;
             }
             else
             {
                 return 0;
             } 
}  

public int t_book(int userid,Date d,Time ts) throws SQLException, ClassNotFoundException 
{
      
       
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select bk_id from t_booked where usr_id='"+userid+"' and bk_Date='"+d+"' and bk_Time='"+ts+"'");
   
             if(rs.next())
             {
                
                 bkid=rs.getInt("bk_id");
                 return bkid;
             }
             else
             {
                 return 0;
             }
            
       
       
}
 

public int seltranscid(int bki)throws SQLException, ClassNotFoundException
         {
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bank?useSSL=false","root","1234");
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select transaction_id from recieved_amount where bk_id='"+bki+"';");
              if(rs.next())
              {
               tid=rs.getInt("transaction_id"); 
               return tid;
              }
              else
              {
                  return 0;
              }
           
              
              
         }
   
public int updt_booked(int tsid,int bki)throws SQLException, ClassNotFoundException
{
     
           
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
            PreparedStatement pst=con.prepareStatement("update t_booked set tran_id=?,pay_status='Ok' WHERE bk_id=? ");
            pst.setInt(1, tsid);
            pst.setInt(2,bki);
            int k=pst.executeUpdate();
            if(k==1)
            {
                return 1;
            }
            else
            {
                return 0;
            }
              
}
}


