/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.BrandGet;
import get.CategoryGet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Brand;
import model.Category;

public class ManagerBrandServlet extends HttpServlet {

    BrandGet brandDAO = new BrandGet();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String brand_id = request.getParameter("brand_id");

        String url = "";
        try {
            switch (command) {

                case "delete":
                    brandDAO.deleteBrand(Long.parseLong(brand_id));
                    url = "/admin/manager_brand.jsp";
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
        String tenThuongHieu = request.getParameter("tenThuongHieu");
        

        String url = "", error = "";
        if (tenThuongHieu.equals("")) {
            error = "Vui lòng nhập tên thương hiệu!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        brandDAO.insertBrand(new Brand(new Date().getTime(), tenThuongHieu));
                        url = "/admin/manager_brand.jsp";
                        break;
                    case "update":
                        long maThuongHieu = Long.parseLong(request.getParameter("maThuongHieu"));
                        brandDAO.updateBrand(new Brand(maThuongHieu, tenThuongHieu));
                        url = "/admin/manager_brand.jsp";
                        break;
                }
            } else {
                url = "/admin/insert_brand.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}