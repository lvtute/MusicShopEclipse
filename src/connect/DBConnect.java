/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    
     public static Connection getConnecttion()
     {
        Connection cons = null;
        String hostName = "localhost";
	    String dbName = "musicshop";
	    String userName = "root";
	    String password = "1234";
	    String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName + "?autoReconnect=true&useSSL=false";
        try {
            hasDriver();
            cons = DriverManager.getConnection(connectionURL, userName, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;
    }
 
    public static void main(String[] args) {
        System.out.println(getConnecttion());
    }
    protected static void hasDriver() throws SQLException
	{
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
		 } catch (ClassNotFoundException ex) {
			 throw new SQLException ("Invalid Driver!!Please check this driver....");
		 }
	}
    
}
