package Cancel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CanceBus extends HttpServlet {

    Connection con=null;
    String usrid;
    int userid;
    int bkid;
    String bktyp;
    String dt=(new java.util.Date()).toString();
 
}
       
   /*
    
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession mysession=request.getSession();
        usrid=(String)mysession.getAttribute("userid");
        String bookid=request.getParameter("bookid");
         bktyp=request.getParameter("bktyp");
         
             if(!bookid.equals(0)){
                    
                    boolean b = deleteData(bookid);
                   if(b){
                       out.println("Cancelled Succsessfully!");
                       response.sendRedirect("./user_booking.jsp");
                        }
                   else{
                       out.println("Something wrong");
                   }
                       }
            else{
            out.println("Booking Id don't match");
                  }
}  
       
        
        boolean validate(String bookid)
        {
        String qry = "select * from bus_bk_dtls where Bus_Bk_Id='"+bookid+"'";
        
       
          try {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery(qry);
                
                if(rs.next()){
                    
                int busid=rs.getInt(2);
                int bjdate=rs.getInt(8);
                int bfare=rs.getInt(9);
                int btranid=rs.getInt(10);
                
                String qry1="select * from bus_shedule where Bus_Id='"+busid+"' and Dep_date='"+bjdate+"'";  
                
                ResultSet rs2=st.executeQuery(qry1);
                if(rs2.next()){
                    int aseat=rs.getInt(3);
                     aseat=aseat+1;
                
                 String qry2="update bus_shedule where Bus_Id='"+busid+"' and Dep_date='"+bjdate+"'";
                 PreparedStatement pst2 = con.prepareStatement(qry2);
                 pst2.setInt(1, aseat);
                 
                 String qry3="update bus_bk_dtls where Bus_Bk_Id='"+bookid+"' Bus_Id='"+busid+"' and Dep_date='"+bjdate+"'";
                 PreparedStatement pst3 = con.prepareStatement(qry3);
                 pst3.setString(1,"Cancel");
                 
                int val = pst2.executeUpdate();
                int val2=pst3.executeUpdate();
                return true;
                }
               } 
          }
          catch (ClassNotFoundException | SQLException ex) {
                           }
        return false;
           }
        
}
       
boolean deleteData(String bookid) throws SQLException{
        boolean b;
            userid=Integer.parseInt(usrid);
            bkid=Integer.parseInt(bookid);
            
        if(validate(bookid)){
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_user?useSSL=false","root","1234");
            String sql = "UPDATE t_booked SET pay_status = '0' where bk_id =? and usr_id=? ";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, bkid);
            pst.setInt(2, userid);
            
            String busqry = "insert into t_cancelled(null,'"+userid+"','"+bkid+"','"+bktyp+"','"+dt+"','Processing')";
            PreparedStatement pst4 = con.prepareStatement(sql);
            
                             }
         



          int val4 = ps4.executeUpdate();
          int val5 = pst5.executeUpdate();
          int val3 = pst3.executeUpdate();

           if(val4 == 1 && val5 ==1){b = true;}
           else{b =  false;}
           return b;
       }
          else{
            b = false;
            return b;
        }
   }}

   
  */

            



