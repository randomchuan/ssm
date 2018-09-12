<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page errorPage="error.jsp" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="content">
    <%--展示个人信息--%>
    <div class="info">
        <ul>
            <li><h2><spring:message code="user.info.id"/></h2> <p>${sessionScope.USER.id}</p></li>
            <li><h2><spring:message code="user.info.name"/></h2> <p>${sessionScope.USER.name}</p></li>
            <li><h2><spring:message code="user.info.password"/></h2> <p>${sessionScope.USER.password}</p></li>
            <li><h2><spring:message code="user.info.time"/></h2> <p>${sessionScope.USER.createTime}</p></li>
            <li><h2><spring:message code="user.info.info"/></h2> <p>${info.info}</p></li>
            <li><h2><spring:message code="user.info.phone"/></h2> <p>${info.phone}</p></li>
            <li><h2><spring:message code="user.info.other"/></h2> <p>一些浏览器信息</p></li>
        </ul>
    </div>
    <%--显示功能按钮--%>
    <div class="function">
        <ul>
            <li><a href="#"><spring:message code="user.info.reset"/></a></li>
            <li><a href="#"><spring:message code="user.info.update"/></a></li>
            <li><a href="${pageContext.request.contextPath}/logout"><spring:message code="user.info.logout"/></a></li>
        </ul>
    </div>
</div>
</body>
</html>
