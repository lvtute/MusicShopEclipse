

<%@page import="model.UserAdmin"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xem Chi Tiết Sản Phẩm</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        <%
            
           
       
            ProductGet productGet = new ProductGet();
            Product product = new Product();
            String productID = "";
            if (request.getParameter("product_id") != null) {
          productID = request.getParameter("product_id");
          product = productGet.getProduct(Long.parseLong(productID));
     }
        %>
        
                <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Mô Tả Chi Tiết</h3>
                    <form action="/MusicShop/ManagerProductServlet" method="post">
                    <table width="95%">                  
                         <tr><td width="125px"><b>Tên sản phẩm</b></td>
                             <td><input type="text" class="sedang" name="tenSanPham" value="<%=product.getProductName()%>"></td>
                    </tr>                                
                            </td></tr>                   
            <tr><textarea><%=product.getProductDescription()%>"></textarea></tr>
            <a href="manager_product.jsp">Quay Lại Trang Quản Lý Sản Phẩm</a>
                    </table>
                    </form>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>
    </body>
</html>
