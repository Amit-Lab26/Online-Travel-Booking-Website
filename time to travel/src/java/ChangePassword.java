import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class ChangePassword extends HttpServlet {

    Connection con=null;
    PreparedStatement pst;
    ResultSet rs;
    Statement st;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
       
  
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_t?useSSL=false","root","1234");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ChangePassword.class.getName()).log(Level.SEVERE, null, ex);
        }
         
         
         String userid = request.getParameter("idref");
         String curpass = request.getParameter("curpwd");
         String pass = request.getParameter("newpwd");
         String pass2 = request.getParameter("conpwd");

        if(pass.equals(pass2)){
            try {
               boolean b = updatedata(userid,curpass,pass);
               if(b){
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.include(request,response);
                    String suc_msg="suc-msg";
                    out.print("<div id='"+suc_msg+"'>Password Changed!</div>");
                    }
               else{
//                   RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
//                   rd.include(request,response);
                   String err_msg="err-msg";
                   out.print("<div id='"+err_msg+"'>Something Went Wrong</div>");
                    }
            } catch (SQLException ex) {
            }
        }
        else{
            out.println("Password dont match");
            }
    }  
     boolean validate(String userid,String curpass){
        String qry = "select * from t_user where usr_id ='"+userid+"' and usr_pwd ='"+curpass+"'";

          try {
            st=con.createStatement();
            rs=st.executeQuery(qry);
            if(rs.next()){
                return true;
            }
        } catch (SQLException ex) {
        }
        return false;
    }
    
    boolean updatedata(String userid,String curpass, String pass) throws SQLException{
        boolean b;
        if(validate(userid,curpass)){
           String sql = "UPDATE t_user SET usr_pwd= ? where usr_id = ?";
           pst = con.prepareStatement(sql);
           pst.setString(1, pass);
           pst.setString(2,userid);
           
           int val = pst.executeUpdate();
           if(val == 1){
               b = true;
           }
           else{
               b =  false;
          }
            }
        else{
            b= false;
        }
        return b;
        }
}