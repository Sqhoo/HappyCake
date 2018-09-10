<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Account</title>
<!-- Custom Theme files -->
<%@ include file="include/head.jsp"%>
<!-- cart -->
<script type="text/javascript">
    $(document).ready(function(){
		$("#currentPassword").blur(function(){
			if($("#newPassword").val()===$("#currentPassword").val()){
                if($("#checkPassword").hasClass("glyphicon-remove")){
                    $("#checkPassword").removeClass("glyphicon-remove");
                }
				$("#checkPassword").addClass("glyphicon-ok");
            }else{
                if($("#checkPassword").hasClass("glyphicon-ok")){
                    $("#checkPassword").removeClass("glyphicon-ok");
                }
                $("#checkPassword").addClass("glyphicon-remove");
            }
		});
		$("#userEmail").blur(function () {
		    var userEmail=$("#userEmail").val();
		    var data="userEmail="+userEmail+"";
			$.ajax({
				type: "post",
				url: "${pageContext.request.contextPath}/front/user/queryUserByEmail",
				data: data,
				success: function (result) {
                    if (result==="true"){
						$("#msg").text("该邮箱已被注册");
                    }else {
						$("#msg").text("");
                    }
                },
                error: function () {
					alert("出错")
                }
			});
        });
    });
    function checkForm(){
		if($("#registerForm").find("input").val()===""){
		    alert("所有消息必填");
		    return false;
		}else{
            return true;
		}

	}
</script>
</head>
<body>
	<!--header-->
	<%@include file="include/header.jsp"%>
	<!--//header-->
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<form id="registerForm" onsubmit="return checkForm()" action="${pageContext.request.contextPath}/front/user/insertUser">
					<div class="register-top-grid">
						<h3>个人信息</h3>
						<div class="form-group">
							<span>昵称<label>*</label></span>
							<input type="text" class="form-control" name="username">
						</div>
						<div class="form-group">
							<span>邮箱<label>*</label></span>
							<input type="text" class="form-control" name="userEmail" id="userEmail">
							<span id="msg" style="color: red"></span>
						</div>
						<div class="form-group">
							<span>电话<label>*</label></span>
							<input type="text" class="form-control" name="userTel">
						</div>
						<div class="clearfix"> </div>
					</div>
				    <div class="register-bottom-grid">
						<h3>登录信息</h3>
						<div class="form-group">
							<span>新密码<label>*</label></span>
							<input type="password" class="form-control" name="password" id="newPassword">
						</div>
						<div class="form-group has-feedback">
							<span>确认密码<label>*</label></span>
							<input type="password" class="form-control" name="currentPassword" id="currentPassword">
							<span class="glyphicon form-control-feedback" aria-hidden="true" style="right:-20px;top:20px" id="checkPassword"></span>
						</div>
					</div>
					<div>
						<input style="width: 50%;margin: 60px auto" type="submit" value="注册" class="btn btn-warning btn-block">
					</div>
				</form>
				<div class="clearfix"> </div>

			</div>
	    </div>
	</div>
	<!--//account-->
	<!--footer-->
	<%@ include file="include/footer.jsp"%>
</body>
</html>