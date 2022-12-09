/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import DBhandler.trainservice;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class train2 extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession mysession=request.getSession();
        String trainid=request.getParameter("trainid");
        String tname=request.getParameter("tname");
        String deptime=request.getParameter("deptime");
        String artime=request.getParameter("artime");
        String avldate=request.getParameter("avldate");
        String arrdate=request.getParameter("arrdate");
        String tfare=request.getParameter("tfare");
        String taa=request.getParameter("taa");
        String clas=request.getParameter("tclas");
        String usrsrc=request.getParameter("usrsrc");
        String usrstd=request.getParameter("usrstd");
        String usrdes=request.getParameter("usrdes");
        String usrdis=request.getParameter("usrdis");
        String usrstt=request.getParameter("usrstt");
        String ttax=request.getParameter("ttax");
        String tfs=request.getParameter("tfs");
        String tfc=request.getParameter("tfc");
     
        String tjrtyp=(String)mysession.getAttribute("tjrtyp");
        Date trdate=(Date)mysession.getAttribute("trdate");
      
        String tclass=(String)mysession.getAttribute("tclass");
        String tfrm=(String)mysession.getAttribute("brat");
        String tto=(String)mysession.getAttribute("rupt");
        mysession.setAttribute("tfrm",tfrm);
        mysession.setAttribute("tto",tto);

         mysession.setAttribute("trainid",trainid);
         mysession.setAttribute("tname",tname);

         mysession.setAttribute("deptime",deptime);
         mysession.setAttribute("artime",artime);
         mysession.setAttribute("avldate",avldate);
         mysession.setAttribute("arrdate",arrdate);
         mysession.setAttribute("tfare",tfare);
         mysession.setAttribute("taa",taa);
         mysession.setAttribute("clas",clas);
         mysession.setAttribute("usrsrc",usrsrc);
         mysession.setAttribute("usrstd",usrstd);
         mysession.setAttribute("usrdes",usrdes);
         mysession.setAttribute("usrdis",usrdis);
         mysession.setAttribute("usrstt",usrstt);
         mysession.setAttribute("tfs",tfs);
         mysession.setAttribute("tfc",tfc);
         mysession.setAttribute("ttax",ttax);
    if(tjrtyp!=null){
     try{
       switch (tjrtyp) {
           case "one":
          response.sendRedirect("./jsp/Bookform/trainbookform.jsp");
           case "round":
       
          trainservice xe=new trainservice();
          ArrayList returntrain = new ArrayList();
          x=xe.train2(trdate,tfrm,tto,tclass,returntrain);
           if(x==1)
          {
             mysession.setAttribute("returntrain",returntrain);
             response.sendRedirect("./jsp/view/viewtrain2.jsp");
                
          }
          else
          {
             out.println("No Return Train's Found On  This Date!");
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