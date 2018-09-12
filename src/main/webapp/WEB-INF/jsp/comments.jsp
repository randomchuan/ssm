<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/9/10
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%--<%@ page errorPage="error.jsp" %>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <script>
        <c:import url="/js/jquery-3.3.1.min.js"/>
        <c:import url="/layer/layer.js"/>
    </script>
</head>
<body>
<%--提示信息 不重要--%>
<c:if test="${result}">
    <script>
        layer.msg("<spring:message code="comment.comment.success"/>");
    </script>
</c:if>
<c:if test="${not result}">
    <script>
        layer.msg("<spring:message code="comment.comment.fail"/>");
    </script>
</c:if>
<%--这里显示评论 由其他页面引入--%>
<div class="comments">
    <div class="add">
        <form action="${pageContext.request.contextPath}/comment/add" name="comment" method="post">
            <input type="hidden" name="productId" value="${product_id}">
            <textarea id="comment" placeholder="<spring:message code="order.comments.add.tip"/> " cols="20"
                      rows="5"></textarea>
            <input type="submit" value="<spring:message code="order.comments.add" />"/>
        </form>
    </div>

    <div class="show">
        <%--展示评论--%>
        <c:if test="${empty comments}">
            <%--评论为空，显示提示--%>
            <p><spring:message code="detail.comment.tip"/></p>
        </c:if>
        <%--这里不能直接test="${comment} can not convert ArrayList to java.lang.Boolean"--%>
        <c:if test="${not empty comments}">
            <%--遍历显示--%>
            <%--编号 用户ID 评论内容 评论时间--%>
            <div class="comment">
                <ul>
                    <li><spring:message code="detail.comment.id"/></li>
                    <li><spring:message code="detail.comment.user_id"/></li>
                    <li><spring:message code="detail.comment.content"/></li>
                    <li><spring:message code="detail.comment.time"/></li>
                </ul>
            </div>

            <%--具体内容--%>
            <c:forEach items="${comments}" var="comment">
                <div class="comment">
                    <ul>
                        <li>${comment.comment.id}</li>
                        <li>${comment.comment.userId}</li>
                        <li>${comment.comment}</li>
                        <li>${comment.comment.createTime}</li>
                    </ul>
                </div>
            </c:forEach>
        </c:if>
    </div>
</div>


<%--无输入不提交--%>
<script>
    $(function () {
        //    设置不可选取
        $('submit').prop("disabled", true);
        //    对文本框添加改变事件
        $('textarea').change(function () {
            var length = $(this).text.length;
            if (length > 0) {
                $('submit').prop("disabled", false);
            }
            if (length <= 0) {
                $('submit').prop("disabled", true);
            }
        })
    })
</script>
</body>
</html>
