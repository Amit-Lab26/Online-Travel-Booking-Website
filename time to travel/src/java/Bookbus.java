/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DBhandler.Passenger;
import bean.bspcont;
import bean.busp;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.EmailService;

/**
 *
 * @author admin
 */
public class Bookbus extends HttpServlet {

    int busid;
    int bki;
    int tranid;
    float fare;
    String bjdate;
    String pemail;
    int pnum;
    Connection con2;
    Time ts;
    Date d;
    int r;
    int y;
    int k;
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
        List<busp> passengerlist = new ArrayList<>();
        List<bspcont> bpc = new ArrayList<>();
        HttpSession mysession=request.getSession();
        String bid=(String)mysession.getAttribute("bid");
        busid=Integer.parseInt(bid);
        ts=(Time)mysession.getAttribute("ts");
        d=(Date)mysession.getAttribute("d");
        bki=(Integer)mysession.getAttribute("bkid");
        tranid=(Integer)mysession.getAttribute("transcid");
        fare=(Float)mysession.getAttribute("tfare2");
        bjdate=(String)mysession.getAttribute("bdate");
        Date bjdat=Date.valueOf(bjdate);
        String bclass=(String)mysession.getAttribute("bclass");
        pemail=(String)mysession.getAttribute("custemail");
        String pn=(String)mysession.getAttribute("custnum");
        pnum=Integer.parseInt(pn);
        String ban=(String)mysession.getAttribute("bano");
        String bcn=(String)mysession.getAttribute("bcno");
        int ba=Integer.parseInt(ban);
        int bc=Integer.parseInt(bcn);
        int seat=ba+bc;
        busp p=new busp();
        Passenger padd=new Passenger();
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here.You may use following sample code.*/
      
          Class.forName("com.mysql.jdbc.Driver");
          con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_bus?useSSL=false","root","1234");
          PreparedStatement ps = con2.prepareStatement("insert into bus_bk_dtls values(?,?,?,?,?,?,?,?,?)");
          ps.setInt(1,bki);
          ps.setInt(2,busid);
          ps.setString(3,ban);
          ps.setFloat(4,fare);
          ps.setInt(5,tranid);
          ps.setString(6,"Ok");
          ps.setString(7,bjdate);
          ps.setDate(8,d);
          ps.setTime(9,ts);
           k=ps.executeUpdate();
       if(k==1)
       {
     for(int i=0;i<seat;i++)
      {      
             String bfname=(String)mysession.getAttribute("bfname"+i);
             String blname=(String)mysession.getAttribute("blname"+i);
             String age=(String)mysession.getAttribute("bage"+i);
             String bgender=(String)mysession.getAttribute("bgen"+i);
             String bseat=(String)mysession.getAttribute("pseat"+i);
             int bage=Integer.parseInt(age);
             p.tid=bki;
             p.fname=bfname;
             p.lname=blname;
             p.age=bage;
             p.gender=bgender;
             p.seat=bseat;
             passengerlist.add(p);
             r=padd.addbusp(p);
       }
          
    }
       if(r==1)
       {
          bspcont bspc=new bspcont();
          bspc.tid=bki;
          bspc.pemail=pemail;
          bspc.pnum=pnum;
          bpc.add(bspc);
          y=padd.addpcontact(bspc);   
       }
       if(y==1)
       {
         padd.addbkseats(busid,p.seat,bjdat, bclass);
       }
        if(y==1&&k==1&&r==1)
        {
            EmailService.sendMail(pemail, "You have booked successful", "Hey " +"Nilesh"+ ",\n\nYou have just made an successful booking with booking number #" + bki + ".\n\nManagement Team.");
            response.sendRedirect("BookingSucsess.jsp");
        }
        else
        {
            out.println("Something Went Wrong While Booking Please Contact Senter!");
        }
          
     } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(Bookbus.class.getName()).log(Level.SEVERE, null, ex);
       }
        
       
        
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
