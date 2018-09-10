package team.edge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author jack
 * @date 2018/9/9
 */
@Controller
public class UtilController {

    @RequestMapping("/chat")
    public String chat(){
        return "chat";
    }
}
