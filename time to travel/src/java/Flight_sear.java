import bean.ViewFlight;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Flight_sear", urlPatterns = {"/Flight_sear"})
public class Flight_sear extends HttpServlet {
 
    Connection con=null;
   
   
    Date TravelDate;
    Date d;
   int no;
   Date ReturnDate;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fjrtyp=request.getParameter("jrtyp"); 
        String ffrom = request.getParameter("ffrom");
        String ft= request.getParameter("fto");
        String fd= request.getParameter("fdate");
        System.out.println(fd);
        TravelDate = Date.valueOf(fd);
        java.util.Date date = new java.util.Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dt = formatter.format(TravelDate);
        d = Date.valueOf(dt);
        System.out.println(d);
        String ftyp = request.getParameter("fType");
        String fdirc = request.getParameter("fdirc");
        String fano=request.getParameter("fadult");
        String fcno=request.getParameter("fchild");
        String frdate=request.getParameter("frdate"); 
        ReturnDate=Date.valueOf(frdate);
         
        
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_flight?useSSL=false","root","1234");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("SELECT F_dep_date,F_flight_num,F_dep_airp_code,f_arr_airp_code,F_airline_cmp,F_weeks,F_flight_typ,F_flight_avl_ecomomy_seats,F_fare,F_fare_typ,F_fare_restrictions,F_flight_date ,F_shed_dep_time,F_shed_arr_time,F_Flight_dirc from F_fare natural join F_flight_instance natural join F_flight WHERE f_flight_date='"+TravelDate+"' and F_dep_airp_code='"+ffrom+"' and F_arr_airp_code='"+ft+"'and F_fare_typ='"+ftyp+"'");
             ArrayList viewflight = new ArrayList();
            
            while(rs.next())
            {
              viewflight.add(new ViewFlight(
              rs.getInt("F_flight_num"),
              rs.getString("F_airline_cmp"),
              rs.getString("F_dep_airp_code"),
              rs.getString("f_arr_airp_code"),
              rs.getString("F_weeks"),
              rs.getDate("F_flight_date"),
              rs.getString("F_fare"),
              rs.getString("F_fare_restrictions"),
              rs.getString("F_Flight_dirc"),
              rs.getString("F_shed_dep_time"),
              rs.getString("F_shed_arr_time"),
              rs.getString("F_fare_typ"),
              rs.getString("F_flight_avl_ecomomy_seats"),
              rs.getDate("F_dep_date")
            
               ));
            } 
                
              HttpSession mysession = request.getSession();
              mysession.setAttribute("viewflight",viewflight);
              mysession.setAttribute("fano",fano);
              mysession.setAttribute("fcno",fcno);
              mysession.setAttribute("frdate",ReturnDate);
              mysession.setAttribute("fjrtyp",fjrtyp);
              RequestDispatcher rd=request.getRequestDispatcher("./jsp/view/viewflight.jsp");
              rd.forward(request,response);
               return; 
            }
           catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Flight_sear.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}

