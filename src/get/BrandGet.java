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
import model.Brand;
import model.Category;

public class BrandGet {
    public ArrayList<Brand> getListBrand() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM brand";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Brand> list = new ArrayList<>();
        while (rs.next()) {
            Brand brand = new Brand();
            brand.setBrandID(rs.getLong("brand_id"));
            brand.setBrandName(rs.getString("brand_name"));
            list.add(brand);
        }
        return list;
    }
    
    public Brand getBrand(long brandID) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql =  "SELECT * FROM brand WHERE brand_id = '" + brandID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Brand brand = new Brand();
        while (rs.next()) {
            
            brand.setBrandID(rs.getLong("brand_id"));
            brand.setBrandName(rs.getString("brand_name"));
           
        }
        return brand;
    }
    

public boolean insert(Brand c) throws SQLException {
    try {
         Connection connection = DBConnect.getConnecttion();
         String sql = "INSERT INTO brand VALUE(?,?)";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getBrandID());
         ps.setString(2, c.getBrandName());
         int temp = ps.executeUpdate();
         return temp == 1;
    } catch (Exception e) {
         return false;
    }
}

public boolean update(Brand c) throws SQLException {
    try {
         Connection connection = DBConnect.getConnecttion();
         String sql = "UPDATE brand SET brand_name = ? WHERE brand_id = ?";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setString(1, c.getBrandName());
         ps.setLong(2, c.getBrandID());
         int temp = ps.executeUpdate();
         return temp == 1;
    } catch (Exception e) {
         return false;
    }
}

public boolean delete(long brand_id) throws SQLException {
    try {
        Connection connection = DBConnect.getConnecttion();
        String sql = "DELETE FROM brand WHERE brand_id = ?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, brand_id);
        int temp = ps.executeUpdate();
            return temp == 1;
    } catch (Exception e) {
        return false;
    }
}
 public boolean insertBrand(Brand c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO brand VALUES(?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, c.getBrandID());
            ps.setString(2, c.getBrandName());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(BrandGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    // cập nhật dữ liệu
    public boolean updateBrand(Brand c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "UPDATE brand SET brand_name = ? WHERE brand_id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, c.getBrandName());
            ps.setLong(2, c.getBrandID());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(BrandGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    // xóa dữ liệu
    public boolean deleteBrand(long brand_id) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "DELETE FROM brand WHERE brand_id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, brand_id);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(BrandGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }


    public static void main(String[] args)throws SQLException {
        BrandGet get = new BrandGet();
        for(Brand ds : get.getListBrand()){
        System.out.println(ds.getBrandID() + " - "+ds.getBrandName());
        }
    }
    
    
}

