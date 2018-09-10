<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
<!-- Custom Theme files -->
<%@ include file="include/head.jsp"%>
<!-- cart -->
</head>
<body>
	<!--header-->
	<%@ include file="include/header.jsp"%>
	<!--//header-->
	<!--contact-->
	<div class="contact">
		<div class="container">
			<h2>联系我们</h2>
			<div class="map">
				<iframe src="https://map.baidu.com/"></iframe>
			</div>
			<div class="contact-infom">
				<h4>相关说明:</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sheets containing Lorem Ipsum passages, 
					sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.It was popularised in the 1960s with the release of Letraset
					and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			</div>
			<div class="address">
				<div class="col-md-4 address-grids">
					<h4>地址 :</h4>
					<ul>
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<p>	广东省<br>
							深圳市,<br>
							龙岗区 宝南路
						</p>
					</ul>
				</div>
				<div class="col-md-4 address-grids">
					<h4>联系方式 :</h4>
					<p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+2 800 544 6035</p>
					<p><span class="glyphicon glyphicon-print" aria-hidden="true"></span>+2 100 889 9466</p>
				</div>
				<div class="col-md-4 address-grids">
					<h4>Email :</h4>
					<p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:Sqhoo@outlook.com">Sqhoo@outlook.com</a></p>
				</div>
				<div class="clearfix"> </div>
			</div>		
			<div class="contact-form">
				<h4>请输入信息</h4>
				<form>
					<textarea type="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '输入内容...';}" required="">输入内容...</textarea>
					<input type="submit" class="btn btn-warning" value="提交" style="width: 100px;height: 40px">
				</form>
			</div>	
		</div>
	</div>
	<!--//contact-->
	<!--footer-->
	<%@ include file="include/footer.jsp"%>
</body>
</html>