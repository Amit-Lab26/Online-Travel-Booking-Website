import DBhandler.PaytmPay;
import DBhandler.t_book;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

import javax.servlet.http.HttpSession;

public class Paytm1 extends HttpServlet {
    
Connection con=null;    
Statement st;
ResultSet rs;
float tfare2;
int transcid;
int tbooked;
int paytmid;
float usrfare;
int t;
int ki;
int o;
RequestDispatcher rd;
java.util.Date date = new java.util.Date();
SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-YYYY | hh:mm:ss a");
String dt = formatter.format(date);
Date d;
Time ts;


@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
  
 
        response.setContentType("text/html;charset=UTF-8");
              PrintWriter out = response.getWriter();
        HttpSession mysession=request.getSession();
        String pphn=request.getParameter("pphn");
        String pname=request.getParameter("pname");
        String ppass=request.getParameter("ppass");
        String bktyp=request.getParameter("booktype");
        String payamount=request.getParameter("payamount");
        int userid=(Integer)mysession.getAttribute("userid");
        String Paytype=request.getParameter("Paytype");
        int amount=Integer.parseInt(payamount);
         d=new Date(System.currentTimeMillis());mysession.setAttribute("d", d);
         ts=new Time(System.currentTimeMillis());mysession.setAttribute("ts",ts);
        PaytmPay p=new PaytmPay();
        t_book tb=new t_book();
        tfare2=Float.parseFloat(payamount);
    try{
        tbooked=tb.t_booked(userid, Paytype, amount, bktyp,d,ts);
        if(tbooked==1)
        {
          t=tb.t_book(userid,d,ts);
          paytmid=p.selectacc(pphn, pname, ppass, tfare2);
          int k=p.recordpay(t, tfare2, d, ts);
          transcid=tb.seltranscid(t);
          tb.updt_booked(transcid, t);
          p.updateacc(paytmid, tfare2);
          
       }
         else
         {
             out.println("404 File Not Found!");
         }
        }
    catch (SQLException | ClassNotFoundException ex) {
        Logger.getLogger(Paytm1.class.getName()).log(Level.SEVERE, null, ex);
    }
      
      {
          if(transcid>0)
          {
                    mysession.setAttribute("transcid", transcid);
                    mysession.setAttribute("bkid", t);
                    mysession.setAttribute("tfare2",tfare2);
              switch(bktyp) {
                case "busbook":
                    rd=request.getRequestDispatcher("Bookbus");
                    rd.forward(request,response);
                    break;
                case "trainbook":
                     rd=request.getRequestDispatcher("Booktrain");
                    break;
                case "flightbook":
                     rd=request.getRequestDispatcher("Bookflight");
                    break;
                case "hotelbook":
                     rd=request.getRequestDispatcher("Bookhotel");
                    break;
                case "carbook":
                   
                    rd=request.getRequestDispatcher("Bookcar");
                    rd.forward(request,response);
                    break;
                default:
                    out.println("<h1>You have not selected any payament mode!!!Please select mode for payment</h1>");
                    break;
                    
          }
          }
          else{
              out.println("wrong!");
              out.println("<h1>"+paytmid+"</h1>");
              out.println("<h1>"+o+"</h1>");
          }
   
      }

}
   
       
  boolean updatetbooked(int bki,int tid)
        {
          
           String qry = "update t_booked set tran_id='"+tid+"',pay_status='Ok' where bk_id='"+bki+"'";
           try{ 
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bank?useSSL=false","root","1234");
            rs=st.executeQuery(qry);  
              }
      catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(Paytm1.class.getName()).log(Level.SEVERE, null, ex);
              }
        return true;
       }
 
   boolean updaterec() throws SQLException, ClassNotFoundException
    {
       Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bank?useSSL=false","root","1234");
                    PreparedStatement pst=con.prepareStatement("insert into recieved_amount values(null,?,'Paytm',?,?,?)");
                    pst.setInt(1,t);
                    pst.setFloat(2, tfare2);
                    pst.setDate(3,d);
                    pst.setTime(4,ts);
                    int row=pst.executeUpdate();
                if(row==1)
                {
                    return true;
                }
                    else
                {
                    return false;
                }
                
                    
    }
}
    
    
     

         
   
