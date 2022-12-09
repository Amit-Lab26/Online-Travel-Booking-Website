package bean;

import java.io.Serializable;
import java.util.Date;




public class ViewTrain implements Serializable{
    
            int trainid;
            String tname;
            String tfrm;
            String tto;
            String deptime;
            String artime;
            Date avldate;
            Date arrdate;
            String tfare;
            String usrsrc;
            String usrdes;
            String usrdis;
            String usrstt;
            String usrstd;
            String aseats;
            String fChild;
            String fSenior;
            Float ttax;
            
           
            
 public ViewTrain(){}
    public ViewTrain(int trnid,String trname, String trfrm, String trto, String tdept,String tarrt,Date trnavld,Date tardate,String ase,String usc,String ude,String udis,String urt,String usd,String tf,String fc,String fs,Float ttx) {
           
             trainid=trnid;
             tname=trname;
             tfrm=trfrm;
             tto=trto;
             deptime=tdept;
             artime=tarrt;
             avldate=trnavld;
             arrdate=tardate;
             aseats=ase;
             usrsrc=usc;
             usrdes=ude;
             usrdis=udis;
             usrstt=urt;
             usrstd=usd;
             tfare=tf;
             fSenior=fs;
             fChild=fc;
             ttax=ttx;
            
    
    
          }

   
      public int gettrainid() {
        return trainid;
    }

    public void settrainid(int trnid) {
        trainid = trnid;
    }

   public String gettname() {
        return tname;
    }

    public void settname(String trname) {
       tname = trname;
    }
     public String gettfrm() {
        return tfrm;
    }

    public void settfrm(String trfrm) {
       tfrm= trfrm;
    }
     public String gettto() {
        return tto;
    }

    public void settto(String trto) {
        tto = trto;
    }
       public String getdeptime() {
        return deptime;
    }

    public void setdeptime(String tdept) {
        deptime= tdept;
    }
       public String getartime() {
        return artime;
    }

    public void setartime(String tarrt) {
        artime = tarrt;
    }
       public Date getavldate() {
        return avldate;
    }

    public void setavldat(Date trnavld) {
        avldate = trnavld;
    }
     public Date getarrdate() {
        return arrdate;
    }

    public void setarrdate(Date tardate) {
        avldate = tardate;
    }

  public String getaseats() {
        return aseats;
    }

    public void setaseats(String ase) {
        aseats = ase;
    }
      public String gettfare() {
        return tfare;
    }

    public void settfare(String tf) {
        tfare = tf;
    }
public String getusrsrc() {return usrsrc ;}

public void setusrsrc(String usc) {usrsrc=usc;}

public String getusrdes() {return usrdes ;}
public void setusrdes(String ude) {usrsrc=ude;}

public String getusrstt() {return usrstt ;}
public void setusrstt(String urt) {usrstt=urt;}

public String getusrdis() {return usrdis ;}
public void setusrdis(String udis) {usrdis=udis;}

public String getusrstd() {return usrstd ;}
public void setusrstd(String usd) {usrstd=usd;}

public String getfChild() {
        return fChild;
    }

    public void setfChild(String fc) {
        fChild = fc;
    }
    public String getfSenior() {
        return fSenior;
    }

    public void setfSenior(String fs) {
        fSenior = fs;
    }
      public Float getttax() {
        return ttax;
    }

    public void setttax(Float ttx) {
        ttax = ttx;
    }
}