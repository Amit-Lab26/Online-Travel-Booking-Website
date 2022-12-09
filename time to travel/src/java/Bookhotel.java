/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
public class Bookhotel extends HttpServlet {
Time ts;
Date d;
int bki;
int tranid;
float fare;
Connection con2;
  String uname;
        String uphn;
        String ugen;
        int hid;
        String rtyp;
        Date cin;
        Date cout;
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
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        HttpSession mysession=request.getSession();
        ts=(Time)mysession.getAttribute("ts");
        d=(Date)mysession.getAttribute("d");
        bki=(Integer)mysession.getAttribute("bkid");
        tranid=(Integer)mysession.getAttribute("transcid");
        fare=(Float)mysession.getAttribute("tfare2");
        String hoid=(String)mysession.getAttribute("hid");
        uname=(String)mysession.getAttribute("hname");
        uphn=(String)mysession.getAttribute("hphn");
        ugen=(String)mysession.getAttribute("hgen");
        hid=Integer.parseInt(hoid);
        rtyp=(String)mysession.getAttribute("rtyp");
        String ckin=(String)mysession.getAttribute("cin");
        String ckout=(String)mysession.getAttribute("cout");
        cin=Date.valueOf(ckin);
        cout=Date.valueOf(ckout);
                
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/t_hotel?useSSL=false","root","1234");
        PreparedStatement ps=con2.prepareStatement("insert into hotel_bookings values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setInt(1,hid);
        ps.setString(2,uname);
        ps.setString(3,uphn);
        ps.setString(4,ugen);
        ps.setString(5,rtyp);
        ps.setDate(6,cin);
        ps.setDate(7,cout);
        ps.setDate(8,d);
        ps.setInt(9,tranid);
        ps.setString(10,"Booked");
        ps.setInt(11,bki);
        ps.setFloat(12,fare);
    }   catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(Bookhotel.class.getName()).log(Level.SEVERE, null, ex);
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
