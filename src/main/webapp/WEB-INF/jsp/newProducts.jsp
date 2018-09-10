<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
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
<div>
    <c:forEach items="${newProducts}" var="item">
        <a href="/productDetail/${item.id}">
            <div class="product">
                <img class="img" src="/images/${item.id}.png" alt="<spring:message code="index.alt"/>">
                <h2 class="name">${item.name}</h2>
                <p class="price"><em>${item.newPrice}</em> <em>${item.oldPrice}</em></p>
            </div>
        </a>
    </c:forEach>
    <div class="clr"></div>
</div>
</body>
</html>
