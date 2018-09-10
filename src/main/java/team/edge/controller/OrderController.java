package team.edge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team.edge.bean.*;
import team.edge.service.OrderService;
import team.edge.service.ProductService;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author jack
 * @date 2018/9/9
 */
@Controller
public class OrderController {
    private final OrderService service;

    @Autowired
    public OrderController(OrderService service) {
        this.service = service;
    }

    @Autowired
    private ProductService productService;


    /**
     * 查看用户的订单
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "userOrder/{no}", method = RequestMethod.GET)
    public String userOrder(@PathVariable Integer no, Model model, HttpSession session) {
        Integer id = ((User) session.getAttribute("USER")).getId();
        List<Order> orders = service.selectOrdersByUserId(id, no);
        model.addAttribute("orders", orders);
        model.addAttribute("pageNo", id);
        return "order";
    }

    @RequestMapping(value = "orderDetail/{id}", method = RequestMethod.GET)
    public String orderDetail(@PathVariable Integer id, Model model) {
        OrderDetail detail = service.selectOrderDetailById(id);
        List<Comment> comments = productService.selectCommentById(id, 4);
        model.addAttribute("detail", detail);
        model.addAttribute("comments", comments);
        return "orderDetail";
    }

    @RequestMapping(value = "/orderAdd", method = RequestMethod.PUT)
    public String orderAdd(@ModelAttribute Order order) {

        return "orderDetail";
    }

    @RequestMapping(value = "/orderDel", method = RequestMethod.DELETE)
    public String orderDel(Integer id) {
        service.delOrder(id);
        return "/order";
    }
}
