<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sprin" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <%--<title><spring:message code="login.title"/> </title>--%>
    <title>登录到EDGE</title>
</head>
<body>
<%--头部  不需要引入公共头部--%>

<%--初次登录提示--%>
<c:if test="${null != user.createTime}">
    <div class="tip">
        <h2><spring:message code="register.tip.result"/></h2>
        <ul>
            <li><h2><spring:message code="register.tip.id"/></h2>
                <p>${user.id}</p></li>
            <li><h2><spring:message code="register.tip.name"/></h2>
                <p>${user.name}</p></li>
            <li><h2><spring:message code="register.tip.password"/></h2>
                <p>${user.password}</p></li>
            <li><h2><spring:message code="register.tip.time"/></h2>
                <p>${user.createTime}</p></li>
            <li><h2><spring:message code="register.tip.tip"/></h2></li>
        </ul>
    </div>
</c:if>

<%--登录框--%>
<div class="login">
    <%--在spring 5之后，删除了commandName，应该使用modelAttribute--%>
    <%--https://jira.spring.io/browse/SPR-16037--%>
    <form:form modelAttribute="user" method="post" action="/checkLogin">
        <fieldset>
            <legend><spring:message code="login.login.tip"/></legend>
            <p class="item">
                <label for="id"><spring:message code="login.login.id"/></label>
                <form:input path="id" id="id"/>
            </p>
            <p class="item">
                <label for="password"><spring:message code="login.login.password"/></label>
                <form:input path="password" id="password"/>
            </p>
            <p id="button">
                <a href="${pageContext.request.contextPath}/register"><spring:message code="login.login.register"/></a>
                <input type="submit" id="submit" tabindex="5" value="<spring:message code="login.login.submit"/>">
            </p>
        </fieldset
    </form:form>
</div>
</body>
</html>
