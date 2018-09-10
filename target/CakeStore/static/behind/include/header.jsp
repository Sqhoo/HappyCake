<%--
  Created by IntelliJ IDEA.
  User: skylin
  Date: 18-8-17
  Time: 下午2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        &nbsp;&nbsp;&nbsp;&nbsp;Happy Cake
    </div>
    <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right" style="cursor: pointer">

    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
            <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-user" aria-hidden="true"></span>
                    <span class="tpl-header-list-user-nick">${adminUsername}</span>
                </a>
            </li>
            <li><a href="${pageContext.request.contextPath}/behind/admin/logout" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
        </ul>
    </div>
</header>