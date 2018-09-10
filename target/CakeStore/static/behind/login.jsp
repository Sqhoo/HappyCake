<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html>
<head>
<title>Purple_loginform Website Template | Home :: w3layouts</title>
<link href="${pageContext.request.contextPath}/static/behind/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- -->
	<script src="${pageContext.request.contextPath}/static/behind/js/jquery.min.js"></script>
	<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script>
	$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
</head>
<body>
<!-- contact-form -->	
<div class="message warning">
<div class="inset">
	<div class="login-head">
		<h1>HAPPY CAKES</h1>
	</div>
	<form action="${pageContext.request.contextPath}/behind/admin/userSession" method="post" id="login" >
		<small id="msg" style="color: red;font-size: 12px;position: relative;left: -32%">&nbsp;</small>
		<li>
			<input type="text" name="adminUsername" class="text" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}"><a href="#" class=" icon user"></a>
		</li>
			<div class="clear"> </div>
		<li>
			<input type="password" name="adminPassword" value="密码     " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码     ';}"> <a href="#" class="icon lock"></a>
		</li>
		<div class="clear"> </div>
		<div class="submit">
			<input type="submit"  value="登录" id="log-submit" onclick="checkAdmin();return false;">
			<h4><a href="#">Lost your Password ?</a></h4>
					  <div class="clear">  </div>
		</div>
				
		</form>
		</div>					
	</div>
	<div class="clear"> </div>
<!--- footer --->
<div class="footer">
	<p>Copyright &copy; 2018</p>
</div>
<script>
   function checkAdmin() {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/behind/admin/check",
            data: $("#login").serialize(),
            success:function (data) {
                if(data==="success"){
                    $("#msg").html("&nbsp;");
                    $("form").submit();
                }else {
                    $("#msg").text("用户名或密码错误");
                }
            },
            error:function () {
                alert("出错");
                return false;
            }
        })
   }
</script>
</body>
</html>
