<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page errorPage="error.jsp" %>--%>
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
    <%--列表，标题h4标签 内容p标签--%>
    <ui>
        <li>
            <div class="col">
                <h4><spring:message code="detail.product.id"/></h4>
                <p>${detail.detail.id}</p>
                <h4><spring:message code="detail.product.name"/></h4>
                <p>${detail.name}</p>
            </div>
        </li>
        <li>
            <div class="col">
                <h4><spring:message code="detail.product.price_old"/></h4>
                <p>${detail.detail.priceOld}</p>
                <h4><spring:message code="detail.product.price_new"/></h4>
                <p>${detail.detail.priceNew}</p>
            </div>
        </li>
        <li>
            <div class="col">
                <h4><spring:message code="detail.product.sales"/></h4>
                <p>${detail.detail.sales}</p>
                <h4><spring:message code="detail.product.visitor"/></h4>
                <p>${detail.detail.visitor}</p>
                <h4><spring:message code="detail.product.assessment"/></h4>
                <p>${detail.detail.assessment}</p>
            </div>
        </li>
        <li>
            <div class="col">
                <h4><spring:message code="detail.product.create_time"/></h4>
                <p>${detail.detail.createTime}</p>
            </div>
        </li>
    </ui>
</div>

<div class="param">
    <ol>
        <%--参数展示 同上--%>
        <c:forEach items="${detail.params}" var="para">
            <li><h4>${para.key}</h4>: <p>${para.value}</p></li>
        </c:forEach>
    </ol>
</div>

<hr>
<%--使用iframe包含评论页面--%>
<iframe src="${pageContext.request.contextPath}/comment/list/${detail.detail.productId}" frameborder="0" width="100%"
        scrolling="no"></iframe>

<%--这里再显示一个热销产品--%>
<jsp:include page="/product/hot"/>

<%--引入公共尾--%>
<iframe src="../../foot.html" width="100%" scrolling="no"></iframe>
</body>
</html>
