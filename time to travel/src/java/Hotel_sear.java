import bean.ViewHotel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

@WebServlet(name = "Hotel_sear", urlPatterns = {"/Hotel_sear"})
public class Hotel_sear extends HttpServlet {
         Connection con=null;
    Date TravelDate;
    Date d;
    
    String honame=null;
    String hocity=null ;
    String horating=null;
    String hostate=null;
    String horoomtyp=null;
    int roomprice;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String hloc = request.getParameter("hloc");
        String roomtyp = request.getParameter("roomtyp");
        String noroom= request.getParameter("noroom");
        String hcin=request.getParameter("checkin");
        String hcout=request.getParameter("checkout"); 
      
        
      try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_hotel?useSSL=false","root","1234");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select Hotel_id,H_name,H_state,H_city,Room_Type,H_ratings,Room_price from hotel_details natural join h_avl natural join h_search where H_city='"+hloc+"' and Room_Type='"+roomtyp+"'");
            ArrayList viewhotel = new ArrayList();
              
            while(rs.next()){
              
              viewhotel.add(new ViewHotel(
              rs.getInt("Hotel_id"),
              rs.getString("H_name"),
              rs.getString("H_city"),
              rs.getString("H_ratings"),
              rs.getString("H_State"),
              rs.getString("Room_Type"),
              rs.getInt("Room_price")
              ));
            }
              HttpSession mysession = request.getSession();
              mysession.setAttribute("viewhotel",viewhotel);
              mysession.setAttribute("noroom",noroom);
              mysession.setAttribute("hcin",hcin);
              mysession.setAttribute("hcout",hcout);
              RequestDispatcher rd=request.getRequestDispatcher("./jsp/view/viewhotel.jsp");
              rd.forward(request,response);
              return;
         }

       
      catch (SQLException | ClassNotFoundException ex) {
               Logger.getLogger(Bu_sear.class.getName()).log(Level.SEVERE, null, ex);
           }
             }
             
            
}
  
               
 
  
        

 


