<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%--<title><spring:message code="index.title"/> </title>--%>
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-timer.js"></script>
    <script src="layer/layer.js"></script>
</head>
<body>
<div>
    <div class="head">
        <%--引入公共头--%>
        <%--<jsp:include page="head.jsp"/>--%>
    </div>
    <div class="mid">
        <div class="hot">
            <%--引入商品推荐页面--%>
            <jsp:include page="/product/hot"/>
        </div>
        <div class="lb" style="margin: 20px auto">
            <%--大图轮播--%>
            <img id="lb1" src="images/lb1.jpg">
            <img id="lb2" src="images/lb2.jpg" style="display: none">
        </div>
        <div class="new">
            <%--引入最新上架商品页面--%>
            <jsp:include page="/product/new"/>
        </div>
    </div>
    <div class="foot">
        <%--引入公共尾--%>
        <iframe src="foot.html" width="100%" scrolling="no" frameborder="0"></iframe>
    </div>
</div>


<script>
    <%--这里实现大图轮播--%>
    $(document).ready(function () {
        $('body').everyTime('4s', function () {
            $('#lb1').fadeToggle("3s");
            $('#lb2').fadeToggle("3s");
        })
    })
</script>
<script>
    <%--这里显示购物车--%>
    //弹出一个iframe层
    $('button').on('click', function () {
        layer.msg("msg");
        layer.open({
            type: 2,
            title: 'Cart',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area: ['800px', '520px'],
            <%--content: '${pageContext.request.contextPath}/cartGet'--%>
            content: '/foot.html'
        });
    });
</script>
</body>
</html>
