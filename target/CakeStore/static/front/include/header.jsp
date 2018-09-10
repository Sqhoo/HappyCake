<%--
  Created by IntelliJ IDEA.
  User: skylin
  Date: 18-8-16
  Time: 下午8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a  href="${pageContext.request.contextPath}/front/user/index">Happy</a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/front/user/index" class="active">主页</a></li>
                    <li><a href="${pageContext.request.contextPath}/front/product/products">商品</a></li>
                    <li><a href="${pageContext.request.contextPath}/front/user/userInfo">用户信息</a></li>
                    <li><a href="${pageContext.request.contextPath}/front/product/contact">联系我们</a></li>
                </ul>
                <!--/.navbar-collapse-->
            </div>
            <!--//navbar-header-->
        </nav>
        <div class="header-info">
            <div class="header-right search-box">
                <a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                <div class="search">
                    <form class="navbar-form">
                        <input type="text" class="form-control">
                        <button type="submit" class="btn btn-default" aria-label="Left Align">
                            搜索
                        </button>
                    </form>
                </div>
            </div>
            <div class="header-right cart">
                <a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span><span class="badge" style="background-color: red">10</span></a>
                <div class="cart-box">
                    <h4><a href="${pageContext.request.contextPath}/front/product/checkout">
                        <span class="simpleCart_total"> ￥0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
                    </a></h4>
                    <p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="header-right login">
                <a><span class="glyphicon glyphicon-user" aria-hidden="true"></span><small>${user.username}</small></a>

                <div id="loginBox">
                    <form id="loginForm">
                        <fieldset id="body">
                            <fieldset>
                                <label for="email">邮箱地址</label>
                                <input type="text" name="userEmail" id="email">
                            </fieldset>
                            <fieldset>
                                <label for="password">密码</label>
                                <input type="password" name="password" id="password">
                            </fieldset>
                            <input type="submit" id="login" value="登录" onclick="checkUser();return false">
                            <label for="checkbox"><input type="checkbox" id="checkbox">记住用户</label>
                        </fieldset>
                        <p>还没有账号 ? <a class="sign" href="${pageContext.request.contextPath}/front/user/account">注册</a> <span><a href="#">Forgot your password?</a></span></p>
                    </form>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<script>
    function checkUser(){
        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/front/user/queryUser',
            data: $("#loginForm").serialize(),
            success: function (result) {
                if (result==="true"){
                    window.location.reload();
                }else {
                    alert("邮箱或密码错误");
                }
            },
            error: function () {
                alert("出错");
                return false;
            }
        });
    }
</script>