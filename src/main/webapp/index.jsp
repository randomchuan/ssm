<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/9
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <%--<title><spring:message code="index.title"/> </title>--%>
    <title>主页</title>
</head>
<body>
<%--引入公共头--%>
<jsp:include page="head.jsp"/>

<%--大图轮播--%>

<%--引入商品推荐页面--%>
<jsp:include page="/mostProducts"/>

<hr>

<%--引入最新上架商品页面--%>
<jsp:include page="/newProducts"/>

<%--引入公共尾--%>
<iframe src="foot.html" width="100%" scrolling="no"></iframe>
</body>
</html>
