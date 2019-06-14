/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.UserGet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.User;

import utils.BCrypt;
import utils.MyUtil;

@SuppressWarnings("serial")
public class UserServlet extends HttpServlet {

    UserGet userGet = new UserGet();
    Cart cart = new Cart();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");

    	StringBuilder error = new StringBuilder("");
        
        String url = "";
        User user = new User();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":

            	if(!request.getParameter("confirm_pass").equals(request.getParameter("pass"))) {
            		error.append("Mat khau xac nhan khong trung khop ");
            		request.setAttribute("error", error.toString());
            		
            		 url = "/MusicShop/register.jsp";
            	
            	}
            	
            
            	else {
            		user.setUserID(new java.util.Date().getTime());//id
                    user.setUserName(request.getParameter("name"));
                    user.setUserEmail(request.getParameter("email"));
                  
                  //generate and store the hashedText = plaintext + salt to database
                    String hashed = hashPassword(request);
                    user.setUserPass(hashed);
                  //
                    user.setUserRole(false);
                    user.setUserPhone(request.getParameter("phone"));
                    userGet.insertUser(user);
                    session.setAttribute("user", user);
                    url = "/MusicShop/navigate.jsp";
            	}
                
                break;
            case "update":
                long user_id = Long.parseLong(request.getParameter("user_id"));
                String username = request.getParameter("username");
                String useremail = request.getParameter("useremail");
              //generate and store the hashedText to database
                String hashed = hashPassword(request);
                user.setUserPass(hashed);
              //
                boolean role = Boolean.parseBoolean(request.getParameter("role"));
                String phone = request.getParameter("phone");
                userGet.updateUser(new User(user_id, username, useremail, hashed, role, phone));
                url = "/MusicShop/myaccount.jsp";
                break;
            case "logindeal":
            	//Check hashed password
            	try {
            		user = getHashedUser(request);
            	} catch (SQLException e) {
    				e.printStackTrace();
    			}
            	//
                if (user != null) {
                    session.setAttribute("user", user);
                    url = "/MusicShop/deal.jsp";
                }
                break;

            case "login":
            	//Check hashed password
            	try {
            		user = getHashedUser(request);
            	} catch (SQLException e) {
            		e.printStackTrace();
            	}
            	//
                if (user != null) {
                    session.setAttribute("user", user);
                    url = "/MusicShop/navigate.jsp";
                } else {
                    request.setAttribute("error", "error!");
                    url = "/MusicShop/login.jsp";
                }
                break;

        }
        response.sendRedirect(url);

    }
    private User getHashedUser(HttpServletRequest request) throws SQLException {
    	User user = new User();
    	String name = request.getParameter("name");
		String plaintext = request.getParameter("pass");
		String hashed1 = userGet.getUserByName(name).getUserPass();
		if (BCrypt.checkpw(plaintext, MyUtil.decodeValueFromHTML(hashed1)))
			user = userGet.login(name, hashed1);
		else 
			user = null;
    	return user;
    }
    
    private String hashPassword(HttpServletRequest request) {
    	String plaintext = request.getParameter(("pass"));
    	String hashed = BCrypt.hashpw(plaintext, BCrypt.gensalt(12));
    	return hashed;
    }
}
