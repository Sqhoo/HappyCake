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
    });
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
				<form id="updateForm">
					<div class="register-top-grid">
						<h3>个人信息</h3>
						<div class="form-group">
							<span>邮箱<label>*</label></span>
							<input type="text" class="form-control" name="userEmail" id="userEmail" value="${user.userEmail}" readonly>
						</div>
						<div class="form-group">
							<span>昵称<label>*</label></span>
							<input type="text" class="form-control" name="username" id="username" value="${user.username}">
						</div>
						<div class="form-group">
							<span>电话<label>*</label></span>
							<input type="text" class="form-control" name="userPhone" id="userTel" value="${user.userTel}">
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
						<input type="hidden" value="${user.userId}" name="userId">
						<input style="width: 50%;margin: 60px auto" type="submit" value="保存" class="btn btn-warning btn-block" onclick="updateUser();return false">
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
<script>
	function updateUser() {
		$.ajax({
			type: 'post',
			url: "${pageContext.request.contextPath}/front/user/updateUser",
			data: $("#updateForm").serialize(),
			success: function (data) {

            },
			error: function () {
				alert("出错");
                return false;
            }
		});
    }
</script>
</html>