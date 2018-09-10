package team.edge.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import team.edge.util.ConnectRobot;
import team.edge.util.RobotMessage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * @Author : Random
 * @Date : 2018/9/6  9:40
 * @Version 1.0
 */
@Controller
@RequestMapping(method = RequestMethod.POST)
public class InternalController {

    private final Logger logger = Logger.getLogger(this.getClass());
    private ConnectRobot connectRobot;
    public InternalController(){
        connectRobot = new ConnectRobot();
    }

    @ResponseBody   //这是在返回时不用json的东西，他会自己给你转成json
    @RequestMapping("connectRobot") //目前只能返回list,才能在ajax中得到对象的属性
    public ArrayList<RobotMessage> connectRobot(HttpServletResponse response, HttpServletRequest request) {

        System.out.println("进入");
        response.setContentType("text/text");          //设置请求以及响应的内容类型以及编码方式
        response.setCharacterEncoding("UTF-8");
        String message = request.getParameter("message").trim();
        String userId = request.getParameter("userId").trim();
        logger.info(message);
        logger.info(userId);
        if(message.equals("")){
            return null;
        }
        ArrayList<RobotMessage> arrayList = new ArrayList<>();
        try {
            RobotMessage robotMessage = connectRobot.getResponse(message,userId);
            System.out.println(robotMessage.toString());
            arrayList.add(robotMessage);
            System.out.println("走到了");
            return arrayList;
        } catch (Exception e) {
            System.out.println("错误 : " + e.getMessage());
        }
        logger.info("null");
        return null;
    }
}
