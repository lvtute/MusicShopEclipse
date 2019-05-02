

<%@page import="model.UserAdmin"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Sản Phẩm</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
        <%
            
 
      
            CategoryGet categoryGet = new CategoryGet();
            BrandGet brandGet = new BrandGet();
            ProductGet productGet = new ProductGet();
DecimalFormat formatter = new DecimalFormat("###,###,###");
            long productID;
            ArrayList<Product> listProduct = productGet.getListProduct();
        %>
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">

                    <h3>QUẢN LÝ SẢN PHẨM</h3>
                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>



                    <a href="/MusicShop/admin/insert_product.jsp">Thêm sản phẩm</a>
                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã sản phẩm</th>
                            <th class="data">Mã loại</th>
                            <th class="data">Tên sản phẩm</th>
                            <th class="data">Thương hiệu</th>
                            <th class="data">Hình đại diện</th>
                            <th class="data">Hình mặt trước</th>
                            <th class="data">Hình mặt sau</th>
                            <th class="data">Giá</th>
                            <th class="data">Mô tả</th>

                            <th class="data" width="75px">Tùy chọn</th>
                        </tr>
                    <%
                        int count = 0;
                        for (Product product : listProduct) {
                            count++;

                    %>
                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%=product.getProductID()%></td>
                        <td class="data"><%=categoryGet.getCategory(product.getCategoryID()).getCategoryName()%></td>
                        <td class="data"><%=product.getProductName()%></td>
                        <td class="data"><%=brandGet.getBrand(product.getBrandID()).getBrandName()%></td>
                        <td class="data"><img class="hinhql" src="/MusicShop/<%=product.getProductImage()%>"/></td>
                        <td class="data"><%=product.getProductImageBack()%></td>
                        <td class="data"><%=product.getProductImageForward()%></td>
                        <td class="data"><%=formatter.format(product.getProductPrice())%></td>
                        <td class="data"><a href="${root}/admin/product_description.jsp?product_id=<%=product.getProductID()%>">Xem chi tiết</a></td>

                        <td class="data" width="90px">
                    <center>
                        <a href="${root}/admin/update_product.jsp?command=update&product_id=<%=product.getProductID()%>">Sửa</a>&nbsp;| &nbsp;
                        <a href="/MusicShop/ManagerProductServlet?command=delete&product_id=<%=product.getProductID()%>">Xóa</a>
                    </center>
                    </td>
                    </tr>
                    <% }%>
                </table>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>

    </body>
</html>
