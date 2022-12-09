/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Date;

public class LoginBean 
{
    
    int userid;
    String uname;
    String ulname;
    String uemail;
    String uphone;
    String ugender;
    Date udob;
    String uage;
    String upwd;
    String uadd;
    String ucity;
    String ustate;
    int upinc;

public LoginBean(){}
    public LoginBean(int ui, String un, String uln, String ueml, String uphn, String ugen, Date udb, String uag, String upd, String uad, String uct, String ust, int upic) {
     userid=ui;
     uname=un;
     ulname=uln;
     uemail=ueml;
     uphone=uphn;
     ugender=ugen;
     udob=udb;
     uage=uag;
     upwd=upd;
     uadd=uad;
     ucity=uct;
     ustate=ust;
     upinc=upic;
    }
  
public int getuserid() {return userid;}
public void setuserid(int uid) {userid=uid;}  

public String getuname() {return uname;}
public void seuname(String un) {uname=un;}

public String getulname() {return ulname;}
public void seulname(String uln) {ulname=uln;}

public String getuemail() {return uemail;}
public void seuemail(String ueml) {uemail=ueml;}

public String getuphone() {return uphone;}
public void seuphone(String uphn) {uphone=uphn;}

public String getugender() {return ugender;}
public void seugender(String ugen) {ugender=ugen;}

public Date getudob() {return udob;}
public void seudob(Date udb) {udob=udb;}
  
 public String getuage() {return uage;}
public void seuage(String uag) {uage=uag;}

public String getupwd() {return upwd;}
public void seupwd(String upd) {upwd=upd;}

public String getuadd() {return uadd;}
public void seuadd(String uad) {uadd=uad;}

public String getucity() {return ucity;}
public void seucity(String uct) {ucity=uct;}

public String getusate() {return ustate;}
public void seustate(String ust) {ustate=ust;}

public int getupinc() {return upinc;}
public void seupinc(int upic) {upinc=upic;}



}  


    
