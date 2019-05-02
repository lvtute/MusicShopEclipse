/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.ContactGet;
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
import model.Product;
import model.Review;

public class ContactServlet extends HttpServlet {
ContactGet contactGet = new ContactGet();
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        
        String name = request.getParameter("name");
        
        

        String url = "", error = "";
        if (name.equals("")) {
            error = "Vui lòng nhập tên sản phẩm!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        
        String web = request.getParameter("web");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        String title =  request.getParameter("title");
        
                        contactGet.insertContact(new Contact(new Date().getTime(), name, web, email, title, message, new Timestamp(new Date().getTime())));
                        url = "/thanksyourcontact.jsp";
                        break; 
                   
                }
            } else {
                url = "/contact.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
