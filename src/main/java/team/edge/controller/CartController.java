package team.edge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team.edge.bean.Cart;
import team.edge.bean.User;
import team.edge.service.CartService;
import team.edge.util.CheckSession;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author jack
 * @date 2018/9/10
 * @// TODO: 2018/9/10 这里处理购物车的增删
 * 购物车记录存储在内存中，引导用户安全退出、或者清除session时再写入数据库
 * 使用REST 风格地址
 * @// TODO: 2018/9/11 添加类映射
 * @// TODO: 2018/9/12 重写购物车
 * @author randongchuan
 */
@Controller
@RequestMapping("cart")
public class CartController {
    private final CartService service;

    @Autowired
    public CartController(CartService service) {
        this.service = service;
    }

}
