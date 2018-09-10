<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/10
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="cart">
    <div class="top">
        <h3><spring:message code="cart.top.title"/></h3>
    </div>
    <div class="mid">
        <%--基于session实现的购物车，要求用户先登录--%>
        <%--通过session判断用户有没有登录--%>
        <c:if test="${empty sessionScope.USER}">
            <p><spring:message code="cart.mid.tip"/></p>
        </c:if>
        <c:if test="${not empty sessionScope.USER}">
            <ul>
                <c:forEach items="${sessionScope.CART}" var="cart" varStatus="status">
                    <%--序号 商品名 数量 总价--%>
                    <li>${status.index+1} ${cart.productName} ${cart.count} ${cart.price*cart.count}</li>
                </c:forEach>
            </ul>
        </c:if>
    </div>
    <div class="bottom">
        <div class="total">
            <%--显示总价--%>
            <%--高光操作-EL求和--%>
            <%--list.stream().map(x->x.price*x.count).sum()--%>
            ￥ ${sessionScope.CART.stream().map(x -> x.price*x.count).sum()}
        </div>
        <div class="fun">
            <%--显示功能按钮--%>
            <a href=""><spring:message code="cart.bottom.reset"/></a><a href=""><spring:message
                code="cart.bottom.submit"/></a>
        </div>
        <div class="clr"></div>
    </div>
</div>
</body>
</html>
