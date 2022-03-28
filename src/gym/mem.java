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
public class mem {
     private String id,name,contact_number,address,registered_on,registered_by;
    public mem(String i,String na,String phon,String ad,String rgon,String rgby){
        name=na;
        contact_number=phon;
        address=ad;
        registered_on=rgon;
        registered_by=rgby;
        id=i;
     }
    
    public String getname(){
    return name;
    }
     public String getcontact_number(){
    return contact_number;
    }
      public String getregistered_by(){
    return registered_by;
    }
       public String getregistered_on(){
    return registered_on;
    }
      public String getid(){
    return id;
    }   
        public String getaddress(){
    return address;
    } 
        
}
