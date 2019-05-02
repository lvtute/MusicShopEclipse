/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class User {
    private long userID;
    private String userName;
    private String userEmail;
    private String userPass;
    private boolean userRole;
    private String userPhone;

    public User() {
    }

    public User(long userID, String userName, String userEmail, String userPass, boolean userRole, String userPhone) {
        this.userID = userID;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPass = userPass;
        this.userRole = userRole;
        this.userPhone = userPhone;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public boolean isUserRole() {
        return userRole;
    }

    public void setUserRole(boolean userRole) {
        this.userRole = userRole;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    
    
    
}
