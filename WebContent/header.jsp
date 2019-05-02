

<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>
        
        <% 
            
        CategoryGet categoryget = new CategoryGet();
        BrandGet brandget = new BrandGet();
        User user = null;
        if(session.getAttribute("user") != null){
            user = (User) session.getAttribute("user");
        }
        
        Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            %>
        	<div class="header">
			<div class="header-grid">
					<div class="container">
				<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
					<ul>
					<li><i class="glyphicon glyphicon-headphones"></i><a href="#">Hỗ trợ 24/7</a></li>
						<li><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:contact@demoguitarshop.com">@demoguitarshop.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>+8493 552 6224</li>
						
					</ul>
				</div>
				<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
				<div class="header-right1 ">
					<ul>
                                            <%if(user!=null){ %>
		
						<li><i class="glyphicon glyphicon-user" ></i><a href="navigate.jsp">Chào <%=user.getUserName()%></a></li>
						<% } %>
                                                <%if(user==null){ %>
		
						<li><i class="glyphicon glyphicon-log-in" ></i><a href="navigate.jsp">My Account</a></li>
						<% } %>
                                                
					</ul>
				</div>
				<div class="header-right2">
                                    
					<div class="cart box_1">
                                           
                                            
						<a href="checkout.jsp">
							<h3> <div class="total">
                                                                
                                                                <span class="last_price" ><%=formatter.format(cart.totalCart())%></span> VNĐ <span> (Xem giỏ hàng)</span></div>
								 <img src="images/cart.png" alt="" />
							</h3>
						</a>
                                                                      
						
                                                <a href="javascript:;" class="simpleCart_empty">Làm trống giỏ</a>
						<div class="clearfix"> </div>
					</div>	
                                       
				</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="container">
			<div class="logo-nav">
				
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						 <div class="navbar-brand logo-nav-left ">
							<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="index.jsp">demo<span> ACOUSTIC SHOP</span></a></h1>
						</div>

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp" class="act">Trang Chủ</a></li>	
							<!-- Mega Menu -->
<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Nhạc Cụ <b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h4>demo MUSIC SHOP</h4>
												
                                                                                                <%
                                                                                                    for (Category c : categoryget.getListCategory()) {
                                                                                                    %>
												<li><a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>
				
										
                                                                                                <%
                                                                                                    }
                                                                                                 %>


											</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="guitar.jsp"><img src="images/me.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="piano.jsp"><img src="images/me1.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
						<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Thương Hiệu <b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h4>THƯƠNG HIỆU</h4>
												
                                                                                                <%
                                                                                                    for (Brand b : brandget.getListBrand()) {
                                                                                                    %>
												<li><a href="productbrand.jsp?brand=<%=b.getBrandID()%>"><%=b.getBrandName()%></a></li>
				
										
                                                                                                <%
                                                                                                    }
                                                                                                 %>


											</ul>
										</div>
										
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="productbrand.jsp?brand=1"><img src="images/taylor.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="productbrand.jsp?brand=8"><img src="images/kawai.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>	
						
							<li><a href="navigate.jsp">Tài Khoản</a></li>
							<li><a href="contact.jsp">Liên Hệ</a></li>
						</ul>
					</div>
					</nav>
				</div>
				
		</div>
	</div>
    </body>
</html>
