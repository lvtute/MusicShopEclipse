

<%@page import="get.ProductGet"%>
<%@page import="model.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GUITAR SHOP - demo ACOUSTIC SHOP</title>
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
        ProductGet productGet = new ProductGet();     
    String category_id_1 = "1";
    String category_id_2 = "2";
    String category_id_4 = "4";
    String category_id_3 = "3";
    String category_id_5 = "5";
    if(request.getParameter("category")!=null){
    category_id_1 = request.getParameter("category");
    category_id_2 = request.getParameter("category");
    category_id_4 = request.getParameter("category");
    category_id_3 = request.getParameter("category");
    }
    DecimalFormat formatter = new DecimalFormat("###,###,###");
            %>
        <jsp:include page="header.jsp"></jsp:include>
         <div class="banner-top">
	<div class="container">
		<h2 class="animated wow fadeInLeft" data-wow-delay=".5s">GUITAR SHOP</h2>
		<h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.jsp">Trang Chủ</a><label>/</label>Guitar Shop</h3>
		<div class="clearfix"> </div>
	</div>
</div>
         <div class="login">
		<div class="container">
                    <h4 align="justify"> Chúng tôi cung cấp đầy đủ và đa dạng các sản phẩm đàn guitar, từ đàn guitar acoustic đến dòng  guitar electric, guitar bass, guitar amplifier và phụ kiện. Các thương hiệu hàng đầu thế giới được phân phối như Taylor, Fender (những thương hiệu số một tại Mỹ), hay các thương hiệu nổi tiếng Châu Á như Greg Bennett (Hàn Quốc), Takamine và Suzuki (Japan),... với chất lượng và âm thanh cao cấp.
                        Với nhiều bạn trẻ ngày nay rất thích chơi đàn guitar nhất là các bạn sinh viên thì cây đàn guitar là một vật thân thiết. Sau đây là nhiều mẫu đàn guitar với giá cả khác nhau của các thương hiệu nổi tiếng.</h4>
         <div class="page-header">
        <h3>GUITAR ACOUSTIC</h3>
      </div>
        
         <div class=" animated wow fadeInRight" data-wow-delay=".1s">
                                            <% 
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_1))) {
                                %>
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						<%  } %>
					<div class="clearfix"></div>
					</div>
                </div>
                                        <div class="container">
                                        
                                        <div class="page-header">
        <h3>GUITAR BASS</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                                            <% 
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_2))) {
                                %>
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						<%  } %>
					<div class="clearfix"></div>
					</div>
                                        
                </div>
                                        <div class="container">
                                        
                                        <div class="page-header">
        <h3>GUITAR CLASSIC</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                                            <% 
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_3))) {
                                %>
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						<%  } %>
					<div class="clearfix"></div>
					</div>
                                        
                </div>
                                        <div class="container">
                                        
                                        <div class="page-header">
        <h3>GUITAR ELECTRIC</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                                            <% 
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_4))) {
                                %>
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						<%  } %>
					<div class="clearfix"></div>
					</div>
                                        <div class="container">
                                            <br>
                                            <h4 align="justify"> Đàn Ukelele một nhạc cụ đang được các bạn trẻ rất yêu thích vì hình dáng nhỏ gọn, và mang lại những âm thanh vui tươi. Việt Thương cung cấp cho khách hàng những sản phẩm Ukelele chất lượng cao đến từ các thương hiệu nổi tiếng hàng đầu thế giới với âm thanh hay như: Ukulele Fender, Greg Bennett, Deviser,...
Đàn ukulele phần lớn là dành cho các bé mới tập và dành cho những bạn đam mê cây đàn nhỏ xinh này. Nằm trong dòng họ của đàn guitar cho nên đàn ukulele có cấu tạo tương tự và âm thanh cũng đơn giản hơn đàn guitar. Chính vì thế mà đàn ukulele cũng có giá rẻ hơn nhiều so với guitar. </h4>
                                        <div class="page-header">
        <h3>UKULELE</h3>
      </div>
        
         <div class="animated wow fadeInRight" data-wow-delay=".1s">
                                            <% 
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_5))) {
                                %>
                                
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>"  alt="" width="132%" height="180" class="img-responsive">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						<%  } %>
					<div class="clearfix"></div>
					</div>
                                        
                </div>
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
