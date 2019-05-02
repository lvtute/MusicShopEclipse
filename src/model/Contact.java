/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;

public class Contact {
    private long contactID;
    private String contactName;
    private String contactWeb;
    private String contactEmail;
    private String contactTitle;
    private String contactMessage;
    private Timestamp date;
    
    public Contact(){
        
    }

    public Contact(long contactID, String contactName, String contactWeb, String contactEmail, String contactTitle, String contactMessage, Timestamp date) {
        this.contactID = contactID;
        this.contactName = contactName;
        this.contactWeb = contactWeb;
        this.contactEmail = contactEmail;
        this.contactTitle = contactTitle;
        this.contactMessage = contactMessage;
        this.date = date;
    }

    public long getContactID() {
        return contactID;
    }

    public void setContactID(long contactID) {
        this.contactID = contactID;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactWeb() {
        return contactWeb;
    }

    public void setContactWeb(String contactWeb) {
        this.contactWeb = contactWeb;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactTitle() {
        return contactTitle;
    }

    public void setContactTitle(String contactTitle) {
        this.contactTitle = contactTitle;
    }

    public String getContactMessage() {
        return contactMessage;
    }

    public void setContactMessage(String contactMessage) {
        this.contactMessage = contactMessage;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

   
    
}
