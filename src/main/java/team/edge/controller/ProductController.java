package team.edge.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team.edge.bean.Comment;
import team.edge.dto.CommentDetail;
import team.edge.dto.ProductBrief;
import team.edge.dto.ProductDetail;
import team.edge.service.ProductService;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/7
 * @// TODO: 2018/9/7 这里主要处理与商品有关的请求
 */
@Controller
@RequestMapping("/product")
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
    @RequestMapping(value = "/hot", method = RequestMethod.GET)
    public String mostProducts(Model model) {
        List<ProductBrief> mostProducts = service.selectHotProducts();
        model.addAttribute("hots", mostProducts);
        return "hot";
    }

    /**
     * 显示最新上架商品
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newProducts(Model model) {
        logger.info("最新商品展示");
        List<ProductBrief> newProducts = service.selectNewProducts();
        model.addAttribute("news", newProducts);
        return "new";
    }

    /**
     * 根据ID 渲染详细信息及评论
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public String productDetail(@PathVariable Integer id, Model model) {
        // 获取详细信息
        ProductDetail detail = service.selectDetailById(id);
        model.addAttribute("detail", detail);
        return "detail";
    }
}
