package bean;






public class ViewHotel
    

{           int hoid;
            String honame;
            String hocity;
            String horating;
            String hostate;
            String horoomtyp;
            int roomprice;
public ViewHotel(){}
public ViewHotel(int hid,String hname,String hcity,String hrating,String hstate,String hroomtyp,int hroomprice){
           hoid=hid;
           honame=hname;
           hocity=hcity;
           horating=hrating;
           hostate=hstate;
           horoomtyp=hroomtyp;
           roomprice=hroomprice;
}

   public int gethoid() {
        return hoid;
    }

    public void sethoid(int hid) {
        hoid = hid;
    }
   public String gethoname() {
        return honame;
    }

    public void sethoname(String hname) {
        honame = hname;
    }
     public String gethocity() {
        return hocity;
    }

    public void sethocity(String hcity) {
        hocity= hcity;
    }
     public String gethorating() {
        return horating;
    }

    public void sethorating(String hrating) {
       horating = hrating;
    }
     public String gethostate() {
        return hostate;
    }

    public void sethostate(String hstate) {
        hostate = hstate;
    }
    
public String gethoroomtyp() {
        return horoomtyp;
    }
public void sethoroomtyp(String hroomtyp) {
        horoomtyp = hroomtyp;
    }

public int getroomprice() {
        return roomprice;
    }

    public void setroomprice(int hroomprice) {
        roomprice = hroomprice;

 }
}