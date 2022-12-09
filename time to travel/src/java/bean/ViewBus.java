package bean;
import java.io.Serializable;
import java.util.Date;



public class ViewBus implements Serializable{
    

           
            int busid;
            String bcmp;
            String bfrm;
            String bto;
            String bclass;
            String bfare;
            Date   bdate;
            String baseat;
            String bjtime;
            String batime;
            String btdis;
            String bcf;
            Date barrdate;
         
    public ViewBus(){}
    public ViewBus(int bid,String bc, String bfr, String bt, String bjt,String bat,String btd,String bcl,String bf,Date bda,String bas,String cf,Date barrd) {
      
             bfare=bf;
             bcmp=bc;
             bfrm=bfr;
             bto=bt;
             bclass=bcl;
             bdate=bda;
             baseat=bas;
             bjtime=bjt;
             batime=bat;
             btdis=btd;
             busid=bid;
             bcf=cf;
             barrdate=barrd;
         
    }

    public int getbusid() {
        return busid;
    }

    public void setbusid(int bid) {
        busid=bid;
    }
    public String getbcmp() {
        return bcmp;
    }

    public void setcmp(String bc) {
        bcmp=bc;
    }
     public String getbfrm() {
        return bfrm;
    }

    public void setbfrm(String bfr) {
         bfrm=bfr;
    }
    public String getbto() {
        return bto;
    }

    public void setbto(String bt) {
       bto=bt;
    }
     public String getbclass() {
        return bclass;
    }

    public void setbclass(String bcl) {
        bclass=bcl;
    }
    public Date getbdate() {
        return bdate;
    }

    public void setbdate(Date bda) {
        bdate=bda;
    }
    public String getbaseat() {
        return baseat;
    }

    public void setbaseat(String bas) {
        baseat=bas;

 }

    public String getbjtime(){
        return bjtime;
    }
    public void setbjtime(String bjt) {
        bjtime=bjt;//To change body of generated methods, choose Tools | Templates.
    }
    public String getbatime(){
        return batime;
    }
    public void setbatime(String bat) {
        batime=bat;//To change body of generated methods, choose Tools | Templates.
    }
    public String getbfare(){
        return bfare;
    }
    public void setbfare(String bf) {
        bfare=bf;//To change body of generated methods, choose Tools | Templates.
    }
    public String getbtdis(){
        return btdis;
    }
    public void setbtdis(String btd) {
        btdis=btd;//To change body of generated methods, choose Tools | Templates.
    }
    public String getbcf(){
        return bcf;
    }
    public void setbcf(String cf) {
        bcf=cf;//To change body of generated methods, choose Tools | Templates.
    }
      public Date getbarrdate() {
        return barrdate;
    }

    public void setbarrdate(Date barrd) {
        barrdate=barrd;
    }
  
}
