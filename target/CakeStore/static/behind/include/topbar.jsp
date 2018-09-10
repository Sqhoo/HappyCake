<%--
  Created by IntelliJ IDEA.
  User: skylin
  Date: 18-8-17
  Time: 下午2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tpl-left-nav tpl-left-nav-hover">
    <div class="tpl-left-nav-list">
        <ul class="tpl-left-nav-menu">
            <li class="tpl-left-nav-item">
                <a href="${pageContext.request.contextPath}/behind/admin/index" class="nav-link active">
                    <i class="am-icon-home"></i>
                    <span>首页</span>
                </a>
            </li>

            <li class="tpl-left-nav-item">
                <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-user"></i>
                    <span>用户管理</span>
                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                </a>
                <ul class="tpl-left-nav-sub-menu" style="display: block;">
                    <li>
                        <a href="${pageContext.request.contextPath}/behind/user/userInfo">
                            <i class="am-icon-angle-right"></i>
                            <span>用户信息</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/behind/user/feedback">
                            <i class="am-icon-angle-right"></i>
                            <span>用户反馈管理</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="tpl-left-nav-item">
                <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-shopping-cart"></i>
                    <span>商品管理</span>
                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                </a>
                <ul class="tpl-left-nav-sub-menu" style="display: block;">
                    <li>
                        <a href="${pageContext.request.contextPath}/behind/product/addproduct">
                            <i class="am-icon-angle-right"></i>
                            <span>添加商品</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/behind/product/addprodisc">
                            <i class="am-icon-angle-right"></i>
                            <span>添加商品详细信息</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/behind/product/productInfo">
                            <i class="am-icon-angle-right"></i>
                            <span>商品信息</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/behind/product/prodisc">
                            <i class="am-icon-angle-right"></i>
                            <span>商品详细信息</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/behind/product/order">
                            <i class="am-icon-angle-right"></i>
                            <span>订单成交信息</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/behind/product/comment">
                            <i class="am-icon-angle-right"></i>
                            <span>商品评论信息</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="tpl-left-nav-item">
                <a href="${pageContext.request.contextPath}/behind/admin/login" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-key"></i>
                    <span>登录</span>

                </a>
            </li>
        </ul>
    </div>
</div>