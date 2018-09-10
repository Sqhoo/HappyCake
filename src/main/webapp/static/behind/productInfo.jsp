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
           商品信息
        </div>
        <ol class="am-breadcrumb">
            <li><a href="${pageContext.request.contextPath}/behind/admin/index" class="am-icon-home">首页</a></li>
            <li>商品管理</li>
            <li class="am-active">商品信息</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span>商品
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..." id="search">
                        </div>
                    </div>
                </div>
            </div>
            <div class="tpl-block"  style="height: 400px">
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <table class="am-table am-table-striped am-table-hover table-main">
                            <thead>
                            <tr>
                                <th class="table-id">商品ID</th>
                                <th class="table-title">商品名</th>
                                <th class="table-type">商品描述</th>
                                <th class="table-type">商品颜色</th>
                                <th class="table-type">商品重量(kg)</th>
                                <th class="table-type">商品层数(层)</th>
                                <th class="table-date am-hide-sm-only">商品上架时间</th>
                                <th class="table-set">操作</th>
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
        var datas="currentPage=1&productId=";
        productAjax(datas);
    });
    $('#search').on('input propertychange',function () {
        var datas="currentPage=1&productId="+$("#search").val()+"";
        productAjax(datas);
    });
    function productAjax(datas) {
        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/behind/product/queryProducts',
            data: datas,
            success:function (productExt) {
                $("#tbody").html("");
                $("#totalPage").text(productExt.totalPage);
                $.each(productExt.products,function (index,product) {
                    $('#tbody').append("" +
                        "<tr>\n" +
                        "    <td name=\"productId\">"+product.productId+"</td>\n" +
                        "    <td><a href=\"#\">"+product.productName+"</a></td>\n" +
                        "    <td>"+product.productDisc+"</td>\n" +
                        "    <td>"+product.productColor+"</td>\n" +
                        "    <td>"+product.productWeight+"</td>\n" +
                        "    <td>"+product.productStep+"</td>\n" +
                        "    <td>"+product.productTime+"</td>\n" +
                        "    <td>\n" +
                        "        <div class=\"am-btn-toolbar\">\n" +
                        "             <div class=\"am-btn-group am-btn-group-xs\">\n" +
                        "                 <button class=\"am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only\" onclick='delRow(this)'><span class=\"am-icon-trash-o\"></span> 删除</button>\n" +
                        "             </div>\n" +
                        "        </div>\n" +
                        "    </td>\n" +
                        "</tr>"
                    );
                });
            }
        })
    }
    function delRow(delBtn) {
        var btn=$(delBtn);
        if (confirm("确定删除这件商品吗")){
            var productId=btn.parent().parent().parent().parent().find("td[name='productId']").text();
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/behind/product/deleteUserInfo',
                data: "productId="+productId+"",
                success:function () {
                },
                error:function () {
                    alert('操作失败');
                }
            });
            var currentPage=parseInt($("#currentPage").text());
            var datas="currentPage="+currentPage+"&productId=";
            productAjax(datas);
        }
    }
    $("#pre").click(function () {
        var currentPage=parseInt($("#currentPage").text());
        $("#currentPage").text(currentPage<=1?1:currentPage-1);
        var datas="currentPage="+parseInt($("#currentPage").text())+"&"+"productId="+$("#search").val()+"";
        productAjax(datas);
    });
    $("#nex").click(function () {
        var currentPage=parseInt($("#currentPage").text());
        var totalPage=parseInt($("#totalPage").text());
        $("#currentPage").text(currentPage>=totalPage?totalPage:currentPage+1);
        var datas="currentPage="+parseInt($("#currentPage").text())+"&"+"productId="+$("#search").val()+"";
        productAjax(datas);
    });

</script>
</body>

</html>