/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;

import static java.lang.System.out;
import java.sql.*;


/**
 *
 * @author admin
 */
public class PaytmPay {
   Connection con; 
   int paytmid;
   Float usrfare;
public int selectacc(String tphn,String pn,String pass,Float tfare2)throws SQLException, ClassNotFoundException
          {  
       
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bank?useSSL=false","root","1234");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select paytm_id,amount from paytm where  paytm_num ='"+tphn+"' and Paytm_usr='"+pn+"' and Paytm_pwd='"+pass+"'");
            while(rs.next())
                    {
            paytmid=rs.getInt("paytm_id");
            usrfare=rs.getFloat("amount");
        
                   }
           if(usrfare>tfare2)
           {
               return paytmid;
           }
            else
            {
                return 0;
            }
          
       
   }
    

public int updateacc(int acc,float tfare)throws SQLException, ClassNotFoundException
          {
            int destacc=110003;

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bank?useSSL=false","root","1234");
            PreparedStatement ps=con.prepareStatement("update paytm  Set amount=amount+? where paytm_id=?");
            PreparedStatement ps2=con.prepareStatement("update paytm  Set amount=amount-? where paytm_id=?");
            ps.setFloat(1,tfare);
            ps.setInt(2,destacc);
            int k=ps.executeUpdate();
            
            ps2.setFloat(1,tfare);
            ps2.setInt(2,acc);
            int p=ps2.executeUpdate();
            if(k==1&&p==1)
            {
                con.commit();
                out.println("Amount transfered");
                con.close();
                return 1;
              
            }
            else
            {
                con.rollback();
                out.println("Amount cannot transfered");
                con.close();
                return 0;
            }
         } 
       
public int recordpay(int bki,float tfare2,Date date,Time time)throws SQLException, ClassNotFoundException
{
      Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bank?useSSL=false","root","1234");
      PreparedStatement pst=con.prepareStatement("insert into recieved_amount values(null,?,'Paytm',?,?,?)");
      pst.setInt(1,bki);
      pst.setFloat(2,tfare2);
      pst.setDate(3,date);
      pst.setTime(4,time);
      int row=pst.executeUpdate();
      
      if(row==1)
      {
        return 1;
      }
      else
      {
          return 0;
      }
     
}

}
