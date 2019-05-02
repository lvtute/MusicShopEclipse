

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>banner</title>
    </head>
    <body>
        <% 
       ProductGet productGet = new ProductGet();     
    String category_id_1 = "1";
    String category_id_2 = "2";
    if(request.getParameter("category")!=null){
    category_id_1 = request.getParameter("category");
    category_id_2 = request.getParameter("category");
    }
    DecimalFormat formatter = new DecimalFormat("###,###,###");
            %>
            
        	<div class="banner">
	
	
	<div class="banner-right">
            
					<ul id="flexiselDemo2">
                                           <%
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_1))) {
                                %>
						<li><div class="banner-grid">
						<h2>Sản Phẩm Mới Nhất</h2>
						<div class="wome">
								<a href="single.jsp?productID=<%=p.getProductID()%>" ><img class="img-responsive" src="<%=p.getProductImageForward()%>" alt="" />
								</a>
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="images/ll.png" alt=""></a>
									<h6 ><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p class="ba-price"><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>							
								</div>							
							</div></li>
						
						<% } %>
                                                       
						
						
					
					</ul>
                                                               
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 5000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 1
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 1
		    		}
		    	}
		    });
		    
		});
	</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>

					</div>

				  
				</div>
                                                              

	</div>
    </body>
</html>
