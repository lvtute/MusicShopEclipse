/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.ContactGet;
import get.NewsletterGet;
import get.ReviewGet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Contact;
import model.Newsletter;
import model.Product;
import model.Review;

public class NewsletterServlet extends HttpServlet {
NewsletterGet newsletterGet = new NewsletterGet();
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        
        String name = request.getParameter("email");
        
        

        String url = "", error = "";
        if (name.equals("")) {
            error = "Vui lòng nhập tên sản phẩm!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":     
                        newsletterGet.insertNewsletter(new Newsletter(new Date().getTime(), name, new Timestamp(new Date().getTime())));
                        url = "/thanksyournewsletter.jsp";
                        break; 
                   
                }
            } else {
                url = "/newsletter.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
