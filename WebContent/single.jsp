

<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="get.CategoryGet"%>
<%@page import="model.Category"%>
<%@page import="get.ReviewGet"%>
<%@page import="model.Review"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>demo ACOUSTIC SHOP - THÔNG TIN ĐƠN PHẨM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/easyzoom.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/starability-all.min.css">

<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<script src="js/formatmoney.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script src="js/jquery.priceformat.min.js"></script>

<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>


<meta property="fb:app_id" content="Your_App_ID"/>
<meta property="fb:admins" content="User_ID"/>
</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.3&appId=Your_App_ID";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>


<meta property="fb:app_id" content="396733747363745"/>
<meta property="fb:admins" content="100002505084014"/>
    </head>
    <div id="fb-root"></div>


    <body>
        
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=396733747363745";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<%
     ProductGet productGet = new ProductGet();
     BrandGet brandget = new BrandGet();
     Product product = new Product();
     String productID = "";
     if (request.getParameter("productID") != null) {
          productID = request.getParameter("productID");
          product = productGet.getProduct(Long.parseLong(productID));
     }
     ReviewGet reviewGet = new ReviewGet();
     long category_id = product.getCategoryID();
     Review review = new Review();
     CategoryGet categoryget = new CategoryGet();
     String category_id_1 = "1";
     DecimalFormat formatter = new DecimalFormat("###,###,###");
     %>

        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Đơn Phẩm</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Trang Chủ</a><label>/</label>Đơn Phẩm</h3>
		<div class="clearfix"> </div>
	</div>
</div>
        		<div class="product">
			<div class="container">
		<div class="col-md-3 product-bottom ">
			<!--categories-->
			<div class="categories animated wow fadeInUp animated" data-wow-delay=".5s" >
					<h3>Loại Sản Phẩm</h3>
                                        
					<ul class="cate">
                                            <%
                       for (Category c : categoryget.getListCategory()) {
                                              %>
						<li><i class="glyphicon glyphicon-menu-right" ></i><a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>	
					 <% } %>
                                        </ul>
                                       
				</div>
                                      
		<!--//menu-->
		<!--price-->
				<div class="price animated wow fadeInUp animated" data-wow-delay=".5s" >
					<h3>Khoảng Giá</h3>
					<div class="price-head">
					<div class="col-md-6 price-head1">
                                        <div class="price-top1">
                                            <span class="price-top">$</span>
                                            <input type="text"  value="0">
                                        </div>
                                    </div>
									<div class="col-md-6 price-head2">
                                        <div class="price-top1">
                                            <span class="price-top">$</span>
                                            <input type="text"  value="500">
                                        </div>
                                    </div>
									<div class="clearfix"></div>
                                    </div>
                                    </div>
			<!--//price-->
			<!--colors-->
			<div class="colors animated wow fadeInLeft animated" data-wow-delay=".5s" >
					<h3>Màu Sắc</h3>

                                        <div class="color-top">
                                            <ul>
												<li><a href="#"><i></i></a></li>
												<li><a href="#"><i class="color1"></i></a></li>
												<li><a href="#"><i class="color2"></i></a></li>
												<li><a href="#"><i class="color3"></i></a></li>
												<li><a href="#"><i class="color4"></i></a></li>
												<li><a href="#"><i class="color5"></i></a></li>
												<li><a href="#"><i class="color6"></i></a></li>
												<li><a href="#"><i class="color7"></i></a></li>
											</ul>
                                        </div>
                                    </div>
									
                                 
			<!--//colors-->
			<div class="sellers animated wow fadeInDown" data-wow-delay=".5s">
					
								<h3 class="best">Bán Chạy Nhất</h3>
					<div class="product-head">
                                            <%
                                for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_1))) {
                                %>
					<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.jsp?productID=<%=p.getProductID()%>"><img class="img-responsive " src="<%=p.getProductImageForward()%>" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
								<span class=" price-in1"><%=formatter.format(p.getProductPrice())%> VNĐ</span>
								<p><a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a></p>
							</div>
								
							<div class="clearfix"> </div>
							</div>
                                                                <% } %>
						
							
							</div>
				</div>
				<!---->
 	</div>
			<div class="col-md-9 animated wow fadeInRight" data-wow-delay=".5s">
				
                            <div class="col-md-5 grid-im">
                                
		<div class="flexslider">
			   <ul class="slides">
			    <li data-thumb="<%=product.getProductImage()%>">
			        <div class="thumb-image"> <img src="<%=product.getProductImage()%>" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
                            <li data-thumb="<%=product.getProductImageForward()%>">
			        <div class="thumb-image"> <img src="<%=product.getProductImageForward()%>" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
                            <li data-thumb="<%=product.getProductImageBack()%>">
			        <div class="thumb-image"> <img src="<%=product.getProductImageBack()%>" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			  </ul>
		</div>
	</div>	
                           
                            <div class="col-md-7 single-top-in">
						<div class="span_2_of_a1 simpleCart_shelfItem">
				<h3><%=product.getProductName()%></h3>
                      
			    <div class="price_single">
                                	<form>
                                    <fieldset class="starability-basic">
                                    
                                    <input type="radio" id="rate5" name="rating" value="5" checked="checked"/>
                                    <label for="rate5" title="Amazing">5 stars</label>
                                    <input type="radio" id="rate4" name="rating" value="4" />
                                    <label for="rate4" title="Very good">4 stars</label>
                                    <input type="radio" id="rate3" name="rating" value="3" />
                                    <label for="rate3" title="Average">3 stars</label>
                                     <input type="radio" id="rate2" name="rating" value="2" />
                                    <label for="rate2" title="Not good">2 stars</label>
                                    <input type="radio" id="rate1" name="rating" value="1" />
                                    <label for="rate1" title="Terrible">1 star</label>
                                    <h5>Nhấn vào <span><i class="glyphicon glyphicon-edit" ></i> Đánh Giá</span> để đánh giá sản phẩm</h5>
                                    </fieldset>
                                    </form>
                                <br>
                                <span class="reducedfrom item_price" ><%=formatter.format(product.getProductPrice())%> VNĐ</span>
				 <a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
				 <div class="clearfix"> </div>
				</div>

			   
			<div class="clearfix"> </div>
			</div>
		   <!----- tabs-box ---->
		<div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Mô Tả Sản Phẩm</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span><i class="glyphicon glyphicon-info-sign" ></i> Thông Tin Chi Tiết</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><i class="glyphicon glyphicon-edit" ></i> Đánh Giá</span></li>
							  <div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Mô Tả Sản Phẩm</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
									<div class="facts">
									  <p><%=product.getProductDescription()%></p>
										<ul>
                                                                                    <li><h4>ƯU ĐÃI KHÁCH HÀNG :</h4></li>
											<li>Sản phẩm chính hãng</li>
											<li>Khuyến mãi đặt biệt</li>
											<li>GIAO HÀNG MIỄN PHÍ VỚI HÓA ĐƠN TRÊN 2.000.000 Đ</li>
											<li>Vận chuyển nhanh</li>
											<li>Bảo hành sản phẩm trọn đời</li>
											<li>Hỗ trợ trực tuyến dành cho khách hàng VIP</li>
										</ul>         
							        </div>

							    	</div>
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts1">
					
						<div class="color"><p>Màu sắc</p>
							<span >Blue, Black, Red</span>
							<div class="clearfix"></div>
						</div>
						<div class="color">
							<p>Kích thước</p>
							<span >S, M, L, XL</span>
							<div class="clearfix"></div>
						</div>
					        
			 </div>

								</div>									
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									 <div class="comments-top-top">
				<%
                                for (Review r : reviewGet.getListReviewByProduct(Long.parseLong(productID))) {
                                %>
                                                                             <div class="top-comment-left">
					<img class="img-responsive" src="images/co.png" alt="">
				</div>
				<div class="top-comment-right">
					<h6><a href="#"><%=r.getReviewName()%></a> - Đánh giá sản phẩm : <%=r.getReviewStar()%>/5</h6>
									<p><%=r.getReviewMessage()%></p>
				</div>
                                <div class="clearfix"> </div>
                                <% } %>
				
				<a class="add-re" href="review.jsp?command=insert&product_id=<%=product.getProductID()%>"><i class="glyphicon glyphicon-comment" ></i> Viết Đánh Giá</a>
			</div>


							 </div>
					      </div>
					 </div>
					 <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>	
<!---->
					</div>
	
		
</div>
 <div class='fb-comments' data-num-posts='5' data-width='100%' expr:href='data:post.canonicalUrl'/></div>
<!----->
<div class="clearfix"> </div>
<div class="page-header">
        <h3>SẢN PHẨM LIÊN QUAN</h3>
      </div>
<div class=" col-md-si">
     <%
                                for (Product p : productGet.getListProductRelated(category_id, Long.parseLong(productID))) {
                                %>
						<div class="col-sm-5 item-grid simpleCart_shelfItem">
							
                                                   
                                                    <div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								
                                                                </div>
							</div>
                                                    
						</div>
				<% } %>
						
						<div class="clearfix"> </div>
		</div>
			</div class="clearfix"></div>
			</div>	
                        <div class="clearfix"> </div>
         
        
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
        <script src="js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

    </body>
</html>
