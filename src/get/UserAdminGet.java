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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.UserAdmin;

public class UserAdminGet {
    public boolean insertUserAdmin(UserAdmin u) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO users VALUES(?,?,?,?)";
        try{
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, u.getUseradminID());
            ps.setString(2, u.getUseradminEmail());
            ps.setString(3, u.getUseradminPass());
            ps.setBoolean(4, u.isUseradminRole());
            ps.executeUpdate();
            return true;
        }catch(SQLException ex){
            Logger.getLogger(UserGet.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    } 
    
     public UserAdmin login(String email, String password) {
        Connection con = DBConnect.getConnecttion();
        String sql = "select * from useradmin where user_ad_email='" + email + "' and user_ad_pass='" + password + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                UserAdmin ad = new UserAdmin();
                ad.setUseradminID(rs.getLong("user_ad_id"));
                ad.setUseradminEmail(rs.getString("user_ad_email"));
                ad.setUseradminPass(rs.getString("user_ad_pass"));
                ad.setUseradminRole(rs.getBoolean("user_ad_role"));
                con.close();
                return ad;
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
}
