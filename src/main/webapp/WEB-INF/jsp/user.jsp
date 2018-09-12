<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page errorPage="error.jsp" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人中心</title>
    <title><spring:message code="user.title"/></title>
    <script>
        <c:import url="/js/jquery-3.3.1.min.js"/>
    </script>
</head>
<body>
<%--引入公共头--%>
<jsp:include page="${pageContext.request.contextPath}/head.jsp"/>

<div class="user">
    <%--左边导航栏 个人信息 订单 购物车--%>
    <div class="nav">
        <ul>
            <li id="li1"><spring:message code="user.nav.user"/></li>
            <li id="li2"><spring:message code="user.nav.order"/></li>
            <li id="li3"><spring:message code="user.nav.cart"/></li>
        </ul>
    </div>
    <div class="content">
        <%--右侧详情展示--%>
        <iframe src="${pageContext.request.contextPath}/info" frameborder="0" width="100%" scrolling="no"></iframe>
    </div>
    <div class="clr"></div>
</div>

<%--引入公共尾--%>
<iframe src="${pageContext.request.contextPath}/foot.html" width="100%" scrolling="no"></iframe>

<script>
    <%--这里写方法，根据点击导航栏切换显示窗口--%>
    $(document).ready(function () {
        $("#li1").onclick(function () {
            $("iframe").attr("src","${pageContext.request.contextPath}/info")
        });
        $("#li2").click(function () {
            $("iframe").attr("src","${pageContext.request.contextPath}/order")
        });
        $("#li3").addEventListener('click',function() {
            $("iframe").attr("src","${pageContext.request.contextPath}/cart")
        },false)
    })
</script>
</body>
</html>
