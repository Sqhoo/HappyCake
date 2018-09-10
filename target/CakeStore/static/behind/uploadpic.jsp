<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: skylin
  Date: 18-8-20
  Time: 下午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/behind/inputfile/css/fileinput.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/behind/bootstrap-select-1.13.0-dev/dist/css/bootstrap-select.css">
    <link href="${pageContext.request.contextPath}/static/behind/assets/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/behind/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/behind/assets/js/bootstrap-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/behind/bootstrap-select-1.13.0-dev/dist/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/behind/inputfile/js/fileinput.min.js"></script>
</head>
<body>

    <label>
        <select class="selectpicker" data-live-search="true" id="productId">
            <option value="">--请选择--</option>
        </select>
    </label>
    <div class="form-group">
        <input id="itemImager" name="itemImager" type="file" multiple class="file-uploading" >
    </div>
    <a href="${pageContext.request.contextPath}/behind/admin/index">返回主页</a>
</body>
<script>
    /*加载商品ID*/
    $(document).ready(function () {
        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/behind/product/queryProductId',
            dataType: 'json',
            success: function (data) {
                $.each(data,function (index,id) {
                    $('#productId').append("<option value='"+id+"'>"+id+"</option>");
                });
                $('#productId').selectpicker('refresh');
                $('#productId').selectpicker('render');
            },
            error: function () {
                alert("出错");
            }
        })
    });
    /* 数据库上传图片 */
    $("#itemImager").fileinput({
        language: 'zh', //设置语言
        uploadUrl: "${ pageContext.request.contextPath}/behind/product/uploadPic?productId="+$('#productId').find('option:selected').val(),
         //上传的地址
        allowedFileExtensions: ['jpg', 'gif', 'png', 'jpeg'],//接收的文件后缀
        //maxFilesNum: 4,//上传最大的文件数量
        //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
        uploadAsync: true, //默认异步上传
        showUpload: true, //是否显示上传按钮
        showRemove: true, //显示移除按钮
        showPreview: true, //是否显示预览
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        //dropZoneEnabled: true,//是否显示拖拽区域
        //minImageWidth: 50, //图片的最小宽度
        //minImageHeight: 50,//图片的最小高度
        //maxImageWidth: 1000,//图片的最大宽度
        //maxImageHeight: 1000,//图片的最大高度
        maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
        //minFileCount: 0,
        //maxFileCount: 4, //表示允许同时上传的最大文件个数
        enctype: 'multipart/form-data',
        validateInitialCount: true,
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        msgFilesTooMany: "选择上传的文件数量({4}) 超过允许的最大数值{4}！",
    }).on('filepreupload', function (event, data, previewId, index) {     //上传中
        var form = data.form, files = data.files, extra = data.extra,
            response = data.response, reader = data.reader;
        /* 	alert(response); */
    });
    $("#productId").change(function () {
        $("#itemImager").fileinput('refresh',{uploadUrl: "${ pageContext.request.contextPath}/behind/product/uploadPic?productId="+$('#productId').find('option:selected').val()});
    })
</script>
</html>
