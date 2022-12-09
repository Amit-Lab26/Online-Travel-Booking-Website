/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DBhandler.f2;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class flight2 extends HttpServlet {

    int x;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession mysession=request.getSession();
        Date frdate=(Date)mysession.getAttribute("frdate");
        String fjrtyp=(String)mysession.getAttribute("fjrtyp");
        String fid=request.getParameter("fid");mysession.setAttribute("fid",fid);
        String fcmp=request.getParameter("fcmp");mysession.setAttribute("fcmp",fcmp);
        String ftyp=request.getParameter("ftyp");mysession.setAttribute("ftyp",ftyp);
        String favl=request.getParameter("favl");mysession.setAttribute("favl",favl);
        String ffare=request.getParameter("ffare");mysession.setAttribute("ffare",ffare);
        String fdate=request.getParameter("fdate");mysession.setAttribute("fdate",fdate);
        String fsht=request.getParameter("fsht");mysession.setAttribute("fsht",fsht);
        String ftar=request.getParameter("ftar");mysession.setAttribute("ftar",ftar);
        String ffrm=request.getParameter("ffrm");mysession.setAttribute("ffrm",ffrm);
        String fto=request.getParameter("fto");mysession.setAttribute("fto",fto);
        String fdepdate=request.getParameter("fdepdate");mysession.setAttribute("fdepdate",fdepdate);
        String fano=request.getParameter("fano");mysession.setAttribute("fano",fano);
        String fcno=request.getParameter("fcno");mysession.setAttribute("fcno",fcno);
if(fjrtyp!=null){
     try{
       switch (fjrtyp) {
           case "one":
             response.sendRedirect("./jsp/Bookform/flightbookform.jsp");
             
           case "round":
          f2 xe=new f2();
          x=xe.set2(frdate, ffrm, fto, ftyp);
           if(x==1)
          {
             response.sendRedirect("./jsp/view/viewflight2.jsp");
                
          }
          else
          {
             out.println("No Retutn Flight Found On  This Date!");
          }
       }
     }
           catch(IOException e){}
}
        else{
            out.println("<center><h2 style='color:red'>Please Select the mode of Trip</h2></center>");
            
            }
    }
}

    
         
 
        
        
    

   

