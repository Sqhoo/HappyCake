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
                用户信息
            </div>
            <ol class="am-breadcrumb">
                <li><a href="${pageContext.request.contextPath}/behind/admin/index" class="am-icon-home">首页</a></li>
                <li>用户管理</li>
                <li class="am-active">用户信息</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>用户
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索..." id="search"> </div>
                        </div>
                    </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                    <tr>
                                        <th class="table-id">用户ID</th>
                                        <th class="table-title">用户名</th>
                                        <th class="table-author am-hide-sm-only">邮箱</th>
                                        <th class="table-date am-hide-sm-only">电话</th>
                                        <th class="table-date am-hide-sm-only">注册时间</th>
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
            var datas="currentPage=1&userId=";
            UserAjax(datas);
        });
        $('#search').on('input propertychange',function () {
            var datas="currentPage=1&userId="+$("#search").val()+"";
            UserAjax(datas);
        });
        function UserAjax(datas) {
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/behind/user/queryUserById',
                data: datas,
                success:function (userExt) {
                    $("#tbody").html("");
                    $("#totalPage").text(userExt.totalPage);
                    $.each(userExt.users,function (index,user) {
                        $('#tbody').append("" +
                            "<tr>\n" +
                            "    <td name=\"userId\">"+user.userId+"</td>\n" +
                            "    <td><a href=\"#\">"+user.username+"</a></td>\n" +
                            "    <td>"+user.userEmail+"</td>\n" +
                            "    <td>"+user.userTel+"</td>\n" +
                            "    <td>"+user.userTime+"</td>\n" +
                            "    <td>\n" +
                            "        <div class=\"am-btn-toolbar\">\n" +
                            "             <div class=\"am-btn-group am-btn-group-xs\">\n" +
                            "                 <button class=\"am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only\" onclick='delRow(this)'><span class=\"am-icon-trash-o\"></span> 注销</button>\n" +
                            "             </div>\n" +
                            "        </div>\n" +
                            "    </td>\n" +
                            "</tr>"
                        );
                    });
                }
            })
        }
        $("#pre").click(function () {
            var currentPage=parseInt($("#currentPage").text());
            $("#currentPage").text(currentPage<=1?1:currentPage-1);
            var datas="currentPage="+parseInt($("#currentPage").text())+"&"+"userId="+$("#search").val()+"";
            UserAjax(datas);
        });
        $("#nex").click(function () {
            var currentPage=parseInt($("#currentPage").text());
            var totalPage=parseInt($("#totalPage").text());
            $("#currentPage").text(currentPage>=totalPage?totalPage:currentPage+1);
            var datas="currentPage="+parseInt($("#currentPage").text())+"&"+"userId="+$("#search").val()+"";
            UserAjax(datas);
        });
        function delRow(delBtn) {
            var btn=$(delBtn);
            if (confirm("确定删除该账号吗")){
                var userId=btn.parent().parent().parent().parent().find("td[name='userId']").text();
                $.ajax({
                    type: 'post',
                    url: '${pageContext.request.contextPath}/behind/user/deleteUserInfo',
                    data: "userId="+userId+"",
                    success:function () {
                    },
                    error:function () {
                        alert('操作失败');
                    }
                });
                var currentPage=parseInt($("#currentPage").text());
                var datas="currentPage="+currentPage+"&userId=";
                UserAjax(datas);
            }
        }
    </script>
</body>

</html>