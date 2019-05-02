/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.ReviewGet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import model.Review;

public class ReviewServlet extends HttpServlet {
ReviewGet reviewGet = new ReviewGet();
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        
        String name = request.getParameter("name");
        long product_id = Long.parseLong(request.getParameter("product_id"));
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        int rating =  Integer.parseInt(request.getParameter("rating"));
        
        
        

        String url = "", error = "";
        if (name.equals("")) {
            error = "Vui lòng nhập tên sản phẩm!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        reviewGet.insertReview(new Review(new Date().getTime(), product_id, name, email, rating, message));
                        url = "/thankyoureview.jsp?productID="+product_id+"";
                        break;                   
                }
            } else {
                url = "/review.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
