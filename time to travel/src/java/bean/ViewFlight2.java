/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author admin
 */
public class ViewFlight2 implements Serializable 
    
    
{           
            String fcmp;
            String ffrm;
            String fto;
            String fweek;
            Date fdate;
            String ffare;
            String fdirc;
            String fres;
            String fsht;
            String ftarr;
            String ftyp;
            String faseat;
            Date fdepdate;
            int fid;

    public ViewFlight2(){}
    public ViewFlight2(int fi,String fc,String fr,String ft,String fw,Date fd,String ff,String fre,String fdi,String fst,String fat,String ftp,String fas,Date fdd) {
              
              fid=fi;
              fcmp=fc;
              ffrm=fr;
              fto=ft;
              fweek=fw;
              fdate=fd;
              ffare=ff;
              fres=fre;
              fdirc=fdi;
              fsht=fst;
              ftarr=fat;
              ftyp=ftp;
              faseat=fas;
              fdepdate=fdd;
    }

   public String getfcmp() {
        return fcmp;
    }

    public void setfmp(String fc) {
       fcmp = fc;
    }
     public String getffrm() {
        return ffrm;
    }

    public void setffrm(String fr) {
        ffrm= fr;
    }
     public String getfto() {
        return fto;
    }

    public void setfto(String ft) {
        fto = ft;
    }
     public String getfweek() {
        return fweek;
    }

    public void setfweek(String fw) {
        fweek = fw;
    }
     public Date getfdate() {
        return fdate;
    }

    public void setfdate(Date fd) {
        fdate = fd;
    }
         public String getffare() {
        return ffare;
    }

    public void setffare(String ff) {
        ffare= ff;
}
           public int getfid() {
        return fid;
    }

    public void setfid(int fi) {
        fid= fi;

 }
     public String getfres() {
        return fres;
    }

    public void setfres(String fre) 
   {
        fres= fre;

 }
     public String getfdirc() {
        return fdirc;
    }

    public void setfdirc(String fdi) {
        fdirc= fdi;

 }
      public String getfsht() {
        return fsht;
    }

    public void setfsht(String fst) 
   {
        fsht= fst;

 }
     public String getftarr() {
        return ftarr;
    }

    public void setftarr(String fat) {
        ftarr= fat;

 }
      public String getftyp() {
        return ftyp;
    }

    public void setftp(String ftp) {
        ftyp= ftp;

 }
         public String getfaseat() {
        return faseat;
    }

    public void setfaseat(String fas) {
        faseat= fas;

 }
     public Date getfdepdate() {
        return fdepdate;
    }

    public void setfdepdate(Date fdd) {
        fdepdate= fdd;
    }
}

    

