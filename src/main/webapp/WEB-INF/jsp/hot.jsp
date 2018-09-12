<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page errorPage="error.jsp" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sprig" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title></title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
</head>
<body>
<%--展示最热销的商品--%>
<%--一张图片，一个名称，一个价格--%>
<%--6种商品，分两行三列展示--%>
<div>
    <c:forEach items="${hots}" var="item" varStatus="status">
        <c:if test="${status.index==0||status.index==3}">
            <div style="-webkit-column-count: 3;column-width: 400px;">
        </c:if>
        <div class="product">
            <a class="link" href="${pageContext.request.contextPath}/product/detail/${item.product.id}">
                <img class="img" src="/images/${item.product.id}.jpg" alt="<sprig:message code="index.alt"/>">
                <h2 class="name">${item.product.name}</h2>
                <p class="price"><em>￥${item.priceNew}</em> <em>￥${item.priceOld}</em></p>
            </a>
            <button><spring:message code="index.add_cart"/></button>
            <input type="hidden" value="${pageContext.request.contextPath}/cart/add/${item.product.id}">
        </div>

        <c:if test="${status.index==2||status.index==5}">
            <%--清除浮动--%>
            <%--<div class="clr"></div>--%>
            </div>
        </c:if>
    </c:forEach>
</div>


<%--这样的格式--%>
<%--<div>--%>
<%--<div>--%>
<%--<div></div>--%>
<%--<div></div>--%>
<%--<div></div>--%>
<%--<div class="clr"></div>--%>
<%--</div>--%>
<%--<div>--%>
<%--<div></div>--%>
<%--<div></div>--%>
<%--<div></div>--%>
<%--<div class="clr"></div>--%>
<%--</div>--%>
<%--</div>--%>

<script>
    $(function () {
        $('button').click(function () {
            $.get($(this).next().value, function () {
                layer.msg("添加成功")
                layer.open({
                    type: 2,
                    title: '购物车',
                    maxmin: true,
                    shadeClose: true,
                    area: ['600px', '400px'],
                    content: '${pageContext.request.contextPath}/cart/list'
                })
            })
        })
    })
</script>
</body>
</html>
