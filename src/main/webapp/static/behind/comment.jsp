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
               商品评论信息
            </div>
            <ol class="am-breadcrumb">
                <li><a href="${pageContext.request.contextPath}/behind/admin/index" class="am-icon-home">首页</a></li>
                <li>商品管理</li>
                <li class="am-active">商品评论信息</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 评论
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
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}">
                                   <option value="option1">所有类别</option>
                                   <option value="option2">IT业界</option>
                                   <option value="option3">数码产品</option>
                                   <option value="option3">笔记本电脑</option>
                                   <option value="option3">平板电脑</option>
                                   <option value="option3">只能手机</option>
                                   <option value="option3">超极本</option>
                                </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field">
                                <span class="am-input-group-btn">
                                   <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
                                </span>
                            </div>
                        </div>
                    </div>

                    <ul class="tpl-task-list">
                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> Amaze UI Icon 组件目前使用了 Font Awesome </span>
                                <span class="label label-sm label-success">技术部</span>
                                <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 在 data-am-dropdown 里指定要适应到的元素，下拉内容的宽度会设置为该元素的宽度。当然可以直接在 CSS 里设置下拉内容的宽度。 </span>
                                <span class="label label-sm label-danger">运营</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                                <span class="label label-sm label-warning">市场部</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                <span class="label label-sm label-default">已废弃</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                                <span class="label label-sm label-success">技术部</span>
                                <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                <span class="label label-sm label-default">已废弃</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                                <span class="label label-sm label-warning">市场部</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                <span class="label label-sm label-default">已废弃</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                                <span class="label label-sm label-success">技术部</span>
                                <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                <span class="label label-sm label-default">已废弃</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                                <span class="label label-sm label-warning">市场部</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                <span class="label label-sm label-default">已废弃</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                                <span class="label label-sm label-success">技术部</span>
                                <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                <span class="label label-sm label-default">已废弃</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                                <span class="label label-sm label-warning">市场部</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                <span class="label label-sm label-default">已废弃</span>

                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="task-checkbox">
                                <input type="hidden" value="1" name="test">
                                <input type="checkbox" class="liChild" value="2" name="test"> </div>
                            <div class="task-title">
                                <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                                <span class="label label-sm label-success">技术部</span>
                                <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                            </div>
                            <div class="task-config">
                                <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                    <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                        <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                    </a>
                                    <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-check"></i> 保存 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-pencil"></i> 编辑 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="am-icon-trash-o"></i> 删除 </a>
                                        </li>
                                    </ul>


                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

    </div>


    <%@ include file="include/footer.jsp"%>
</body>

</html>