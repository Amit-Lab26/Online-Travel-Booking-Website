import DBhandler.Distance_Calculator;
import DBhandler.car_search;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ca_sear", urlPatterns = {"/ca_sear"})
public class ca_sear extends HttpServlet {

    Connection con=null;
    Date TravelDate;
    Date d;
    Date ReturnDate;
    int cid;
    int cfare;
    int dist;
    Time rtime;
      int k;
 int one;
 int onee;
 int two;

  String crdate;
  String crtime;
 RequestDispatcher rd;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
             HttpSession mysession=request.getSession();
            String cjrtype=request.getParameter("jrtype");
            String cpcity= request.getParameter("cpcity");
            String cpdate= request.getParameter("cpdate");
            String tf="HH:mm:ss";
            SimpleDateFormat tif=new SimpleDateFormat(tf,Locale.getDefault());
            
            String cdcity=request.getParameter("cdcity");
            String cseat = request.getParameter("cseat");
            TravelDate = Date.valueOf(cpdate);
            java.util.Date date = new java.util.Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String dt = formatter.format(TravelDate);
            d = Date.valueOf(dt);
            System.out.println(d);
            ArrayList  viewcar= new ArrayList();
            car_search cs=new car_search();
            
            String cptime=request.getParameter("cptime");
          
    
            crdate=request.getParameter("crdate");
            crtime=request.getParameter("crtime");
             if(cjrtype=="round")
            {
            ReturnDate=Date.valueOf(crdate);
            }
         
            
  try {

           dist=new Distance_Calculator().getDistance(cpcity,cdcity);
           if(dist>1)
           {
               switch(cjrtype) {
                case "one":
                      one=cs.one(cseat,cpcity,viewcar); 
                      onee=cs.oneway(cseat,TravelDate, cpcity, viewcar);
                     
                    break;
                case "round":
                   
                         one=cs.one(cseat,cpcity,viewcar);
                         two=cs.round(cseat,TravelDate,ReturnDate,cpcity, viewcar);
                 
                    break;
               
                default:
                    out.println("<h1>You have not selected any payament mode!!!Please select mode for payment</h1>");
                    break;
                    
                              }
            
        
         
           }
                  else
         {
             out.println("404 File Not Found!");
         }
        
  
       } catch (SQLException | ClassNotFoundException ex ) {
            Logger.getLogger(ca_sear.class.getName()).log(Level.SEVERE, null, ex);
        }
          
        {
          if(one==1|two==1|onee==1)
          {
              mysession.setAttribute("cpcity",cpcity);
              mysession.setAttribute("cdcity",cdcity);
              mysession.setAttribute("jdate",TravelDate);
              mysession.setAttribute("cptime",cptime);
              mysession.setAttribute("cjrtype",cjrtype);
              mysession.setAttribute("viewcar",viewcar);   
              switch(cjrtype) {
                case "one":
                     mysession.setAttribute("dist",dist);
                     rd=request.getRequestDispatcher("./jsp/view/viewcar.jsp");
                     rd.forward(request,response);
                    break;
                case "round":
                    mysession.setAttribute("dist",dist+dist);
                    mysession.setAttribute("crtime",crtime);
                    mysession.setAttribute("crdate",crdate);
                    rd=request.getRequestDispatcher("./jsp/view/viewcar.jsp");
                    rd.forward(request,response);
                    break;
               
                default:
                    out.println("<h1>You have not selected any payament mode!!!Please select mode for payment</h1>");
                    break;
                    
                              }
          }
          else{
              out.println("Found Nothing!");
              out.println("<h1></h1>");
              out.println("<h1></h1>");
              }
           
         }
    }
}




    
    





        
            
            
            
            
            
            
           
        
        
       
    

