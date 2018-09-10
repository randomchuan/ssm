<%--suppress JSAnnotator --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>chat</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/chat.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/layer/layer.js"></script>
<%-- js--%>
<script type="text/javascript">
    <%--触发式 按钮事件--%>

    function send_btnOnclick() {
        var send_txt = document.getElementById('send_txt');
        var send_message = send_txt.value.trim();
        send_txt.value = "";
//        请求机器人响应
        var send_userId = "123456";
        if (send_message === "") {
            layer.msg("发送内容为空");
        } else {
//        添加消息到自己的content
            addMyMessageToContent(send_message);
            var message = {"message": send_message, "userId": send_userId};
//            ajax
            $.ajax({
                url: "connectRobot",
                dataType: "json",
                data: message,
                type: "post",
                async: true,//是否异步请求
                success: function (data) {   //如果发送成功
                    alert("嗯哼");
                    addRobotMessageToContent(data)
                    send_txt.val("value", "");//.value="";
                }
            })
        }

//        把机器人返回的消息加入到content中
        function addRobotMessageToContent(data) {
            var html = "";
            for (var i = 0; i < data.length; i++) {
                var robotMessage = data[i];
                html += "<li><span class='spanleft'>" + robotMessage.text + "</span></li>";
            }
            $(".chat_content").append(html); //在html页面id=ulul的标签里显示html内容
        }

//        把自己的信息添加到content
        function addMyMessageToContent(data) {
            var html = "";
            html += "<li><span class='spanright'>" + data + "</span></li>";
            $(".chat_content").append(html);
        }

//        按下enter键执行发送功能
        var input = document.getElementById('send_txt');
        input.onkeydown(function () {
            layer.msg("点击了");
            if (event && event.keyCode === 13) {
                send_btnOnclick();
                layer.msg("点击了enter");
            }
        });
    }
</script>
<body>
<div class="all">
    <div class="chat_index">
        <!--banner-->
        <div class="chat_banner">
        </div>
        <div class="chat_body">
            <!--聊天界面-->
            <div class="chat_main">
                <div class="chat_div">
                    <ul id="chat_ul" class="chat_content">
                        <li><span class="spanleft">你好,我是客服sunny,很高心为你服务</span></li>
                        <%--<li><span class="spanright">这是right</span></li>--%>
                    </ul>
                </div>

                <!-- 打字发送界面 -->
                <div class="send_message">
                    <%--<form>--%>
                    <input type="text" autocomplete="off" readonly="readonly" placeholder="请输入消息" id="send_txt"
                           onkeydown=inputEnterSendMessage()>
                    <input type="button" value="发送" id="send_btn" onclick="send_btnOnclick()">
                    <%--</form>--%>
                </div>
            </div>

            <!--名片-->
            <div class="chat_namecard">
            </div>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
    //        不自动填充
    setTimeout(function removeReadonly() {
        var input = document.getElementById("send_txt");
        input.removeAttribute("readonly");
    }, 20);
</script>
</html>