

<%@page import="model.UserAdmin"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>
        <%
        UserAdmin useradmin = null;
        if(session.getAttribute("useradmin") != null){
            useradmin = (UserAdmin) session.getAttribute("useradmin");
        }
        %>
        <div id="header">
            <div class="inHeader">
                <div class="mosAdmin">
                     <%if(useradmin!=null){ %>
                    Chào <%=useradmin.getUseradminEmail()%> <br>
                    <% } %>
                    <a href="">demo ACOUSTIC SHOP</a> | <a href="">Help</a> | <a href="/MusicShop/LogoutAdminServlet">Đăng Xuất</a>
                </div>
                <div class="clear"></div>
            </div>
        </div> 

    </body>
</html>
