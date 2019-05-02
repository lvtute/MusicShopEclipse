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
import model.Category;
import model.Product;

public class ProductGet {
    
   public ArrayList<Product> getListProductByNav(long categoryID, int firstResult, int maxResult) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + categoryID + "' limit ?,?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    public int countProductByCategory(long categoryID) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT count(product_id) FROM product WHERE category_id = '" + categoryID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;  
    }
public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            
            Product product = new Product();
           
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
public ArrayList<Product> getList3ProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "' LIMIT 3;";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            
            Product product = new Product();
           
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

public ArrayList<Product> getListProductByBrand(long brand_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE brand_id = '" + brand_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            
            Product product = new Product();
           
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
public ArrayList<Product> getListProductRelated(long category_id, long product_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "' and product_id != '" + product_id + "'" ;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            
            Product product = new Product();
           
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

public ArrayList<Product> getListProduct() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
           
            product.setProductID(rs.getLong("product_id"));
            product.setCategoryID(rs.getLong("category_id"));
            product.setProductName(rs.getString("product_name"));
            product.setBrandID(rs.getLong("brand_id"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductImageForward(rs.getString("product_image_forward"));
            product.setProductImageBack(rs.getString("product_image_back"));
            product.setProductPrice(rs.getLong("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }


//Hiển thị chi tiết sản phẩm


public Product getProduct(long productID) throws SQLException {
     Connection connection = DBConnect.getConnecttion();
     String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
     PreparedStatement ps = connection.prepareCall(sql);
     ResultSet rs = ps.executeQuery();
     Product product = new Product();
     while (rs.next()) {
          product.setProductID(rs.getLong("product_id"));
          product.setCategoryID(rs.getLong("category_id"));
          product.setProductName(rs.getString("product_name"));
          product.setBrandID(rs.getLong("brand_id"));
          product.setProductImage(rs.getString("product_image"));
          product.setProductImageForward(rs.getString("product_image_forward"));
          product.setProductImageBack(rs.getString("product_image_back"));
          product.setProductPrice(rs.getLong("product_price"));
          product.setProductDescription(rs.getString("product_description"));
     }
     return product;
}

public boolean insert(Product c) throws SQLException {
    try {
         Connection connection = DBConnect.getConnecttion();
         String sql = "INSERT INTO product VALUE(?,?,?,?,?,?,?,?,?)";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getProductID());
         ps.setLong(2, c.getCategoryID());
         ps.setString(3, c.getProductName());
         ps.setLong(4, c.getBrandID());
         ps.setString(5, c.getProductImage());
         ps.setString(6, c.getProductImageForward());
         ps.setString(7, c.getProductImageBack());
         ps.setLong(8, c.getProductPrice());
         ps.setString(9, c.getProductDescription());
         int temp = ps.executeUpdate();
         return temp == 1;
    } catch (Exception e) {
         return false;
    }
}

public boolean update(Product c) throws SQLException {
    try {
         Connection connection = DBConnect.getConnecttion();
         String sql = "UPDATE product SET product_name = ? WHERE product_id = ?";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getProductID());
         ps.setLong(2, c.getCategoryID());
         ps.setString(3, c.getProductName());
         ps.setLong(4, c.getBrandID());
         ps.setString(5, c.getProductImage());
         ps.setString(6, c.getProductImageForward());
         ps.setString(7, c.getProductImageBack());
         ps.setLong(8, c.getProductPrice());
         ps.setString(9, c.getProductDescription());
         int temp = ps.executeUpdate();
         return temp == 1;
    } catch (Exception e) {
         return false;
    }
}

public boolean delete(long product_id) throws SQLException {
    try {
        Connection connection = DBConnect.getConnecttion();
        String sql = "DELETE FROM product WHERE product_id = ?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, product_id);
        int temp = ps.executeUpdate();
            return temp == 1;
    } catch (Exception e) {
        return false;
    }
}
 public boolean insertProduct(Product c) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO product VALUES(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getProductID());
         ps.setLong(2, c.getCategoryID());
         ps.setString(3, c.getProductName());
         ps.setLong(4, c.getBrandID());
         ps.setString(5, c.getProductImage());
         ps.setString(6, c.getProductImageForward());
         ps.setString(7, c.getProductImageBack());
         ps.setLong(8, c.getProductPrice());
         ps.setString(9, c.getProductDescription());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    // cập nhật dữ liệu
    public boolean updateProduct(Product c) {
        
        Connection connection = DBConnect.getConnecttion();
       // String sql = "UPDATE product SET product_id = ?, category_id = ?, product_name = ?, product_image = ?, product_image_forward = ?, product_image_back = ?, product_price = ?, product_description = ? WHERE product_id = ?";
        String sql = "UPDATE product SET product_id=?, category_id=?, product_name=?, brand_id=?, product_image=?, product_image_forward=?, product_image_back=?, product_price=?, product_description = ? WHERE product_id = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
         ps.setLong(1, c.getProductID());
         ps.setLong(2, c.getCategoryID());
         ps.setString(3, c.getProductName());
         ps.setLong(4, c.getBrandID());
         ps.setString(5, c.getProductImage());
         ps.setString(6, c.getProductImageForward());
         ps.setString(7, c.getProductImageBack());
         ps.setLong(8, c.getProductPrice());
         ps.setString(9, c.getProductDescription());
         ps.setLong(10, c.getProductID());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    // xóa dữ liệu
    public boolean deleteProduct(long product_id) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "DELETE FROM product WHERE product_id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, product_id);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }


    public static void main(String[] args)throws SQLException {
      ProductGet get = new ProductGet();
   //     for(Product p : get.getListProductByCategory(2)){
   //     System.out.println(p.getProductID() + " - "+p.getProductName());} 
   
        System.out.println(get.getProduct(1).getProductName());
    }
}
