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


class paymentsFunc {
   

    public paymentsFunc() {
    }

    boolean addNewPayment(String IDp, String paymentp) {
        
        try {
            Connection conn = new DBConnection().connect();
            PreparedStatement ps;
            ps = conn.prepareStatement("insert into "
                    + "pay"+"(id,payment,date,added_by) "
                    + "values(?,?,?,?)");
            
            ps.setString(1, IDp);
            ps.setString(2, paymentp);            
            java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
            ps.setTimestamp(3, date);
            ps.setString(4, new LoginFunc().getLogName());
            JOptionPane.showMessageDialog(null, "Id number = "+IDp+"\npayment = "+paymentp+" information succefully entered to the database");            
            ps.executeUpdate();
            return true;
                 } 
        catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, "error at paymentsFunc Class : "+ex);
        }
        return false;
    }
    }
    

