package bean;
import java.io.*;

public class ViewCar implements Serializable{
  
  String cmp;
  String typ; 
 
  int cfare; 
  int cid;
    public ViewCar(){}
    public ViewCar(String c, String t, int cf, int ci) {
      cmp=c;
      typ=t;
      cfare=cf;
      cid=ci;
    }

   public String getcmp() {
        return cmp;
    }

    public void setcmp(String c) {
       cmp = c;
    }
     public String gettyp() {
        return typ;
    }

    public void settyp(String t) {
       typ = t;
    }
 
     public int getcfare() {
        return cfare;
    }

    public void setcfare(int cf) {
        cfare = cf;
    }

 
   public int getcid() {
        return cid;
    }

    public void setcid(int ci) {
       cid = ci;
    }

 
}
