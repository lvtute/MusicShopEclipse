/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

public class Review {
    private long reviewID;
    private long productID;
    private String reviewName;
    private String reviewEmail;
    private int reviewStar;
    private String reviewMessage;
    private Date reviewDate;
    
    public Review() {
        
    }

    public Review(long reviewID, long productID, String reviewName, String reviewEmail, int reviewStar, String reviewMessage) {
        this.reviewID = reviewID;
        this.productID = productID;
        this.reviewName = reviewName;
        this.reviewEmail = reviewEmail;
        this.reviewStar = reviewStar;
        this.reviewMessage = reviewMessage;
        
    }

    public long getReviewID() {
        return reviewID;
    }

    public void setReviewID(long reviewID) {
        this.reviewID = reviewID;
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public String getReviewName() {
        return reviewName;
    }

    public void setReviewName(String reviewName) {
        this.reviewName = reviewName;
    }

    public String getReviewEmail() {
        return reviewEmail;
    }

    public void setReviewEmail(String reviewEmail) {
        this.reviewEmail = reviewEmail;
    }

    public int getReviewStar() {
        return reviewStar;
    }

    public void setReviewStar(int reviewStar) {
        this.reviewStar = reviewStar;
    }

    public String getReviewMessage() {
        return reviewMessage;
    }

    public void setReviewMessage(String reviewMessage) {
        this.reviewMessage = reviewMessage;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

    
    
}
