

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
    
    int userid;
    String uname;
     String usrlname;
    String email;
    String phone;
    Date dob;
    String gender;
    String password;
    String age;
    String usertyp;
    String usradd;
    String usrcity;
    String usrstate;
    int usrpinc;
    Connection con=null;
    PreparedStatement pst;
    ResultSet rs;
    Statement st;


 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
   
    {
        
        PrintWriter out = response.getWriter();
        String emailid1= request.getParameter("username");
        String passwd1= request.getParameter("password");
        String logintyp=request.getParameter("logintype");
      
        
            if(validate(emailid1,passwd1)){
                  HttpSession mysession = request.getSession();
                  mysession.setAttribute("logintyp",logintyp);
                  mysession.setAttribute("userid", userid);
                  mysession.setAttribute("uname", uname);
                  mysession.setAttribute("uemail", email);
                  response.sendRedirect("authenticate.jsp");
                                         }
            else{
            RequestDispatcher rd = request.getRequestDispatcher("/loginPage.jsp");
            rd.include(request,response);
            String error_msg="error-msg";
            out.print("<header id='"+error_msg+"' style='color:Red;'><h2><b>Invalid username or Password</b></h2></header>");
            }
    }
 boolean validate(String emailid, String passwd)
      {  
        String qry = "select * from t_user where  usr_email ='"+emailid+"' and usr_pwd ='"+passwd+"'";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
            st=con.createStatement();
            rs=st.executeQuery(qry);
           
 
            if(rs.next()){
                userid=rs.getInt("usr_id");
                uname=rs.getString("usr_name");
                usrlname=rs.getString("usr_lname");
                email=rs.getString("usr_email");
                phone=rs.getString("usr_phn");
                dob=rs.getDate("usr_gen");
                gender=rs.getString("usr_dob");
                password=rs.getString("usr_age");
                age=rs.getString("usr_pwd");
                usradd=rs.getString("usr_add1");
                usrcity=rs.getString("usr_city");
                usrstate=rs.getString("usr_state");
                usrpinc=rs.getInt("usr_pincode");
                         }
            else{
                return false;
               }
        
        } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
             
       return true;
    }
 
}
    




 