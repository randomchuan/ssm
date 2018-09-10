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
<html>
<head>
    <%--<title><spring:message code="login.title"/> </title>--%>
    <title>登录到EDGE</title>
</head>
<body>
<%--引入头部--%>
<jsp:include page="../../head.jsp"/>

<%--注册框--%>
<div class="login">
    <%--在spring 5之后，删除了commandName，应该使用modelAttribute--%>
    <%--https://jira.spring.io/browse/SPR-16037--%>
    <form:form name="user" modelAttribute="user" action="/checkRegister" method="post">
        <fieldset>
            <legend><spring:message code="register.register.tip"/></legend>
            <p class="item">
                <label for="name"><spring:message code="register.register.name"/></label>
                <form:input path="name" name="name"/>
            </p>
            <p class="item">
                <label for="password"><spring:message code="register.register.password"/></label>
                <form:input path="password" name="password"/>
            </p>
            <p id="button">
                <a href="${pageContext.request.contextPath}/login"><spring:message code="register.register.login"/></a>
                <input type="submit" id="submit" tabindex="5" value="<spring:message code="register.register.submit"/>">
            </p>
        </fieldset>
    </form:form>
</div>


</body>
</html>
