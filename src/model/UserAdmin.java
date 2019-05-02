/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class UserAdmin {
    private long useradminID;
    private String useradminEmail;
    private String useradminPass;
    private boolean useradminRole;
    
    public UserAdmin() {
    }
    
    public UserAdmin(long useradminID, String useradminEmail, String useradminPass, boolean useradminRole) {
        this.useradminID = useradminID;
        this.useradminEmail = useradminEmail;
        this.useradminPass = useradminPass;
        this.useradminRole = useradminRole;
    }

    public long getUseradminID() {
        return useradminID;
    }

    public void setUseradminID(long useradminID) {
        this.useradminID = useradminID;
    }

    public String getUseradminEmail() {
        return useradminEmail;
    }

    public void setUseradminEmail(String useradminEmail) {
        this.useradminEmail = useradminEmail;
    }

    public String getUseradminPass() {
        return useradminPass;
    }

    public void setUseradminPass(String useradminPass) {
        this.useradminPass = useradminPass;
    }

    public boolean isUseradminRole() {
        return useradminRole;
    }

    public void setUseradminRole(boolean useradminRole) {
        this.useradminRole = useradminRole;
    }

    
    
}
