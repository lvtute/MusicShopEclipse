/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package get;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;
import model.Review;

public class ReviewGet {
    public ArrayList<Review> getListReviewByProduct(long product_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM review WHERE product_id = '" + product_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Review> list = new ArrayList<>();
        while (rs.next()) {
            
            Review review = new Review();
           
           review.setReviewName(rs.getString("review_name"));
           review.setReviewStar(rs.getInt("review_star"));
           review.setReviewMessage(rs.getString("review_message"));
           list.add(review);
        }
        return list;
    }
    public Review getReview(long reviewID) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql =  "SELECT * FROM review WHERE review_id = '" + reviewID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Review review = new Review();
        while (rs.next()) {
            
            review.setReviewName(rs.getString("review_name"));
            review.setReviewStar(rs.getInt("review_star"));
            review.setReviewMessage(rs.getString("review_message"));
           
        }
        return review;
    }
    
public boolean insertReview(Review c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO review VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getReviewID());
         ps.setLong(2, c.getProductID());
         ps.setString(3, c.getReviewName());
         ps.setString(4, c.getReviewEmail());
         ps.setInt(5, c.getReviewStar());
         ps.setString(6, c.getReviewMessage());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ReviewGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

public boolean insert(Review c) throws SQLException {
    try {
         Connection connection = DBConnect.getConnecttion();
         String sql = "INSERT INTO review VALUE(?,?,?,?,?,?)";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getReviewID());
         ps.setLong(2, c.getProductID());
         ps.setString(3, c.getReviewName());
         ps.setString(4, c.getReviewEmail());
         ps.setInt(5, c.getReviewStar());
         ps.setString(6, c.getReviewMessage());
        
         int temp = ps.executeUpdate();
         return temp == 1;
    } catch (Exception e) {
         return false;
    }
}

  
}
