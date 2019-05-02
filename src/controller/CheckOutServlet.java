/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.BillDetailGet;
import get.BillGet;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bill;
import model.BillDetail;
import model.Cart;
import model.Item;
import model.User;

public class CheckOutServlet extends HttpServlet {

    private final BillGet billGet = new BillGet();
    private final BillDetailGet billDetailGet = new BillDetailGet();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String payment = request.getParameter("payment");
        String address = request.getParameter("address");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User users = (User) session.getAttribute("user");
        String name = request.getParameter("name");
        String ohone = request.getParameter("phone");
        try {
            long ID = new Date().getTime();
            Bill bill = new Bill();
            bill.setBillID(ID);
            bill.setAddress(address);
            bill.setPayment(payment);
            bill.setUserID(users.getUserID());
            bill.setDate(new Timestamp(new Date().getTime()));
            bill.setTotal(cart.totalCart());
            bill.setName(name);
            bill.setPhone(ohone);
            billGet.insertBill(bill);
            for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
                billDetailGet.insertBillDetail(new BillDetail(new Date().getTime(), ID,
                        list.getValue().getProduct().getProductID(),
                        list.getValue().getProduct().getProductPrice(),
                        list.getValue().getQuantity()));
            }
            cart = new Cart();
            session.setAttribute("cart", cart);
        } catch (Exception e) {
        }
        response.sendRedirect("/MusicShop/thankyou.jsp");
    }

}