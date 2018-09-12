<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page errorPage="WEB-INF/jsp/error.jsp" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title></title>
    <style>
        <%--黑色的背景--%>
        .state {
            background-color: #1c1f21;
        }
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }
        li {

            float: left;
        }
        li a, p {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        p {
            display: inline-block;
        }

        p:hover .dropdown {
            display: block;
        }

        .dropdown {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        }

        .dropdown a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown a:hover {
            background-color: #f1f1f1
        }
    </style>
</head>
<body>
<%--这是整个网站的头部--%>
<%--一个状态栏 一个导航栏--%>
<div>
    <div class="state">
        <%--导航链接 图标 功能列表--%>
        <div class="link">
            <a href="#">LINK</a>
            <%--<a href="#"><spring:message code="head.state.li"/> </a>--%>
        </div>
        <div class="icon">

        </div>
        <div class="fun">
            <div class="name">
                <p>普通用户</p>
            </div>
            <div class="col">
                <p>${sessionScope.USER.name}USER</p>
                <div class="dropdown">
                    <a href="#"><spring:message code="head.fun.user"/> </a>
                    <a href="#"><spring:message code="head.fun.change"/> </a>
                    <a href="#"><spring:message code="head.fun.exit"/> </a>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <div class="clr"></div>
    </div>
    <div class="nav">

    </div>
</div>

</body>
</html>
