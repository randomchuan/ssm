<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page errorPage="error.jsp" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<%--显示最新上架商品--%>
<%--图片，名称，价格--%>
<%--一行四列--%>
<div style="-webkit-column-count:4;">
    <c:forEach items="${news}" var="item">
        <div class="product">
            <a href="/productDetail/${item.product.id}">
                <img class="img" src="/images/${item.product.id}.jpg" alt="<spring:message code="index.alt"/>">
                <h2 class="name">${item.product.name}</h2>
                <p class="price"><em>${item.priceNew}</em> <em>${item.priceOld}</em></p>
            </a>
            <button><spring:message code="index.add_cart"/></button>
        </div>
    </c:forEach>
    <%--<div class="clr"></div>--%>
</div>
</body>
</html>
