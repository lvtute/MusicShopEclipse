
<%@page import="model.UserAdmin"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.UserGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Bill"%>
<%@page import="get.BillGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hóa đơn</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
        
        <%        
           BillGet billGet = new BillGet();
           ArrayList<Bill> listBill = billGet.getListBill();
           UserGet userGet = new UserGet();
           DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý hóa đơn</h3>

                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">Mã hóa đơn</th>
                            <th class="data">Khách hàng</th>
                            <th class="data">Tổng hóa đơn</th>
                            <th class="data">Thanh toán</th>
                            <th class="data">Địa chỉ giao hàng</th>
                            <th class="data">Ngày mua</th>
                            <th class="data" width="75px">Tùy chọn</th>
                        </tr>
                        
                        <%for(Bill bill : listBill){%>
                        <tr class="data">
                            <td class="data" width="30px"><%=bill.getBillID()%></td>
                            <td class="data"><%=userGet.getUser(bill.getUserID()).getUserName()%></td>
                            <td class="data"><%=formatter.format(bill.getTotal())%></td>
                            <td class="data"><%=bill.getPayment()%></td>
                            <td class="data"><%=bill.getAddress()%></td>
                            <td class="data"><%=bill.getDate()%></td>
                            <td class="data" width="75px">
                                <center>
                                    <a href="#">Xác nhận </a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                    <a href="#">Hủy</a>
                                </center>
                            </td>
                        </tr>
                        <%}%>

                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>