<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <%@ include file="include/head.jsp" %>
</head>

<body data-type="index">

<%@ include file="include/header.jsp" %>

<div class="tpl-page-container tpl-page-header-fixed">

    <%@ include file="include/topbar.jsp" %>


    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            管理员模式
        </div>
        <ol class="am-breadcrumb">
            <li><a href="${pageContext.request.contextPath}/behind/admin/index" class="am-icon-home">首页</a></li>
            <li class="am-active">内容</li>
        </ol>
        <div class="tpl-content-scope">
            <div class="note note-info">
                <h3>Happy Cake
                    <span class="close" data-close="note"></span>
                </h3>
                <p> 本网站为Happy Cake 唯一后台管理系统网站</p>
                <p><span class="label label-danger">提示:</span> 请管理员操作
                </p>
            </div>
        </div>

        <div class="row">
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat blue">
                    <div class="visual">
                        <i class="am-icon-bell-o"></i>
                    </div>
                    <div class="details">
                        <div class="number"> 1349</div>
                        <div class="desc"> 新消息</div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat red">
                    <div class="visual">
                        <i class="am-icon-bar-chart-o"></i>
                    </div>
                    <div class="details">
                        <div class="number"> 62%</div>
                        <div class="desc"> 用户数量</div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat green">
                    <div class="visual">
                        <i class="am-icon-shopping-cart"></i>
                    </div>
                    <div class="details">
                        <div class="number"> 653</div>
                        <div class="desc"> 所有商品</div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat purple">
                    <div class="visual">
                        <i class="am-icon-comments-o"></i>
                    </div>
                    <div class="details">
                        <div class="number"> 786</div>
                        <div class="desc"> 累计评论</div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>


        </div>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span>缺货商品
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                    </div>
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-id">商品ID</th>
                                    <th class="table-title">商品名</th>
                                    <th class="table-type">商品颜色</th>
                                    <th class="table-type">商品重量(kg)</th>
                                    <th class="table-type">商品层数(层)</th>
                                    <th class="table-type">商品价格(￥)</th>
                                    <th class="table-type">商品库存(个)</th>
                                    <th class="table-date am-hide-sm-only">商品上架时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>11111111</td>
                                    <td><a href="#">Business management</a></td>
                                    <td>白色</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>12</td>
                                    <td>1000</td>
                                    <td>2014年9月4日 7:28:47</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="am-cf">

                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a href="#">«</a></li>
                                        <li class="am-active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                            <hr>

                        </form>
                    </div>
                </div>
            </div>
            <div class="tpl-alert"></div>
        </div>
    </div>


</div>
<%@ include file="include/footer.jsp"%>
</body>

</html>
