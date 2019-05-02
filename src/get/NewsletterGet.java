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
import model.Newsletter;

public class NewsletterGet {
    
    public ArrayList<Newsletter> getListNewsletter() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM newsletter";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Newsletter> list = new ArrayList<>();
        while (rs.next()) {
            Newsletter newsletter = new Newsletter();
           newsletter.setNewsletterID(rs.getLong("newsletter_id"));
           newsletter.setNewsletterName(rs.getString("newsletter_email"));       
           newsletter.setDate(rs.getTimestamp("date"));
           list.add(newsletter);
        }
        return list;
    }
   
    
    public boolean insertNewsletter(Newsletter c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO newsletter VALUES(?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getNewsletterID());    
         ps.setString(2, c.getNewsletterName());
         ps.setTimestamp(3, c.getDate());
         
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(NewsletterGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    
}
