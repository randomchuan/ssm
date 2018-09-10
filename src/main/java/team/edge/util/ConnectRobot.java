package team.edge.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

/**
 * @Author : Random
 * @Date : 2018/9/6  16:08
 * @Version 1.0
 */
public class ConnectRobot {
    /**
     *  获得来自图灵机器人的响应
     * @param message 需要被响应的消息
     * @return robotMessage对象
     */
    public RobotMessage getResponse(String message,String userId) throws IOException {
        String info = URLEncoder.encode(message, "utf-8");
        if(null != userId)
            userId = "123456";
        String apiKey = "b6cc890990a04f23a6c6c71a4c36fb4c";
        String url = "http://www.tuling123.com/openapi/api?key=" + apiKey
                + "&info=" + info + "&userid=" + userId;
        URL getUrl = new URL(url);
        HttpURLConnection connection = (HttpURLConnection) getUrl.openConnection();
        connection.connect();
//		获得输入流，并使用Reader读取
        BufferedReader reader = new BufferedReader(
                new InputStreamReader(connection.getInputStream(), "utf-8"));
        StringBuffer stringBuffer = new StringBuffer();
        String line;
        while ((line = reader.readLine()) != null) {
            stringBuffer.append(line);
        }
//		断开reader
        reader.close();
//		断开链接
        connection.disconnect();
        return responseAnalysis(stringBuffer,userId);
    }

    /**
     * 对机器人返回的信息进行处理
     * @param str   机器人返回的信息
     * @param userId    发送者ID
     * @return  robotMessage对象
     */
    private RobotMessage responseAnalysis(StringBuffer str,String userId){
        String string = str.toString();
//		返回的是索引
        int textBegin = string.indexOf("\"text");
        int urlBegin = string.indexOf("\"url");
        int codeBegin = string.indexOf("\"code");
//        初始化被拆分字符串的容器
        String text;
        String url = null;
        String code = null;
//        获得数据
        if(urlBegin != -1){
            url = string.substring(urlBegin+7,string.length()-2);
            text = string.substring(textBegin+8,urlBegin-1);
        }else{
            text = string.substring(textBegin+8,string.length()-2);
        }
        if(codeBegin != -1)
            code = string.substring(codeBegin+7,textBegin-1);
        return new RobotMessage(text,url,code,userId);
    }
}
