package team.edge.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team.edge.bean.Comment;
import team.edge.bean.Product;
import team.edge.bean.Detail;
import team.edge.service.ProductService;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/7
 * @// TODO: 2018/9/7 这里主要处理与商品有关的请求
 */
@Controller
public class ProductController {
    private Logger logger = Logger.getLogger(this.getClass());
    private final ProductService service;

    @Autowired
    public ProductController(ProductService service) {
        this.service = service;
    }

    /**
     * 最热销页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/mostProducts", method = RequestMethod.GET)
    public String mostProducts(Model model) {
        logger.info("最热销商品展示！！！");
        List<Product> mostProducts = service.selectMostItems();
        model.addAttribute("mostProducts", mostProducts);
        return "mostProducts";
    }

    /**
     * 显示最新上架商品
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/newProducts", method = RequestMethod.GET)
    public String newProducts(Model model) {
        logger.info("最新商品展示");
        List<Product> newProducts = service.selectNewItems();
        model.addAttribute("newProducts", newProducts);
        return "newProducts";
    }

    /**
     * 根据ID 渲染详细信息及评论
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/productDetail/{id}", method = RequestMethod.GET)
    public String productDetail(@PathVariable Integer id, Model model) {
        // 获取详细信息
        Detail detail = service.selectDetailById(id);
        model.addAttribute("detail", detail);
        // 获取评论
        List<Comment> comments = service.selectCommentById(id,10);
        model.addAttribute("comments", comments);
        return "detail";
    }
}
