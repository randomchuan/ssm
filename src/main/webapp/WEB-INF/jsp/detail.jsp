<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%--<title><spring:message code="detail.index"/></title>--%>
    <title>商品详情</title>
</head>
<body>
<%--引入公共头--%>
<jsp:include page="../../head.jsp"/>

<%--一依次展示属性--%>
<div class="detail">
    <%--列表，标题h2标签 内容p标签--%>
    <ui>
        <li><h2><spring:message code="detail.product.id"/></h2>
            <p>${detail.productId}</p></li>
        <li><h2><spring:message code="detail.product.name"/></h2>
            <p>${detail.productName}</p></li>
        <li><h2><spring:message code="detail.product.price_old"/></h2>
            <p>${detail.priceOld}</p></li>
        <li><h2><spring:message code="detail.product.price_new"/></h2>
            <p>${detail.priceNew}</p></li>
        <li><h2><spring:message code="detail.product.sales"/></h2>
            <p>${detail.sales}</p></li>
        <li><h2><spring:message code="detail.product.visitor"/></h2>
            <p>${detail.visitor}</p></li>
        <li><h2><spring:message code="detail.product.assessment"/></h2>
            <p>${detail.assessment}</p></li>
        <li><h2><spring:message code="detail.product.create_time"/></h2>
            <p>${detail.createTime}</p></li>
    </ui>
</div>

<div class="param">
    <ol>
        <%--参数展示 同上--%>
        <c:forEach items="${detail.params}" var="para">
            <li><h2>${para.key}</h2>: <p>${para.value}</p></li>
        </c:forEach>
    </ol>
</div>

<hr>
<%--使用iframe包含评论页面--%>
<iframe src="${pageContext.request.contextPath}/commentList/${detail.productId}" frameborder="0" width="100%" scrolling="no"></iframe>

<%--这里再显示一个热销产品--%>
<jsp:include page="/mostProducts"/>

<%--引入公共尾--%>
<iframe src="../../foot.html" width="100%" scrolling="no"></iframe>
</body>
</html>
