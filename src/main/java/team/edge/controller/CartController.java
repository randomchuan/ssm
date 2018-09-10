package team.edge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team.edge.bean.Cart;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/10
 * @// TODO: 2018/9/10 这里处理购物车的增删
 * 使用REST 风格地址
 */
@Controller
public class CartController {

    @RequestMapping(value = "cartAdd",method = RequestMethod.PUT)
    public String cartAdd(@ModelAttribute Cart cart){
        return "cart";
    }

    @RequestMapping(value = "cartDel",method = RequestMethod.DELETE)
    public String cartDel(@ModelAttribute List<Cart> carts){
        return "cart";
    }

    @RequestMapping(value = "cartUpdate",method = RequestMethod.PUT)
    public String cartUpdate(@ModelAttribute Cart cart){
        return "cart";
    }
}
