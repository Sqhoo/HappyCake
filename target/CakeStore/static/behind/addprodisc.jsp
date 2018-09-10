<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <%@ include file="include/head.jsp"%>
    <style>
        #point{
            font-size: 20px;
            color: red;
        }
    </style>
</head>

<body data-type="generalComponents">
    <%@ include file="include/header.jsp"%>
    <div class="tpl-page-container tpl-page-header-fixed">
        <%@ include file="include/topbar.jsp"%>
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                添加商品
            </div>
            <ol class="am-breadcrumb">
                <li><a href="${pageContext.request.contextPath}/behind/admin/index" class="am-icon-home">首页</a></li>
                <li>商品管理</li>
                <li class="am-active">添加商品详细信息</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 商品详细信息
                    </div>
                </div>

                <div class="tpl-block">

                    <div class="am-g">
                        <div class="tpl-form-body tpl-form-line">
                            <form class="am-form tpl-form-line-form" method="post" action="${pageContext.request.contextPath}/behind/product/updateProductInfo">
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">商品ID <span class="tpl-form-line-small-title">ID</span></label>
                                    <div class="am-u-sm-9 scroll-pane">
                                        <select data-am-selected="{searchBox: 1,maxHeight: 100}" name="productId" id="productId" class="col col-4">
                                            <option value="index">选择商品ID</option>
                                        </select>
                                        <span id="point">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</span>
                                    </div>

                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">颜色 <span class="tpl-form-line-small-title">color</span></label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1,maxHeight: 100}" name="pinfoColor" id="pinfoColor">
                                            <option value="index">选择颜色</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">重量 <span class="tpl-form-line-small-title">weight</span></label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1,maxHeight: 100}" name="pinfoWeight" id="pinfoWeight">
                                            <option value="index">选择重量</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">层数 <span class="tpl-form-line-small-title">step</span></label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1,maxHeight: 100}" name="pinfoStep" id="pinfoStep">
                                            <option value="index">选择层数</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">价格 <span class="tpl-form-line-small-title">price</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" placeholder="输入价格（￥）" name="pinfoPrice">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">增加库存 <span class="tpl-form-line-small-title">stock</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" placeholder="输入数字" name="pinfoStock">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success " value="提交">
                                    </div>
                                </div>
                            </form>
                            <a href="${pageContext.request.contextPath}/behind/product/uploadpic" style="position: relative;left: 60%">上传照片</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="include/footer.jsp"%>
</body>
<script>
    $(document).ready(function () {
        if (productId!=="index"){
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/behind/product/queryProductId',
                dataType: 'json',
                success: function (data) {
                    $.each(data,function (index,id) {
                        $('#productId').append("<option value='"+id+"'>"+id+"</option>");
                    })
                },
                error: function () {
                    alert("出错");
                }
            })
        }
    });

    $('#productId').change(function () {
        var productId=$('#productId').find('option:selected').val();
        document.getElementById("pinfoColor").options.length=1;
        document.getElementById("pinfoWeight").options.length=1;
        document.getElementById("pinfoStep").options.length=1;
        if (productId!=="index"){
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/behind/product/queryProduct',
                data: "productId="+productId,
                success: function (data) {
                    var colors=(data.productColor)  .split(' ');
                    var weights=(data.productWeight).split(' ');
                    var steps=(data.productStep).split(' ');
                    $.each(colors,function (index,color) {
                        $('#pinfoColor').append("<option value='"+color+"'>"+color+"</option>");
                    })
                    $.each(weights,function (index,weight) {
                        $('#pinfoWeight').append("<option value='"+weight+"'>"+weight+"</option>");
                    })
                    $.each(steps,function (index,step) {
                        $('#pinfoStep').append("<option value='"+step+"'>"+step+"</option>");
                    })
                },
                error: function () {
                    alert('出错');
                }
            })
        }
    })
</script>
</html>