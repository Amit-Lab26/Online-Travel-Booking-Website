import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class payment_sear extends HttpServlet {

String a=null;
String paytm=null;
String debit=null;

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String ptyp=request.getParameter("paymode");
        if(ptyp!=null){
     try{
       
            switch (ptyp) {
                case "paytm":
                    response.sendRedirect("paytm.jsp");
                    break;
                case "debit":
                    response.sendRedirect("debit.jsp");
                    break;
                case "credit":
                    response.sendRedirect("credit.jsp");
                    break;
                default:
                    out.println("<h1>You have not selected any payament mode!!!Please select mode for payment</h1>");
                    break;
            }
    
       }
     
      catch(IOException e){}
}
        else{
            out.println("<center><h2 style='color:red'>Please Select the mode of Payment</h2></center>");
            
            }
}  
} 