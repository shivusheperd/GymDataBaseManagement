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
public class fin {
    
     private String id,count,payment,date,added_by;
    public fin(String i,String c,String p,String da,String adb){
        id=i;
        date=da;
        added_by=adb;
        payment=p;
        count=c;
        
     }
    
    public String getid(){
    return id;
    }
     public String getcount(){
    return count;
    }
      public String getpayment(){
    return payment;
    }
       public String getdate(){
    return date;
    }
      public String getadded_by(){
    return added_by;
      }   
    
}
