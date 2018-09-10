<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <!-- Custom Theme files -->
    <%@ include file="include/head.jsp"%>
    <link href="${pageContext.request.contextPath}/static/front/css/form.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- the jScrollPane script -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/front/js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function () {
            $('.scroll-pane').jScrollPane();
        });
    </script>
    <!-- //the jScrollPane script -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/front/js/jquery.mousewheel.js"></script>
    <!-- the mousewheel plugin -->
    <style type="text/css">
        .product-info .item_add {
            position: relative;
            left: 45px;
            top: -45px;
        }
    </style>
</head>
<body>
<!--header-->
<%@ include file="include/header.jsp"%>
<!--//header-->
<!--products-->
<div class="products">
    <div class="container">
        <h2>Happy Cakes</h2>
        <div class="col-md-9 product-model-sec" id="productSimple"  style="height: 600px">
        </div>

        <div class="col-md-3 rsidebar span_1_of_left">
            <form id="sections">
                <section class="sky-form">
                    <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>价格</h4>
                    <ul class="dropdown-menu1">
                        <li><a href="">
                                <div id="slider-range"></div>
                                <input type="text" name="productAvg" id="productAvg" style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';"/>
                            </a>
                        </li>
                    </ul>
                </section>
                <!---->
                <script type="text/javascript" src="${pageContext.request.contextPath}/static/front/js/jquery-ui.min.js"></script>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/front/css/jquery-ui.css">
                <script type='text/javascript'>//<![CDATA[
                $(function () {
                    $("#slider-range").slider({
                        range: "min",
                        value: 100,
                        min: 1,
                        max: 100,
                        slide: function (event, ui) {
                            $("#productAvg").val(ui.value);
                        }
                    });
                    $("#productAvg").val($("#slider-range").slider("value"));
                });
                </script>
                <!---->

                <section class="sky-form">
                    <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>颜色</h4>
                    <div class="row row1 scroll-pane">
                        <div class="col col-4" id="pinfoColors">
                        </div>
                    </div>
                </section>
                <input type="submit" value="搜索" class="btn btn-warning btn-block" onclick="searchProducts();return false">
            </form>
            <div class="clearfix"></div>
        </div>
    </div>
    <ul class="pager" style="position: relative;bottom: 0">
        <li class="previous" id="previous" style="position: absolute;left: 36%"><a id="pre">&larr; 上一页</a></li>
        <span style="position: absolute;right: 35%">第<small id="currentPage">1</small>页/共<small id="totalPage">10</small>页</span>
        <li class="next" id="next" style="position: absolute;right: 10%"><a id="nex">下一页 &rarr;</a> </li>
    </ul>

</div>
<!--//products-->
<!--footer-->
<%@ include file="include/footer.jsp"%>
</body>
<script>
    $(document).ready(function () {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/front/product/queryColors",
            success: function (colors) {
                $.each(colors,function (index,color) {
                    $("#pinfoColors").append("<label class=\"checkbox\"><input type=\"checkbox\" name=\"colors\" value="+color+"><i></i>"+color+"</label>")
                })
            }
        });
        var datas="currentPage=1";
        productFrAjax(datas);
    });

    function productFrAjax(datas) {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/front/product/queryProducts",
            data: datas,
            success: function (productExt) {
                $("#productSimple").html("");
                $("#totalPage").text(productExt.totalPage);
                $.each(productExt.products,function (index,product) {
                    $("#productSimple").append("" +
                        "<div class=\"product-grid\">\n" +
                        "    <a href=\"${pageContext.request.contextPath}/front/product/single?productId="+product.productId+"\">\n" +
                        "          <div class=\"more-product\"><span> </span></div>\n" +
                        "          <div class=\"product-img b-link-stripe b-animate-go  thickbox\">\n" +
                        "                <img src=\"${pageContext.request.contextPath}/pic/"+product.productPath+"\" class=\"img-responsive\" alt=\"\">\n" +
                        "                <div class=\"b-wrapper\">\n" +
                        "                      <h4 class=\"b-animate b-from-left  b-delay03\">\n" +
                        "                            <button>查看</button>\n" +
                        "                      </h4>\n" +
                        "                </div>\n" +
                        "          </div>\n" +
                        "    </a>\n" +
                        "    <div class=\"product-info simpleCart_shelfItem\">\n" +
                        "         <div class=\"product-info-cust prt_name\">\n" +
                        "               <h4>"+product.productName+"</h4>\n" +
                        "               <span class=\"item_price\">￥"+product.productAvg+"</span>\n" +
                        "               <input type=\"button\" class=\"item_add items\" value=\"添加\">\n" +
                        "               <div class=\"clearfix\"></div>\n" +
                        "         </div>\n" +
                        "    </div>\n" +
                        "</div>" +
                        "")
                })
            },
            error: function () {
                alert("出错");
            }
        })
    }
    function searchProducts() {
        var productAvg=parseInt($("#productAvg").val());
        var datas="currentPage=1&productAvg="+$("#productAvg").val()+"";
        productFrAjax(datas);
    }
    $("#pre").click(function () {
        var currentPage=parseInt($("#currentPage").text());
        $("#currentPage").text(currentPage<=1?1:currentPage-1);
        var datas="currentPage="+parseInt($("#currentPage").text())+"&"+$("#sections").serialize();
        productFrAjax(datas);
    });
    $("#nex").click(function () {
        var currentPage=parseInt($("#currentPage").text());
        var totalPage=parseInt($("#totalPage").text());
        $("#currentPage").text(currentPage>=totalPage?totalPage:currentPage+1);
        var datas="currentPage="+parseInt($("#currentPage").text())+"&"+$("#sections").serialize();
        productFrAjax(datas);
    });
</script>
</html>