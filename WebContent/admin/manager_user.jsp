

<%@page import="model.UserAdmin"%>
<%@page import="model.User"%>
<%@page import="get.UserGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Danh Mục</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
        <%

            UserGet userGet = new UserGet();
            ArrayList<User> listUser = userGet.getListUser();
            %>
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    
<h3>QUẢN LÝ DANH MỤC</h3>
                    <div class="informasi">
                        Hãy chỉnh sửa dữ liệu cẩn thận nhé ^^
                    </div>

                   
                    
                    
                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã danh mục</th>
                            <th class="data">Tên danh mục</th>
                            <th class="data">Email</th>
                            <th class="data">Phone</th>
                            
                            
                        </tr>
                        <% 
                          int count =0;
                          for(User user : listUser){
                              count++;
                          
                            %>
                        <tr class="data">
                            <td class="data" width="30px"><%=count%></td>
                            <td class="data"><%=user.getUserID()%></td>
                            <td class="data"><%=user.getUserName()%></td>
                            <td class="data"><%=user.getUserEmail()%></td>
                            <td class="data"><%=user.getUserPhone()%></td>
                            
                            
                        </tr>
                        <% } %>
                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>

    </body>
</html>
