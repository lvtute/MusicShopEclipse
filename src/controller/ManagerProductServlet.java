/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.CategoryGet;
import get.ProductGet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

public class ManagerProductServlet extends HttpServlet {

    ProductGet productGet = new ProductGet();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_id = request.getParameter("product_id"); 
        String tenSanPham = request.getParameter("tenSanPham");
        String maloai = request.getParameter("maloai");
        String daidien = request.getParameter("daidien");
        String mattruoc = request.getParameter("mattruoc");
        String matsau = request.getParameter("matsau");
        String gia = request.getParameter("gia");
        String mota = request.getParameter("mota");

        String url = "";
        try {
            switch (command) {

                case "delete":
                    productGet.deleteProduct(Long.parseLong(product_id));
                    url = "/admin/manager_product.jsp";
                    break;
                    
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        
        String tenSanPham = request.getParameter("tenSanPham");
       
        

        String url = "", error = "";
        if (tenSanPham.equals("")) {
            error = "Vui lòng nhập tên sản phẩm!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
        long maloai = Long.parseLong(request.getParameter("maloai"));
        long mathuonghieu = Long.parseLong(request.getParameter("mathuonghieu"));
        String daidien = request.getParameter("daidien");
        String mattruoc = request.getParameter("mattruoc");
        String matsau = request.getParameter("matsau");
        long gia = Long.parseLong(request.getParameter("gia"));
        String mota = request.getParameter("mota");
                        productGet.insertProduct(new Product(new Date().getTime(), maloai,tenSanPham, mathuonghieu, 
                                daidien, mattruoc, matsau, gia, mota));
                        url = "/admin/manager_product.jsp";
                        break;
                    case "update":
        long maSanPham = Long.parseLong(request.getParameter("maSanPham"));
        long mathuonghieux = Long.parseLong(request.getParameter("mathuonghieu"));
        long maloaix = Long.parseLong(request.getParameter("maloai"));
        String daidienx = request.getParameter("daidien");
        String mattruocx = request.getParameter("mattruoc");
        String matsaux = request.getParameter("matsau");
        long giax = Long.parseLong(request.getParameter("gia"));
        String motax = request.getParameter("mota");
                        productGet.updateProduct(new Product(maSanPham, maloaix,tenSanPham, mathuonghieux,
                                daidienx, mattruocx, matsaux, giax, motax));
                        url = "/admin/manager_product.jsp";
                        break;
                    
                    
                }
            } else {
                url = "/admin/insert_product.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

    
}
