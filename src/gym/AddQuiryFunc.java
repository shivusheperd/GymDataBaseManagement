/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Shivu
 */
class AddQueryFunc {
   
    
     
   void addToQueryDetails(String name,String email,String phone){
       Connection conn = new DBConnection().connect();
        try {
        PreparedStatement ps;
        ps = conn.prepareStatement("insert into "
                + "enquiry"+"(name,phone,email,date) "
                + "values(?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, phone);
        ps.setString(3, email);
        java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
        ps.setTimestamp(4, date);
        ps.executeUpdate();
     JOptionPane.showMessageDialog(null, name+"'s information succefully entered to the database");    
    } catch (SQLException ex) {
        JOptionPane.showMessageDialog(null, "error: "+ex);
    }
   }
    
}
