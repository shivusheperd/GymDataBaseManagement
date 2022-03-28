/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym;

/**
 *
 * @author Shivu
 */
class enq {
    private String name,phone,email,date;
    public enq(String na,String pn,String em,String dat){
        name=na;
        phone=pn;
        email=em;
        date=dat;
     }
    
    public String getname(){
    return name;
    }
     public String getphone(){
    return phone;
    }
      public String getemail(){
    return email;
    }
       public String getdate(){
    return date;
    }
}
