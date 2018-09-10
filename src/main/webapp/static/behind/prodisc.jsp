<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <%@ include file="include/head.jsp"%>
</head>

<body data-type="generalComponents">


<%@ include file="include/header.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">


    <%@ include file="include/topbar.jsp"%>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            商品详细信息
        </div>
        <ol class="am-breadcrumb">
            <li><a href="${pageContext.request.contextPath}/behind/admin/index" class="am-icon-home">首页</a></li>
            <li>商品管理</li>
            <li class="am-active">商品详细信息</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span>商品详细信息
                </div>
            </div>
            <div class="tpl-block" style="height: 600px">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group">
                            <select data-am-selected="{btnSize: 'sm'}" id="pinfoColor">
                                <option value="index">选择颜色</option>
                            </select>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group">
                            <select data-am-selected="{btnSize: 'sm'}" id="pinfoWeight">
                                <option value="index">选择重量</option>
                            </select>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group">
                            <select data-am-selected="{btnSize: 'sm'}" id="pinfoStep">
                                <option value="index">选择层数</option>
                            </select>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field" id="productId">
                            <span class="am-input-group-btn">
                                    <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
                                </span>
                        </div>
                    </div>
                </div>
                <div class="am-g">
                    <div class="am-u-sm-12">
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
                            <tbody id="tbody">

                            </tbody>
                        </table>
                        <hr>
                    </div>
                </div>
            </div>
            <ul class="pager" style="position: relative;bottom: 0">
                <li class="previous" id="previous"><a id="pre">&larr; 上一页</a></li>
                <span>第<small id="currentPage">1</small>页/共<small id="totalPage">10</small>页</span>
                <li class="next" id="next"><a id="nex">下一页 &rarr;</a> </li>
            </ul>
            <div class="tpl-alert"></div>
        </div>
    </div>
</div>
<%@ include file="include/footer.jsp"%>
<script>
    $(document).ready(function () {
        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/behind/product/queryKinds',
            success:function (data) {
                $.each(data.colors,function (index,color) {
                    $("#pinfoColor").append("<option value='"+color+"'>"+color+"</option>");
                });
                $.each(data.weights,function (index,weight) {
                    $("#pinfoWeight").append("<option value='"+weight+"'>"+weight+"</option>")
                })
                $.each(data.steps,function (index,step) {
                    $("#pinfoStep").append("<option value='"+step+"'>"+step+"</option>")
                })
            }
        });
        var color=$('#pinfoColor').val();
        var weight=$('#pinfoWeight').val();
        var step=$('#pinfoStep').val();
        var productId=$('#productId').val();
        var datas="currentPage=1&pinfo.pinfoColor="+color+""+"&"+"pinfo.pinfoWeight="+weight+""+"&"+"pinfo.pinfoStep="+step+""+"&"+"pinfo.productId="+productId+"";
        pinfoAjax(datas);
    });
    $("#pinfoColor").change(function () {
        var color=$('#pinfoColor').val();
        var weight=$('#pinfoWeight').val();
        var step=$('#pinfoStep').val();
        var productId=$('#productId').val();
        var datas="currentPage=1&pinfo.pinfoColor="+color+""+"&"+"pinfo.pinfoWeight="+weight+""+"&"+"pinfo.pinfoStep="+step+""+"&"+"pinfo.productId="+productId+"";
        pinfoAjax(datas);
    });
    $("#pinfoWeight").change(function () {
        var color=$('#pinfoColor').val();
        var weight=$('#pinfoWeight').val();
        var step=$('#pinfoStep').val();
        var productId=$('#productId').val();
        var datas="currentPage=1&pinfo.pinfoColor="+color+""+"&"+"pinfo.pinfoWeight="+weight+""+"&"+"pinfo.pinfoStep="+step+""+"&"+"pinfo.productId="+productId+"";
        pinfoAjax(datas);
    });
    $("#pinfoStep").change(function () {
        var color=$('#pinfoColor').val();
        var weight=$('#pinfoWeight').val();
        var step=$('#pinfoStep').val();
        var productId=$('#productId').val();
        var datas="currentPage=1&pinfo.pinfoColor="+color+""+"&"+"pinfo.pinfoWeight="+weight+""+"&"+"pinfo.pinfoStep="+step+""+"&"+"pinfo.productId="+productId+"";
        pinfoAjax(datas);
    });
    $("#pre").click(function () {
        var color=$('#pinfoColor').val();
        var weight=$('#pinfoWeight').val();
        var step=$('#pinfoStep').val();
        var productId=$('#productId').val();
        var currentPage=parseInt($("#currentPage").text());
        $("#currentPage").text(currentPage<=1?1:currentPage-1);
        var datas="currentPage="+parseInt($("#currentPage").text())+"&"+"pinfo.pinfoColor="+color+""+"&"+"pinfo.pinfoWeight="+weight+""+"&"+"pinfo.pinfoStep="+step+""+"&"+"pinfo.productId="+productId+"";
        pinfoAjax(datas);
    });
    $("#nex").click(function () {
        var color=$('#pinfoColor').val();
        var weight=$('#pinfoWeight').val();
        var step=$('#pinfoStep').val();
        var productId=$('#productId').val();
        var currentPage=parseInt($("#currentPage").text());
        var totalPage=parseInt($("#totalPage").text());
        $("#currentPage").text(currentPage>=totalPage?totalPage:currentPage+1);
        var datas="currentPage="+parseInt($("#currentPage").text())+"&"+"pinfo.pinfoColor="+color+""+"&"+"pinfo.pinfoWeight="+weight+""+"&"+"pinfo.pinfoStep="+step+""+"&"+"pinfo.productId="+productId+"";
        pinfoAjax(datas);
    });
    $('#productId').on('input propertychange',function () {
        var datas="currentPage=1&pinfo.productId="+$("#productId").val()+"";
        pinfoAjax(datas);
    });
    function pinfoAjax(datas) {
        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/behind/product/queryPinfos',
            data: datas,
            success:function (pinfoExt) {
                $("#tbody").html("");
                $("#totalPage").text(pinfoExt.totalPage);
                $.each(pinfoExt.pinfos,function (index,pinfo) {
                    $('#tbody').append("" +
                        "<tr>\n" +
                        "    <td name=\"productId\">"+pinfo.productId+"</td>\n" +
                        "    <td><a href=\"#\">"+pinfo.productName+"</a></td>\n" +
                        "    <td>"+pinfo.pinfoColor+"</td>\n" +
                        "    <td>"+pinfo.pinfoWeight+"</td>\n" +
                        "    <td>"+pinfo.pinfoStep+"</td>\n" +
                        "    <td>"+pinfo.pinfoPrice+"</td>\n" +
                        "    <td>"+pinfo.pinfoStock+"</td>\n" +
                        "    <td>"+pinfo.pinfoTime+"</td>\n" +
                        "</tr>"
                    );
                });
            }
        })
    }
</script>
</body>

</html>