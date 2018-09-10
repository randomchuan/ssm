<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 19:57
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
<div class="content">
    <%--判断有无--%>
    <c:if test="${empty orders}">
        <div class="order">
            <p><spring:message code="user.order.tip"/></p>
            <div class="function">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index.jsp"><spring:message
                            code="user.order.home"/></a></li>
                    <%--分类详情--%>
                    <li><a href="#"><spring:message code="user.order.sort"/></a></li>
                    <li><a href="${pageContext.request.contextPath}/user"><spring:message code="user.order.user"/></a>
                    </li>
                </ul>
            </div>
        </div>
    </c:if>
    <%--分页显示个人订单--%>
    <c:if test="${not empty orders}">
        <div class="order">
            <table>
                <thead>
                <tr>
                    <th><spring:message code="user.order.index"/><input type="checkbox"></th>
                    <th><spring:message code="user.order.id"/></th>
                    <th><spring:message code="user.order.userId"/></th>
                    <th><spring:message code="user.order.productId"/></th>
                    <th><spring:message code="user.order.status"/></th>
                        <%--这里要取消链接的原始功能 改用ajax实现批量删除--%>
                    <th><a href="#"><spring:message code="user.order.del"/></a></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${orders}" var="order" varStatus="status">
                    <tr>
                        <td><input type="checkbox" value="${status.index+1}" name="index"></td>
                        <td>${order.id}</td>
                        <td>${order.productId}</td>
                        <td>${order.status}</td>
                        <td>${order.createTime}</td>
                            <%--显示详情--%>
                        <td><a href="${pageContext.request.contextPath}/orderDetail/${order.id}"><spring:message
                                code="user.order.detail"/></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <tfoot>
            <%--分页可以完善--%>
            <tr>
                <td><a href="${pageContext.request.contextPath}/userOrder/${pageNo-1}"><spring:message code="user.order.pre"/></a></td>
                <td>${pageNo}</td>
                <td><a href="${pageContext.request.contextPath}/userOrder/${pageNo+1}"><spring:message code="user.order.next"/></a></td>
            </tr>
            </tfoot>
        </div>
    </c:if>
</div>
</body>
</html>
