import bean.ViewTrain;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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


@WebServlet(name = "Train_sear", urlPatterns = {"/Train_sear"})


public class Train_sear extends HttpServlet {

    Connection con=null;
    
    Date TravelDate;
    Date d;
    Date tnrdatee;
    String trnid;
    String src_stn_id_usr;
    String des_stn_id_usr;
    String des_stn_dis_usr;
    String stn_day;
    String tc; 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
             HttpSession mysession = request.getSession();
           String TFrom= request.getParameter("tfrom");	        
           String TTo= request.getParameter("tto");
           String TDate = request.getParameter("tdate");
           String tclass=request.getParameter("tclass");
           String tjrtyp=request.getParameter("journey");
           System.out.println(TDate);
           TravelDate = Date.valueOf(TDate);
           java.util.Date date = new java.util.Date();
           SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
           String dt = formatter.format(TravelDate);
           d = Date.valueOf(dt);
           System.out.println(d);
           tc=tclass;
           String trdate12=request.getParameter("trdate");
           if(tjrtyp=="round")
           {
           
           tnrdatee=Date.valueOf(trdate12);
           mysession.setAttribute("trdate",tnrdatee);
           }
           
     
       
        try {
           
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_train?useSSL=false","root","1234");
                    Statement st=con.createStatement();
                   
                    
                  ArrayList viewtrain = new ArrayList();
                  ResultSet rs = st.executeQuery("select T_train_id,T_train_name,T_source_stn_id,T_destination_stn_id,T_dep_time,T_ar_time,T_available_date,T_arr_date,src_stn_id,dest_stn_id,T_stn_dis_Km,T_stn_time,T_stn_day,Adult,Child,Senior,"+tc+",T_service_tax from t_train_status natural join t_station_distance natural join t_train natural join t_train_fare where T_t_id=Train_id and T_train_id=Train_id and src_stn_id='"+TFrom+"' and dest_stn_id='"+TTo+"' and T_available_date='"+TravelDate+"' and T_coach_fare='"+tclass+"'");
                      
                  while(rs.next())
                 {
                   viewtrain.add(new ViewTrain(
                    rs.getInt("T_train_id"),
                    rs.getString("T_train_name"),
                    rs.getString("T_source_stn_id"),
                    rs.getString("T_destination_stn_id"),
                    rs.getString("T_dep_time"),
                    rs.getString("T_ar_time"),
                    rs.getDate("T_available_date"),
                    rs.getDate("T_arr_date"), 
                    rs.getString(tc),
                    rs.getString("src_stn_id"),
                    rs.getString("dest_stn_id"),
                    rs.getString("T_stn_dis_Km"),
                    rs.getString("T_stn_time"),
                    rs.getString("T_stn_day"),
                    rs.getString("Adult"),
                    rs.getString("Child"),
                    rs.getString("Senior"),
                    rs.getFloat("T_service_tax")
                    
                           
                  ));
                   
                   
                 }
            
              mysession.setAttribute("viewtrain",viewtrain);
              mysession.setAttribute("tclass",tclass);
              mysession.setAttribute("brat",TFrom);
              mysession.setAttribute("rupt",TTo);
           
              mysession.setAttribute("tjrtyp",tjrtyp);
              RequestDispatcher rd=request.getRequestDispatcher("./jsp/view/viewtrain.jsp");
              rd.forward(request,response);
              return;
               
            }
           catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Train_sear.class.getName()).log(Level.SEVERE, null, ex);
         
        }
    }
}