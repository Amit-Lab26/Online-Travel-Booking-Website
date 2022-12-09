/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DBhandler.carbkd;
import bean.carbkdusr;
import bean.carbking;
import bean.carbkroute;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class Bookcar extends HttpServlet {
Time ts;
Date d;
int bki;
int tranid;
int carid;
carbkd c;
int drid;
Time cdt1;
Date cdd1;
int bkd;
float fare;
int cbkr;
int bkdone;
Time cpt1;
   /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         HttpSession mysession=request.getSession();
            List<carbking> crbk=new ArrayList<>();
            List<carbkroute> cbr=new ArrayList<>();
            List<carbkdusr> cbu=new ArrayList<>();
            String cjrtype=(String)mysession.getAttribute("cjrtype");
            int dist=(Integer)mysession.getAttribute("dist");
            Date jdate=(Date)mysession.getAttribute("jdate");
            String dcity=(String)mysession.getAttribute("cdcity");
            String pcity=(String)mysession.getAttribute("cpcity");
            String cid=(String)mysession.getAttribute("cid");
            String ccmp=(String)mysession.getAttribute("cmp");
            String ctyp=(String)mysession.getAttribute("ctyp");
            String cptime=(String)mysession.getAttribute("cptime");
            String cadd=(String)mysession.getAttribute("cadd");
            String cemail=(String)mysession.getAttribute("cemail");
            String cname=(String)mysession.getAttribute("cname");
            String cphn=(String)mysession.getAttribute("cphn");
            ts=(Time)mysession.getAttribute("ts");
            d=(Date)mysession.getAttribute("d");
            bki=(Integer)mysession.getAttribute("bkid");
            tranid=(Integer)mysession.getAttribute("transcid");
            fare=(Float)mysession.getAttribute("tfare2");
            carid=Integer.parseInt(cid);
            c=new carbkd();
            int cph=Integer.parseInt(cphn);
            String crdate=(String)mysession.getAttribute("crdate");
            String crtime=(String)mysession.getAttribute("crtime");
            PrintWriter out = response.getWriter();
            cdd1=Date.valueOf(crdate);
            
            /*
          
       try  {
           
            drid=c.SearchDriver(carid);
            carbking l=new carbking();
            carbkroute p=new carbkroute();
            carbkdusr e=new carbkdusr();
          if(drid>1)
          {
            
              l.cbkid=bki;
              l.cid=carid;
              l.cdrid=drid;
              l.cpd=jdate;
              l.cpt=cpt1;
              l.cdd=cdd1;
              l.cdt=cdt1;
              l.jrtyp=cjrtype;
              l.ccmp=ccmp;
              crbk.add(l);
              bkd=c.carbooking(l);
          }
          else
          {
              out.println("Sorry");
          }
         
             if(bkd==1)
             {
            
             p.cbki=bki;
             p.cfrm=pcity;
             p.cto=dcity;
             p.cdist=dist;
             p.ctfare=fare;
             p.transcid=tranid;
             p.cstatus="Booked";
             p.cbkdate=d;
             p.cbktime=ts;
             cbr.add(p);
             cbkr=c.carbkroute(p);
             }
             if(cbkr==1)
             {
                
                
                e.cbkid=bki;
                e.usrname=cname;
                e.usremail=cemail;
                e.usrphn=cph;
                e.usradd=cadd;
                cbu.add(e);
                bkdone=c.carbkduser(e);
             }
            
            
         
            
           
            
        } catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(Bookcar.class.getName()).log(Level.SEVERE, null, ex);
    }
         */ 
            out.println(crtime);
            out.println(cptime);
            out.println(ts);
            out.println(bki);
            out.println(d);
            out.println(tranid);
            out.println(fare);
            out.println(carid);
        
}
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
