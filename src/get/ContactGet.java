/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package get;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Contact;
import model.Review;
import model.User;

public class ContactGet {
     public ArrayList<Contact> getListContact() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM contact";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Contact> list = new ArrayList<>();
        while (rs.next()) {
            Contact contact = new Contact();
           contact.setContactID(rs.getLong("contact_id"));
           contact.setContactName(rs.getString("contact_name"));
           contact.setContactWeb(rs.getString("contact_web"));
           contact.setContactEmail(rs.getString("contact_email"));
           contact.setContactTitle(rs.getString("contact_title"));
           contact.setContactMessage(rs.getString("contact_message"));
           contact.setDate(rs.getTimestamp("contact_date"));
           list.add(contact);
        }
        return list;
    }
   
    
public boolean insertContact(Contact c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO contact VALUES(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getContactID());    
         ps.setString(2, c.getContactName());
         ps.setString(3, c.getContactWeb());
         ps.setString(4, c.getContactEmail());
         ps.setString(5, c.getContactTitle());
         ps.setString(6, c.getContactMessage());
         ps.setTimestamp(7, c.getDate());
         
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ContactGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
