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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bill;


public class BillGet {

    public void insertBill(Bill bill) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO bill VALUES(?,?,?,?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bill.getBillID());
        ps.setLong(2, bill.getUserID());
        ps.setLong(3, bill.getTotal());
        ps.setString(4, bill.getPayment());
        ps.setString(5, bill.getAddress());
        ps.setTimestamp(6, bill.getDate());
        ps.setString(7, bill.getName());
        ps.setString(8, bill.getPhone());
        ps.executeUpdate();
    }
    
    
     public ArrayList<Bill> getListBill() {
        try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "SELECT * FROM bill";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Bill> list = new ArrayList<>();
            while (rs.next()) {
                Bill bill = new Bill();
                bill.setBillID(rs.getLong("bill_id"));
                bill.setUserID(rs.getLong("user_id"));
                bill.setTotal(rs.getLong("total"));
                bill.setPayment(rs.getString("payment"));
                bill.setAddress(rs.getString("address"));
                bill.setDate(rs.getTimestamp("date"));
                list.add(bill);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(BillGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
     public ArrayList<Bill> getListBillByUser(long user_id) {
        try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "SELECT * FROM bill WHERE user_id = '" + user_id + "'";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Bill> list = new ArrayList<>();
            while (rs.next()) {
                Bill bill = new Bill();
                bill.setBillID(rs.getLong("bill_id"));
                bill.setUserID(rs.getLong("user_id"));
                bill.setTotal(rs.getLong("total"));
                bill.setPayment(rs.getString("payment"));
                bill.setAddress(rs.getString("address"));
                bill.setDate(rs.getTimestamp("date"));
                list.add(bill);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(BillGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
      
    
    public static void main(String[] args) throws SQLException {
        
        new BillGet().insertBill(new Bill(0, 0, 0, "s", "s", new Timestamp(new Date().getTime()),"s", "s"));
    }

}
