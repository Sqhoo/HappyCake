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
                添加商品
            </div>
            <ol class="am-breadcrumb">
                <li><a href="${pageContext.request.contextPath}/behind/admin/index" class="am-icon-home">首页</a></li>
                <li>商品管理</li>
                <li class="am-active">添加商品</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 添加商品
                    </div>
                </div>

                <div class="tpl-block">

                    <div class="am-g">
                        <div class="tpl-form-body tpl-form-line">
                            <form class="am-form tpl-form-line-form" action="${pageContext.request.contextPath}/behind/product/addproductDo" method="post">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">商品名称 <span class="tpl-form-line-small-title">Title</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入商品名称" name="productName">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="publish-color" class="am-u-sm-3 am-form-label">颜色种类 <span class="tpl-form-line-small-title">Time</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" placeholder="颜色1 颜色2 颜色3"  id="publish-color" name="productColor"/>
                                        <small>分类用空格隔开</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="publish-weight" class="am-u-sm-3 am-form-label">重量 <span class="tpl-form-line-small-title">Time</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" placeholder="1 2 3(kg)" id="publish-weight" name="productWeight"/>
                                        <small>分类用空格隔开</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="publish-step" class="am-u-sm-3 am-form-label">层数 <span class="tpl-form-line-small-title">Time</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" placeholder="1 2 3(层)" id="publish-step" name="productStep"/>
                                        <small>分类用空格隔开</small>
                                    </div>
                                </div>

                                <%--<div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">封面图 <span class="tpl-form-line-small-title">Images</span></label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                                <i class="am-icon-cloud-upload"></i> 添加封面图片</button>
                                            &lt;%&ndash;<input id="doc-form-file" type="file" name="productIndexpic" multiple> &ndash;%&gt;
                                            <input id="doc-form-file" type="file" name="productIndexpic">
                                        </div>
                                        <a id="upload">上传</a>
                                        <div id="file-list"></div>
                                    </div>
                                </div>--%>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">文章内容</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="10" id="user-intro" placeholder="请输入文章内容" name="productDisc"></textarea>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success " value="提交">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="include/footer.jsp"%>
</body>
<script>
    $(function() {
        $('#doc-form-file').on('change', function() {
            var fileNames = '';
            $.each(this.files, function() {
                fileNames += '<span class="am-badge">' + this.name + '</span> ';
            });
            $('#file-list').html(fileNames);
        });
    });

</script>
</html>