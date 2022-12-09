import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Registerusr", urlPatterns = {"/Registerusr"})
public class Registerusr extends HttpServlet {

 
    Connection con1=null;
    Connection con=null;
    String qry=null;
    Date Dob;
    Date d;
    int t;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
        
        String fname = request.getParameter("usrfname");
        String lname = request.getParameter("usrlname");
        String email = request.getParameter("usremail");
        String phone = request.getParameter("usrphn");
        String date= request.getParameter("usrdob");
        System.out.println(date);
        Dob = Date.valueOf(date);
        java.util.Date tdate = new java.util.Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dt = formatter.format(tdate);
        d = Date.valueOf(dt);
        System.out.println(d);
        String gender = request.getParameter("usrgen");
        String pass = request.getParameter("usrpwd");
        String pass2 = request.getParameter("usrcnfpwd");
        String age = request.getParameter("usrage");
        String usradd=request.getParameter("usradd");
        String usrcity=request.getParameter("usrcity");
        String usrstate=request.getParameter("usrstate");
        String usrpinc=request.getParameter("usrpinc");
        t=Integer.parseInt(usrpinc);
        
       if(pass.equals(pass2)){
            try {
                
            Class.forName("com.mysql.jdbc.Driver");
            con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
            PreparedStatement st=con1.prepareStatement("Select usr_email from  t_user where usr_email='"+email+"'");
            ResultSet rs=st.executeQuery();
            if(rs.next()){
            RequestDispatcher rd = request.getRequestDispatcher("regPage.jsp");
            rd.include(request,response);
            String err_msg="error-msg";
            out.print("<div id='"+err_msg+"'style='color:red;'>This Email is Already Registered! Please Type Another Email.</div>");
             con.close();            
                         }
else{    
   try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
            PreparedStatement pst=con.prepareStatement("insert into t_user  values(null,?,?,?,?,?,?,?,?,?,?,?,?)");
            
            pst.setString(1,fname);
            pst.setString(2,lname);
            pst.setString(3,email);
            pst.setString(4,phone);
            pst.setString(5,gender);
            pst.setDate(6,Dob);
            pst.setString(7,age);
            pst.setString(8,pass);
            pst.setString(9,usradd);
            pst.setString(10,usrcity);
            pst.setString(11,usrstate);
            pst.setInt(12,t);
            int row=pst.executeUpdate();
            out.println("<h1>"+row+"You have Sucssesfully registered to this Website</h2>");
         }
      catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Registerusr.class.getName()).log(Level.SEVERE, null, ex);
            RequestDispatcher rd = request.getRequestDispatcher("regPage.jsp");
            rd.include(request,response);
            String err_msg="error-msg";
            out.print("<div id='"+err_msg+"'style='color:red;'>404 File NOT Found</div>");
             
            }
        }
               }
           catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(Registerusr.class.getName()).log(Level.SEVERE, null, ex);
               }
             }
       else
       {
            RequestDispatcher rd = request.getRequestDispatcher("regPage.jsp");
            rd.include(request,response);
            String err_msg="error-msg";
            out.print("<div id='"+err_msg+"'style='color:red;'>Password Did'nt Match!</div>");
           
       }
        
     
       
            }
}     
               
    
             
        
     


    

    




  
  