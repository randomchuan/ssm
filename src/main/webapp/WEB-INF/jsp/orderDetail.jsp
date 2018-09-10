<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/10
  Time: 9:31
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
<%--不需要头、尾--%>
<%--表格展示详细信息--%>

<div class="order">
    <div class="detail">
        <%--这里显示订单详情--%>
        <h3><spring:message code="order.detail.title"/></h3>
        <table>
            <tr>
                <td><spring:message code="order.detail.id"/></td>
                <td>${detail.id}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.userId"/></td>
                <td>${detail.userId}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.userName"/></td>
                <td>${detail.userName}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.productId"/></td>
                <td>${detail.productId}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.productName"/></td>
                <td>${detail.productName}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.status"/></td>
                <td>${detail.status}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.time"/></td>
                <td>${detail.createTime}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.price"/></td>
                <td>${detail.newPrice}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.describe"/></td>
                <td>${detail.describe}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.phone"/></td>
                <td>${detail.phone}</td>
            </tr>
            <tr>
                <td><spring:message code="order.detail.address"/></td>
                <td>${detail.address}</td>
            </tr>
        </table>
        <a href="#"><spring:message code="order.detail.problem"/> </a><a href="#"><spring:message
            code="order.detail.del"/> </a>
    </div>
    <div class="comments">
        <iframe src="${pageContext.request.contextPath}/commentList/${detail.productId}" frameborder="0" width="100%" scrolling="no"></iframe>
    </div>
</div>


<script>
    <%--这里添加jQuery代码--%>
</script>
</body>
</html>
