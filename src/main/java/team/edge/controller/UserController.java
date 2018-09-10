package team.edge.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import team.edge.bean.Address;
import team.edge.bean.User;
import team.edge.service.AddressService;
import team.edge.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author jack
 * @date 2018/9/9
 * @// TODO: 2018/9/9 处理与User相关的请求
 */
@Controller
public class UserController {
    private final UserService service;

    @Autowired
    public UserController(UserService service) {
        this.service = service;
    }

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    private AddressService service1;

    public void setService1(AddressService service1) {
        this.service1 = service1;
    }

    /**
     * 渲染登录页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    /**
     * 处理登录请求
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
    public void checkLogin(@ModelAttribute User user, HttpSession session) {
        User checkUser = service.selectUser(user);
        session.setAttribute("USER", checkUser);
        logger.info(checkUser);

        // 定位到首页 或者 之前访问的页面
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @RequestMapping(value = "/checkRegister", method = RequestMethod.POST)
    public String checkRegister(@ModelAttribute User user, HttpServletRequest request) {
        boolean b = service.insertUser(user);
        logger.info(user);
        request.setAttribute("user", user);
        if (b) {
            // 将信息存储
            return "login";
        } else {
            return "redirect:register";
        }
    }

    /**
     * 渲染个人信息
     *
     * @return
     */
    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(Model model, HttpSession session) {
        User user = (User) session.getAttribute("USER");
        Integer id = user.getId();
        Address address = service1.selectAddrById(id);
        model.addAttribute("address", address);
        return "info";
    }

    /**
     * 安全退出
     *
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        // 存储购物车
        // 清除Session
        session.invalidate();
        return "redirect:login";
    }
}
