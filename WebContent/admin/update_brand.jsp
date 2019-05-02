

<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật thương hiệu</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
        
        <%
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
            Brand brand = new BrandGet().getBrand(Long.parseLong(request.getParameter("brand_id")));
           
            BrandGet brandGet = new BrandGet();
            
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Cập nhật danh mục</h3>
                    <form action="/MusicShop/ManagerBrandServlet" method="post">
                    <table width="95%">
                        <tr>
                            <td style="float: right"><b>Tên danh mục:</b></td>
                            <td><input type="text" class="sedang" name="tenThuongHieu" value="<%=brand.getBrandName()%>"><%=error%></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Mã danh mục:</b></td>
                            <td><input type="text" class="sedang" name="maThuongHieu" value="<%=brand.getBrandID()%>"><%=error%></td>
                        </tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="update">
                                <input type="hidden" name="brand_id" value="<%=request.getParameter("brand_id")%>">
                                <input type="submit" class="button" value="Lưu dữ liệu">
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>
