<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sprig" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title></title>
</head>
<body>
<%--展示最热销的商品--%>
<%--一张图片，一个名称，一个价格--%>
<%--6种商品，分两行三列展示--%>
<div>
    <c:forEach items="${mostProducts}" var="item" varStatus="status">
        <c:if test="${status.index==0||status.index==3}">
            <div>
        </c:if>
        <a class="link" href="/productDetail/${item.id}">
            <div class="product">
                <img class="img" src="/images/${item.id}.png" alt="<sprig:message code="index.alt"/>">
                <h2 class="name">${item.name}</h2>
                <p class="price"><em>￥${item.newPrice}</em> <em>￥${item.oldPrice}</em></p>
            </div>
        </a>
        <c:if test="${status.index==2||status.index==5}">
            <%--清除浮动--%>
            <div class="clr"></div>
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

</body>
</html>
