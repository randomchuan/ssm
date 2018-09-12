<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/9
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isErrorPage="true" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>错误</title>
    <style>
        body {
            text-align: center;
        }

        h3 {
            color: red;
        }
    </style>
</head>
<body>
<h3>很不意外，出了点错误...</h3>
<h3>错误信息：${ex}</h3>
<br>
<hr>
<br>
<h3>详细信息：</h3>
<p>${ex.printStackTrace()}</p>
</body>
</html>
