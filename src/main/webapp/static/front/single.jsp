<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>single</title>
<!-- Custom Theme files -->
<%@ include file="include/head.jsp"%>
<!-- cart -->
<script src="${pageContext.request.contextPath}/static/front/js/imagezoom.js"></script>
<!-- FlexSlider -->
<script defer src="${pageContext.request.contextPath}/static/front/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/front/css/flexslider.css" type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav: "thumbnails"
	  });
	});
</script>
<!--//FlexSlider -->
</head>
<body>
	<!--header-->
	<%@ include file="include/header.jsp"%>
	<!--//header-->
	<!--//single-page-->
	<div class="single-product" style="position: relative;left: 200px">
		<div class="container">
			<div class="single-grids">				
				<div class="col-md-4 single-grid">		
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="${pageContext.request.contextPath}/static/front/images/s1.png">
								<div class="thumb-image"> <img src="${pageContext.request.contextPath}/static/front/images/s1.png" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${pageContext.request.contextPath}/static/front/images/s2.png">
								 <div class="thumb-image"> <img src="${pageContext.request.contextPath}/static/front/images/s2.png" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${pageContext.request.contextPath}/static/front/images/s3.png">
							   <div class="thumb-image"> <img src="${pageContext.request.contextPath}/static/front/images/s3.png" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
					</div>
				</div>	
				<div class="col-md-4 single-grid simpleCart_shelfItem">
					<input type="hidden" value="${product.productId}" name="productId">
					<h3>${product.productName}</h3>
					<p>${product.productDisc}</p>
					<ul class="size">
						<h3>颜色</h3>
						<c:forEach items="${kindVo.colors}" var="color">
							<li>
								<label>
									<input type="radio" name="color" onclick="changePrice()" value="${color}"/>${color}
								</label>
							</li>
						</c:forEach>
					</ul>
					<ul class="size">
						<h3>蛋糕的层数</h3>
						<c:forEach items="${kindVo.steps}" var="step">
							<li>
								<label>
									<input type="radio" name="step" onclick="changePrice()" value="${step}"/>${step}
								</label>
							</li>
						</c:forEach>
					</ul>
					<ul class="size">
						<h3>重量</h3>
						<c:forEach items="${kindVo.weights}" var="weight">
							<li>
								<label>
									<input type="radio" name="weight" onclick="changePrice()" value="${weight}"/>${weight}
								</label>
							</li>
						</c:forEach>
					</ul>
					<p class="qty"> 数量 :  </p><input min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small">
					<div class="galry">
						<div class="prices">
							<h5 class="item_price" id="pinfoPrice">${product.productAvg}</h5>
						</div>
						<div class="rating">
							<span>☆</span>
							<span>☆</span>
							<span>☆</span>
							<span>☆</span>
							<span>☆</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div style="text-align: right">
						<a href="#" class="add-cart item_add">ADD TO CART</a>	
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- collapse -->
	<div class="collpse tabs">
		<div class="container">
			<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  Description
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							   additional information
							</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								reviews (5)
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								help
							</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--//collapse -->
	<!--related-products-->
	<div class="related-products">
		<div class="container">
			<h3>Related Products</h3>
			<div class="product-model-sec single-product-grids">
				<div class="product-grid single-product">
					<a href="${pageContext.request.contextPath}/front/product/single">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="${pageContext.request.contextPath}/static/front/images/m1.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>View</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$2000</span>
							<div class="ofr">
							  <p class="pric1"><del>$2300</del></p>
							  <p class="disc">[15% Off]</p>
							</div>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="product-grid single-product">
					<a href="${pageContext.request.contextPath}/front/product/single">
						<div class="more-product"><span> </span></div>
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="${pageContext.request.contextPath}/static/front/images/m1.png" class="img-responsive" alt="">
							<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">
									<button>View</button>
								</h4>
							</div>
						</div>
					</a>
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>
							<span class="item_price">$2000</span>
							<div class="ofr">
								<p class="pric1"><del>$2300</del></p>
								<p class="disc">[15% Off]</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--related-products-->
	<!--subscribe-->
	<div class="subscribe">
		<div class="container">
			<h3>问题反馈</h3>
			<form>
				<input type="text" class="text" value="描述" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '描述';}">
				<input type="submit" value="提交">
			</form>
		</div>
	</div>
	<!--footer-->
	<%@ include file="include/footer.jsp"%>
</body>
<script>
	function changePrice() {
		var data="productId="+$("input[name='productId']").val()+"&"+"pinfoColor="+$("input[name='color']:checked").val()+"&"+"pinfoWeight="+$("input[name='weight']:checked").val()+"&"+"pinfoStep="+$("input[name='step']:checked").val()+"";
        $.ajax({
			type: 'post',
			url: '${pageContext.request.contextPath}/front/product/queryPinfoPrice',
			data:data,
			success: function (pinfoPrice) {
				$("#pinfoPrice").text(pinfoPrice);
            },
			error: function () {
				alert("出错");
            }
		})
    }
</script>
</html>