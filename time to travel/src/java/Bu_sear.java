

import bean.ViewBus;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Bu_sear", urlPatterns = {"/Bu_sear"})
public class Bu_sear extends HttpServlet {

    Connection con=null;
    Date TravelDate;
    Date d;
    String s;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
        String bFrom= request.getParameter("bFrom");
        String bTo= request.getParameter("bTo");
        String bano=request.getParameter("bano");
        String bcno=request.getParameter("bcno");
        String bdate= request.getParameter("bjdate");
       
        System.out.println(bdate);
        TravelDate = Date.valueOf(bdate);
       
        java.util.Date date = new java.util.Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dt = formatter.format(TravelDate);
        d = Date.valueOf(dt);
        System.out.println(d);
        String bclass= request.getParameter("bclass");
        
        
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select Bus_ID,Bus_Cmp,Bus_From,Bus_To,Bus_JTime,Bus_ATime,Bus_Tdistance,Bus_Class,B_Sleeper,Dep_date,Bus_aseats,B_Seat,Arr_date from bus_dtls natural join bus_shedule natural join bus_Fare  Where Bus_Class='"+bclass+"' and Bus_From='"+bFrom+"' and Bus_To='"+bTo+"' and Dep_date='"+TravelDate+"'");
         
                  ArrayList  viewbus = new ArrayList();
            while(rs.next())
            {
           
                
                 viewbus.add(new ViewBus(
                         
                         rs.getInt("Bus_ID"),
                         rs.getString("Bus_Cmp"),
                         rs.getString("Bus_From"),
                         rs.getString("Bus_To"),
                         rs.getString("Bus_JTime"),
                         rs.getString("Bus_ATime"),
                         rs.getString("Bus_Tdistance"),
                         rs.getString("Bus_Class"),
                         rs.getString("B_Sleeper"),
                         rs.getDate("Dep_date"),
                         rs.getString("Bus_aseats"),
                         rs.getString("B_Seat"),
                         rs.getDate("Arr_date")
              ));
                 
        
            
            
            }
          
                
              HttpSession mysession = request.getSession();
              mysession.setAttribute("viewbus",viewbus);
              mysession.setAttribute("bano",bano);
              mysession.setAttribute("bcno",bcno);
             
              RequestDispatcher rd=request.getRequestDispatcher("./jsp/view/viewbus.jsp");
              rd.forward(request,response);
              return;
                
            }
            catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Flight_sear.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}

        
            
            
            
            
            
            
           
        
        
       
    

