package team.edge.util;

/**
 * @Author : Random
 * @Date : 2018/9/6  16:35
 * @Version 1.0
 */
public class RobotMessage {
    private String userId;
    private String code;
    private String text;
    private String url;

    RobotMessage(String text, String url, String code, String userId){
        this.code = code;
        this.text = text;
        this.url = url;
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "\nuserID : "+userId+
                "\ncode : "+code+
                "\ntext : "+text+
                "\nurl : "+url;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

}
