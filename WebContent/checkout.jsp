

<%@page import="java.text.DecimalFormat"%>
<%@page import="get.ProductGet"%>
<%@page import="model.Product"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>demo ACOUSTIC SHOP - GIỎ HÀNG</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
    </head>
    
    <body>
        <%
            
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <jsp:include page="header.jsp"></jsp:include>

        <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Thanh toán</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Trang Chủ</a><label>/</label>Thanh Toán</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        		<div class="check-out">	 
		<div class="container">	 
	 
					
                           
 <table class="table animated wow fadeInLeft" data-wow-delay=".5s">
		  <tr>
                      <th class="t-head">Hình ảnh</th>
			<th class="t-head ">Mặt Hàng</th>
			<th class="t-head">Giá</th>
			<th class="t-head">Số Lượng</th>
                        <th class="t-head"></th>
		
		  </tr>

                  <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
		  <tr class="cross1">
			<td class="t-data">
				<a href="single.jsp?productID=<%=list.getValue().getProduct().getProductID()%>" class="at-in">
                                  <img src="<%=list.getValue().getProduct().getProductImage()%>" class="fashion-grid" alt=""> 
                                 
				</a>
                            </td>
                        <td class="t-data">
			
				<h3><%=list.getValue().getProduct().getProductName()%></h3>
			 </td>
			<td class="t-data"><%=formatter.format(list.getValue().getProduct().getProductPrice())%> VNĐ</td>
			<td class="t-data"><div class="quantity"> 
								<div class="quantity-select">            
									<div class="entry value-minus">&nbsp;</div>
										<div class="entry value"><span class="span-1"><%=list.getValue().getQuantity()%></span></div>									
										
									<div class="entry value-plus active">&nbsp;</div>
								</div>
                                                                                
								</div>
                        	 		
			
			</td>
                        
                        <td class="t-data"><a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"><img src="images/circle.png" class="img-responsive " alt=""></a></td>
			
		  </tr>
		  <% } %>
		 
	</table>
				<div class=" cart-total">
			
			 <h5 class="continue" >Tổng Cộng Giỏ Hàng</h5>
			 <div class="price-details">
				 <h3>Chi Tiết Giá</h3>
				 <span>Tổng Cộng</span>
				 <span class="total1"></span>
				 <span>Giảm giá</span>
				 <span class="total1">---</span>
				 <span>Phí vận chuyển</span>
				 <span class="total1"></span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>Tổng Cộng</h4></li>	
			   <li class="last_price"><span><%=formatter.format(cart.totalCart())%> VNĐ</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 <a href="checkoutstep.jsp">Thanh Toán</a>
			 
			</div>
			
		
		 </div>
		 </div>
		 				<!--quantity-->
			<script>
			$('.value-plus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
				divUpd.text(newVal);
			});

			$('.value-minus').on('click', function(){
				var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
				if(newVal>=1) divUpd.text(newVal);
			});
			</script>
			<!--quantity-->
                        
                        <div class="social animated wow fadeInUp" data-wow-delay=".1s">
	<div class="container">
		<div class="col-sm-3 social-ic">
			<a href="#">FACEBOOK</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">TWITTER</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">GOOGLE+</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="#">PINTEREST</a>
		</div>
	<div class="clearfix"></div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
